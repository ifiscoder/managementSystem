from App.Actor import Actor
#@inherits from Actor
class Admin(Actor):
	admin = {}

#@data Access Object
	def __init__(self, AdminDAO):
		self.sess_key = "admin"
		self.dao = AdminDAO
		self.route_url = "/admin/"