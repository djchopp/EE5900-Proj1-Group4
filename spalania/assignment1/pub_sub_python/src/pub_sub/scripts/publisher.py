#!/usr/bin/env python

import rospy
from std_msgs.msg import String

# import openweathermap library
import pyowm

# import GUI library
import Tkinter as tk

city = 'Chennai, in'
# api key from openweathermap website
API_key = '29a84d545476863693ae58a97a49182b'

# talker function is called at the beginning of the program
def talker():
	# create a ros node with the topic information and the type of the message.
	pub = rospy.Publisher('chatter', String, queue_size=10)
	# initiate the node in the name of talker
	rospy.init_node('talker', anonymous=True)

	# rate at which the publisher publishes the weather info on the screen.
	# 0.1 Hz ==> 1 message per ten second
	rate = rospy.Rate(0.1)

	# import the API key
	owm = pyowm.OWM(API_key)

	# basic while, which will run untill the publisher node is closed
	loop = 0
	while not rospy.is_shutdown():
		# weather info about the specified place
		observation = owm.weather_at_place(city)
		w = observation.get_weather()
		temperature = w.get_temperature('celsius')
		
		# message to publish
		send_str = "Temperature: %f" % temperature['temp']
		rospy.loginfo(send_str)
		pub.publish(send_str)
		rate.sleep()


def gui_func():
	top_layer = tk.Tk()


	top_frame = tk.Frame(top_layer)
	top_frame.pack()

	middle_frame = tk.Frame(top_layer)
	middle_frame.pack()

	bottom_frame = tk.Frame(top_layer)
	bottom_frame.pack(side = tk.BOTTOM)

	label1 = tk.Label(top_frame, text='Enter the zip code: ')
	label1.pack(side=tk.LEFT)
	entry1 = tk.Entry(top_frame, bd=5)
	entry1.pack(side=tk.RIGHT)

	label2 = tk.Label(middle_frame, text='Enter the country intialis: ')
	label2.pack(side=tk.LEFT)
	entry2 = tk.Entry(middle_frame, bd=5)
	entry2.pack(side=tk.RIGHT)

	button = tk.Button(bottom_frame, text='query', command=talker)
	button.pack()

	top_layer.mainloop()

if __name__ == '__main__':
	try:
		gui_func()
	except rospy.ROSInterruptException:
		pass