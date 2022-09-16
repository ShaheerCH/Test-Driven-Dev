require 'rspec'
require './fizzbuzz'
describe 'fizzbuzz' do
  before(:each) do
    @fizzbuzz = Solver.new
  end
  context '#factorial' do
    it 'should return 720 for factorial 6' do
      expect(@fizzbuzz.factorial(6)).to eq 720
    end
    it 'should return 1 for factorial 0' do
      expect(@fizzbuzz.factorial(0)).to eq 1
    end
    it 'should return 1 for factorial of 1' do
      expect(@fizzbuzz.factorial(1)).to eq 1
    end
    it 'should return 2 for factorial of 2' do
      expect(@fizzbuzz.factorial(2)).to eq 2
    end
    it 'should return "Negative Number" for factorial -3' do
      expect(@fizzbuzz.factorial(-3)).to eq 'Negative Number'
    end
  end
  context 'Reverse' do
    it 'should return "olleh" for "hello"' do
      expect(@fizzbuzz.reverse('hello')).to eq 'olleh'
    end
    it 'should return "hannah" for "hannah"' do
      expect(@fizzbuzz.reverse('hannah')).to eq 'hannah'
    end
    it 'should return "error" for "error"' do
      expect(@fizzbuzz.reverse(1)).to eq 'Error'
    end
  end
  context 'fizzbuzz' do
    it 'should return "Fizz" for 3' do
      expect(@fizzbuzz.fizzbuzz(3)).to eq 'Fizz'
    end
    it 'should return "Buzz" for 5' do
      expect(@fizzbuzz.fizzbuzz(5)).to eq 'Buzz'
    end
    it 'should return "FizzBuzz" for 15' do
      expect(@fizzbuzz.fizzbuzz(15)).to eq 'FizzBuzz'
    end
    it 'should return "Fizz" for 6' do
      expect(@fizzbuzz.fizzbuzz(6)).to eq 'Fizz'
    end
    it 'should return "7" for 7' do
      expect(@fizzbuzz.fizzbuzz(7)).to eq '7'
    end
  end
end
