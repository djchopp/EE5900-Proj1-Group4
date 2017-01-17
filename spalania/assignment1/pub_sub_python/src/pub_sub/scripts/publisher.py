#!/usr/bin/env python

import rospy
from std_msgs.msg import String

# import openweathermap library
import pyowm

# define the city for which the weather is to be known.
city = 'Chennai, in'

# talker function is called at the beginning of the program
def talker():
	# create a ros node with the topic information and the type of the message.
	pub = rospy.Publisher('chatter', String, queue_size=10)
	# initiate the node in the name of talker
	rospy.init_node('talker', anonymous=True)

	# rate at which the publisher publishes the weather info on the screen.
	# 0.1 Hz ==> 1 message per ten second
	rate = rospy.Rate(0.1)
	
	# basic while which will run untill the publisher node is running
	while not rospy.is_shutdown():
		# import the API key
		owm = pyowm.OWM('29a84d545476863693ae58a97a49182b')
		# weather info about the specified place
		observation = owm.weather_at_place(city)
		w = observation.get_weather()
		temperature = w.get_temperature('celsius')
		
		# message to publish
		send_str = "Temperature: %d" % temperature['temp']
		rospy.loginfo(send_str)
		pub.publish(send_str)
		rate.sleep()

if __name__ == '__main__':
	try:
		talker()
	except rospy.ROSInterruptException:
		pass

