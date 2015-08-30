#!/usr/bin/env python

import rospy
import random
from std_msgs.msg import Float32

def talker():
    pub = rospy.Publisher('u', Float32, queue_size=10)  	# declares that your node is publishing to the 'chatter' topic using the message type String. The queue_size argument
								                            # limits the amount of queued messages if any subscriber is not receiving the them fast enough
    rospy.init_node('talker', anonymous=True)			# tells rospy the name of the node: talker -- until rospy has this information, it cannot start communicating with the ROS Master
    rate = rospy.Rate(0.5)                              # 100hz
    while not rospy.is_shutdown():
        u =  random.randrange(0, 100, 1)
        rospy.loginfo("I sent: u=%s", u)				    # the messages get printed to screen, to the Node's log file, and to rosout.
        pub.publish(u)					# publishes to 'chatter' topic using a newly created String message: hello_str
        rate.sleep()						# sleeps just long enough to maintain the desired rate through the loop

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
