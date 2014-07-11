#!/usr/bin/env python

from robot_beagle.msg import *
from modulemodel import *
import moduleconnection as mc
from geometry_msgs.msg import Twist
import rospy
import time, serial, sys
import maketranslations as mt


class Gate:
	def __init__(self, gnumber=0):
		rospy.Subscriber('reqs', Request, self.parseReq)
		self.number = gnumber
		self.module = Module()
		#is gnumber going to be port number as well?
		port = '/dev/ttyO{}'.format(self.number)
		self.serPer = serial.Serial(port, baudrate=57600, timeout=.4)


	def parseReq(self,data):
		rospy.loginfo('this is parse Req')
		thisReq = data.request
		if thisReq == 'boot':
			rospy.loginfo(thisReq)
			self.bootResponder()
			if (self.module.mtype == "locomotion"):
				print 'gate is locomotion'
				rospy.Subscriber('locomotionInputs', Twist, self.doInput)
			#set up elifs eventually
			#else:
			#	print "didn't get the type{}".format mc.readunreliable('b#',self.number))

	def bootResponder(self):
		rospy.loginfo('inside boot responder')
		if ( mc.bootModule(self.serPer) == 'l' ):
			self.module.settype( "locomotion" )
		print self.module.mtype
		bootPub = rospy.Publisher('boot', BootResponse, queue_size=1, latch=True)
		#need a name inside the boot message, so this module will
		#be able to identify messages sent to itself
		bootString = BootResponse()
		bootString.gatenumber = self.number
		bootString.gatetype = self.module.mtype
		bootPub.publish(bootString)

	def doInput(self,data):
		#check the name on the input, if it matches this module
		#do the input if possible or publish an error

		#inputs will become custom type - gatenumber, gatetype, and Twist

 		#will add gate names later
		#print 'at input'
		#need more efficiency - only numbers transmitted
		#format is lx,ly,lz/ax,ay,az
		inputString = mt.makeLocInput(data)
		#inputString = 'i/{},{}#'.format(data.linear.x, data.angular.z)
		rospy.loginfo('instring {}'.format(inputString))
		rospy.loginfo( mc.readunreliable(inputString, self.serPer) )
		#mc.sendblind(inputString, self.serPer)


if __name__ == '__main__':
	rospy.init_node('gate', anonymous=True)
	gate = Gate(5)
	rospy.loginfo("Gate Node Started")
	rospy.spin()
