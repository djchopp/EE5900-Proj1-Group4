#!/usr/bin/env python
import rospy
from std_msgs.msg import String

# import the custom definied message
from pub_sub.msg import message

import Tkinter as tk


def gui_function(message):
	temp = message.temperature
	status = message.status
	
	root = tk.Tk()
	root.wm_title("Hello there!")

	#top_frame = tk.Frame(root)
	#top_frame.pack()

	#temperature = tk.Label(top_frame, text='Temperature: '+str(temp)+' C', font=(None, 15))
	#temperature.pack()

	middle_frame = tk.Frame(root)
	middle_frame.pack()

	bottom_frame = tk.Frame(root)
	bottom_frame.pack(side=tk.BOTTOM)

	if temp <= 0:
		# snow
		photo = tk.PhotoImage(file='/home/ros/img/snow.gif')
		msg = 'Stay warm!'
	elif temp > 25:
		# hot
		photo = tk.PhotoImage(file='/home/ros/img/sunny.gif')
		msg = 'Got your sun screen lotion?'
	else:
		if 'rain' in status:
			# rainy
			photo = tk.PhotoImage(file='/home/ros/img/rain.gif')
			msg = 'I may try swimming!'
		elif 'clear' in status:
			# clear weather
			photo = tk.PhotoImage(file='/home/ros/img/clear.gif')
			msg = 'Enjoy the sky!'
		else:
			# mild cloudy
			photo = tk.PhotoImage(file='/home/ros/img/cloud.gif') 
			msg = 'You might need a umbrella!'


	label = tk.Label(middle_frame, image=photo)
	label.pack()

	message = tk.Label(bottom_frame, text=msg, font=(None, 10))
	message.pack()


	root.mainloop()

def callback(message):

	
	# message subscribed from the publisher
	print('The temperature: {} deg C').format(message.temperature)
	print('The wind speed: {} km/s').format(message.wind)
	print('The humidity: {}').format(message.humidity)
	print('Staus: %s') % message.status

	


def listener(loop=0):
	# initiate the listener node in the name of listener.
	rospy.init_node('listener', anonymous=True)
	# subscribe to the topic chatter as defined in the publisher program 
	rospy.Subscriber("chatter", message, callback)

	# call the gui function
	if loop == 1:
		pass
	else:
		loop += 1
		gui_function(message)

	rospy.spin()

if __name__ == '__main__':
	listener()
