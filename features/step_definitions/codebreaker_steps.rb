require 'byebug'

Given /^I am not yet playing$/ do
end

When /^I start a new game$/ do

	@messages = messenger
	@game = Codebreaker::Game.new(@messages)
	@game.start('1234')
end

Then /^I should see "([^\"]*)"$/ do |message|
	# byebug
	expect(@messages.string.split("\n")).to include(message)
	# byebug
end

Given /^the secret code is "([^\"]*)"$/ do |secret|
	@messages = messenger
	@game = Codebreaker::Game.new(@messages)
	@game.start(secret)
end

When /^I guess "([^\"]*)"$/	do |guess|
	@game.guess(guess)
end

Then /^the mark should be "([^\"]*)"$/ do |mark|
	# byebug
	expect(@messages.string.split("\n")).to include(mark)
end

def messenger
	StringIO.new
end



















# The following is from tutorial which does not work for this 
# class Output
# 	def messages
# 		@messages ||= []
# 	end

# 	def puts(message)
# 		messages << message
# 	end
# end

# def output
# 	@output ||= Output.new
# end