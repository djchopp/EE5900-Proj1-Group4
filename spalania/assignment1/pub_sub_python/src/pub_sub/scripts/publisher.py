#!/usr/bin/env python

import rospy
from std_msgs.msg import String
import pyowm

def talker():
	pub = rospy.Publisher('chatter', String, queue_size=10)
	rospy.init_node('talker', anonymous=True)
	rate = rospy.Rate(0.1)
	while not rospy.is_shutdown():
		owm = pyowm.OWM('29a84d545476863693ae58a97a49182b')
		observation = owm.weather_at_place('Chennai, in')
		w = observation.get_weather()

		temperature = w.get_temperature('celsius')
		send_str = "Temperature: %d" % temperature['temp']
		rospy.loginfo(send_str)
		pub.publish(send_str)
		rate.sleep()

if __name__ == '__main__':
	try:
		talker()
	except rospy.ROSInterruptException:
		pass

