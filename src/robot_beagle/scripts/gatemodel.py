class GateKeeperModel:
	def __init__(self):
		self.gates = []
		self.id = 0
	def addgate(self,gate):
		#check for older models at this Gate Number
		replaced = False
		for g in self.gates:
			if g.number == gate.number:
				#replace the older model
				g.settype(gate.gtype)
				replaced = True
		if not replaced:
			self.gates.append(gate)

	def __str__(self):
		tempstring = 'gates: '
		for g in self.gates:
			tempstring = tempstring + 'gate ' + str(g.number) + ' ' + g.gtype + ', '
		return tempstring

class GateModel:
	def __init__(self,gtype='None', number=1,inMessage = ""):
		self.gtype = gtype
		self.number = number
		self.inMessage = inMessage

	def settype(self,gtype):
		self.gtype = gtype

	def setnum(self,number):
		self.number = number
