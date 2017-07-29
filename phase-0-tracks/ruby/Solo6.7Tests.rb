require_relative 'Solo6.7'

describe Hangman do
	let(:hangman) {Hangman.new}

	it "creates a placeholder for the word" do
		expect(hangman.placeholder("peanut")).to eq "_ _ _ _ _ _"
	end

	it "generates a random letter from a to z" do
		expect(hangman.rand_letter()).to eq " "
	end

	it "tests to see if that letter is in the word" do
		expect(hangman.test_word("e", "peanut")).to eq true
	end
end