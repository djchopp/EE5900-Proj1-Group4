#!/usr/bin/env python
import rospy
from std_msgs.msg import String

def callback(data):
	# message subscribed from the publisher
	rospy.loginfo(rospy.get_caller_id() + "I received %s", data.data)

def listener():
	# initiate the listener node in the name of listener.
	rospy.init_node('listener', anonymous=True)
	# subscribe to the topic chatter as defined in the publisher program 
	rospy.Subscriber("chatter", String, callback)

	rospy.spin()

if __name__ == '__main__':
	listener()