require 'rspec'
require_relative '../lib/ndl_string'

describe String do

  describe '#palindrome?' do

    it 'should be true for: "taco cat"' do
      expect('taco cat'.palindrome?).to be_truthy
    end

    it 'should be true for: "abcdcba"' do
      expect('abcdcba'.palindrome?).to be_truthy
    end

    it 'should be true for: "A man, a plan, a canal, Panama!"' do
      expect('A man, a plan, a canal, Panama!'.palindrome?).to be_truthy
    end

    it 'should be true for: ""' do
      expect(''.palindrome?).to be_truthy
    end

    it 'should be false for: "Hello, world!"' do
      expect('Hello, world!'.palindrome?).to be_falsey
    end

  end

  describe '#valid_brackets?' do

    it 'should be true for: "()(()())""' do
      expect('()(()())'.valid_brackets?).to be_truthy
    end

    it 'should be true for: "qwerty()()""' do
      expect('qwerty()()'.valid_brackets?).to be_truthy
    end

    it 'should be true for: "asdf"' do
      expect('asdf'.valid_brackets?).to be_truthy
    end

    it 'should be true for: ""' do
      expect(''.valid_brackets?).to be_truthy
    end

    it 'should be false for: ")())"' do
      expect(')())'.valid_brackets?).to be_falsey
    end

  end

end
