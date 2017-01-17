#!/usr/bin/env python

import rospy
import sys
from std_msgs.msg import String
from pub_sub.msg import message

# import openweathermap library
import pyowm

# talker function is called at the beginning of the program
def talker():
	# create a ros node with the topic information and the type of the message.	
	
	pub = rospy.Publisher('chatter', message, queue_size=10)
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
		#observation = owm.weather_at_place(city)
		
		# get the weather at zip code (first arg) in country (second arg)
		# example: 'rosrun pub_sub publisher.py 49931 US'
		observation = owm.weather_at_zip_code(sys.argv[1], sys.argv[2])
		w = observation.get_weather()
		weather = message()
		temper = w.get_temperature('celsius')
		weather.temperature = temper['temp']
		win = w.get_wind()
		weather.wind = win['speed']
		weather.humidity = w.get_humidity()
		weather.status = w.get_status()
		
		# message to publish
		# send_str = "Temperature: %f" % temperature['temp']
		# rospy.loginfo(send_str)
		pub.publish(weather)
		rate.sleep()

if __name__ == '__main__':
	try:
		talker()
	except rospy.ROSInterruptException:
		pass

