#!/usr/bin/env python

import rospy
from std_msgs.msg import String

# import openweathermap library
import pyowm

# import GUI library
import Tkinter as tk

# zip_code = '49931'
# country = 'us'
# api key from openweathermap website
API_key = '29a84d545476863693ae58a97a49182b'


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
	entry1.insert(10, '49931')
	entry1.pack(side=tk.RIGHT)

	label2 = tk.Label(middle_frame, text='Enter the country intialis: ')
	label2.pack(side=tk.LEFT)
	entry2 = tk.Entry(middle_frame, bd=5)
	entry2.insert(10, 'us')
	entry2.pack(side=tk.RIGHT)

	query_button = tk.Button(bottom_frame, text='Query', 
		           command=lambda: talker(entry1.get(), entry2.get()))
	query_button.pack(side=tk.LEFT)

	quit_button = tk.Button(bottom_frame, text='Quit', command=top_layer.quit)
	quit_button.pack(side=tk.RIGHT)


	# talker function is called at the beginning of the program
	def talker(zip_code, country):
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
		loop = True
		while loop:
			# increment loop variable
			def stop_loop():
				loop = False
			# weather info about the specified place
			observation = owm.weather_at_zip_code(zip_code, country)
			w = observation.get_weather()
			temperature = w.get_temperature('celsius')
		
			# message to publish
			send_str = "Temperature: %f" % temperature['temp']
			rospy.loginfo(send_str)
			pub.publish(send_str)
			rate.sleep()

	top_layer.mainloop()

if __name__ == '__main__':
	try:
		gui_func()
	except rospy.ROSInterruptException:
		pass