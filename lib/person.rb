# your code goes here
class Person
	
attr_reader :name, :hygiene, :happiness
attr_accessor :bank_account

def initialize(person_name)
	@name = person_name
	@hygiene = 8
	@happiness = 8
	self.bank_account = 25

end

def hygiene= (hygiene)
	if hygiene <= 10 && hygiene >= 0
		@hygiene = hygiene
	elsif hygiene > 10
		@hygiene = 10
	elsif hygiene < 0
		@hygiene = 0
	end
end

def happiness= (happiness)
	if happiness <= 10 && happiness >= 0
		@happiness = happiness
	elsif happiness > 10
		@happiness = 10
	elsif happiness < 0
		@happiness = 0
	end
end

def get_paid (amount)
	self.bank_account += amount
	"all about the benjamins"
end

def clean?
	self.hygiene > 7
end

def happy?
	self.happiness > 7
end

def take_bath
	self.hygiene = self.hygiene + 4
	"♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
	self.hygiene -= 3
	self.happiness += 2
	"♪ another one bites the dust ♫"
end

def call_friend(friend)
	self.happiness += 3
	friend.happiness += 3
	"Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation(partner, topic)
	if topic == "politics"
		self.happiness -= 2
		partner.happiness -= 2
		'blah blah partisan blah lobbyist'
	elsif topic == "weather"
		self.happiness += 1
		partner.happiness += 1
		'blah blah sun blah rain'
	else
		'blah blah blah blah blah'
	end
end


end
