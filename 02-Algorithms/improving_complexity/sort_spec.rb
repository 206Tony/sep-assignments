require 'rspec'
require './improving_complexity_version_one'
require './improving_complexity_version_two'
require './improving_complexity_version_three'

RSpec.describe do 
	context "version one" do
		it "can sort a basic array" do
			expect(poorly_written_ruby_one([1,4,5,[1,2]])).to eq([1,1,2,4,5])	
		end
	end
	context "version two" do
		it "can sort a basic array" do
			expect(poorly_written_ruby_two([1,4,5,[1,2]])).to eq([1,1,2,4,5])	
		end
	end
	context "version three" do
		it "can sort a basic array" do
			expect(poorly_written_ruby_three([1,4,5,[1,2]])).to eq([1,1,2,4,5])	
		end
	end
end