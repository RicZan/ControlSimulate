#!/usr/bin/env python

import rospy
from std_msgs.msg import Float32

def callback(msg):
    rospy.loginfo("I heard: u=%s", msg.data)

def listener():
    rospy.init_node('listener', anonymous=True)
    rospy.Subscriber("u", Float32, callback)
    rospy.spin()

if __name__ == '__main__':
    listener()
