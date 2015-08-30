#!/usr/bin/env python

import rospy
from std_msgs.msg import Float32
from sys_diffeq.srv import *

x_0 = 10000.0
FREQ = 1

class Simulator():

    def __init__(self):
        rospy.init_node('simulator', anonymous=True)
        self.x = x_0
        self.u = 0

    def x_set(self, req):
        self.x = req.x_new
        return True

    def u_update(self, msg):
        self.u = msg.data
        rospy.loginfo("u_update: u=%s", self.u)
        
    def run_simulator(self):
        x_pub = rospy.Publisher('x', Float32, queue_size=10)
        x_rate = rospy.Rate(FREQ)
        rospy.Subscriber("u", Float32, self.u_update)
        rospy.Service('set_state', SetState, self.x_set)

        while not rospy.is_shutdown():
            self.x = (1+1/FREQ)*self.x + self.u # x(k+1)=(1+T)*x(k)+u(k)
            rospy.loginfo("x_update: x=%s", self.x)
            x_pub.publish(self.x)
            x_rate.sleep()

        rospy.spin()

if __name__ == '__main__':
    try:
        sim = Simulator()
        sim.run_simulator()
    except rospy.ROSInterruptException:
        pass
