# $stdin.read to read content from console zetcode.com/lang/rubytutorial/io
require 'byebug'

module Codebreaker
	class Game
		def initialize(output)
			@output = output
		end

		def start(secret)
			@secret = secret
			@output.puts 'Welcome to Codebreaker!'
			@output.puts 'Enter guess:'
		end

		def guess(guess)
			marker = Marker.new(@secret, guess)
			@output.puts '+' * marker.exact_match_count + '-' * marker.number_match_count
		end
	end
end