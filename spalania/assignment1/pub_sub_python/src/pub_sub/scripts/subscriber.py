#!/usr/bin/env python
import rospy
from std_msgs.msg import String

# import the custom definied message
from pub_sub.msg import message

def callback(message):
	# message subscribed from the publisher
	print('The temperature: {} deg C').format(message.temperature)
	print('The wind speed: {} km/s').format(message.wind)
	print('The humidity: {}').format(message.humidity)
	print('Staus: %s') % message.status

def listener():
	# initiate the listener node in the name of listener.
	rospy.init_node('listener', anonymous=True)
	# subscribe to the topic chatter as defined in the publisher program 
	rospy.Subscriber("chatter", message, callback)
	rospy.spin()

if __name__ == '__main__':
	listener()