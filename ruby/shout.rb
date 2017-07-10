#module Shout
#	def self.yell_angrily(words)
#		words + "!!!" + " : ("
#	end
#
#	def self.yelling_happily(words)
#		words + ": )"
#	end
#end
#

module Shout
	def excited(sentence)
		puts "#{sentence}. " + "HOORAY!"
	end
	def scream(word)
		puts "#{word.upcase}"
	end
	# Bonus method"
	def roar
		puts "RRRRRRR"
	end
end

class Megaphone
	include Shout
end

class Announcer
	include Shout
end

person_one = Megaphone.new
person_one.roar
person_one.scream("stop")

warriors_fan = Announcer.new
warriors_fan.excited("We won! We are the champs!")
warriors_fan.scream("We are a dynasty!")
