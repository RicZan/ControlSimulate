#!/usr/bin/env python

import rospy
from std_msgs.msg import Float32

u_0 = 0
FREQ = 1
K = -2 # control gain (K<-1)

class Controller():

    def __init__(self):
        rospy.init_node('controller', anonymous=True)
        self.x = 0
        self.u = u_0

    def x_update(self, msg):
        self.x = msg.data
        rospy.loginfo("x_update: x=%s", self.x)
        
    def run_controller(self):
        u_pub = rospy.Publisher('u', Float32, queue_size=10)
        u_rate = rospy.Rate(FREQ)
        rospy.Subscriber("x", Float32, self.x_update)

        while not rospy.is_shutdown():
            self.u = (K/FREQ)*self.x
            rospy.loginfo("u_update: u=%s", self.u)
            u_pub.publish(self.u)
            u_rate.sleep()

        rospy.spin()

if __name__ == '__main__':
    try:
        ctrl = Controller()
        ctrl.run_controller()
    except rospy.ROSInterruptException:
        pass
