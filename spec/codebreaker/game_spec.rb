require 'spec_helper'
require 'byebug'

module Codebreaker
	describe Game do
		let(:output) { double('output').as_null_object}
		let(:game) { Game.new(output)}

		describe "#start" do
			# before(:each) do
			# 	@output = double('output').as_null_object
			# 	@game = Game.new(@output)
			# end

			it "sends a welcome message" do
				# byebug
				expect(output).to receive(:puts).with('Welcome to Codebreaker!')
				game.start('1234')
			end

			it "prompts for the first guess" do
				expect(output).to receive(:puts).with('Enter guess:')
				game.start('1234')				
			end
		end

		describe "#guess" do
			it "sends the mark to the output" do
				game.start('1234')
				expect(output).to receive(:puts).with('++++')
				game.guess('1234')
			end
		end
	end
end