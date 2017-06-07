require 'rspec'
require 'tdd'


describe Array do
  let(:my_arr) { Array.new([1, 2, 1, 3, 3])}
  let(:my_arr2) { Array.new([-1,0,2,-2,1])}
  let(:my_arr3) {Array.new([0,0,-1,1])}


  describe "#my_uniq" do
    it "eliminates duplicates from array" do
      expect(my_arr.my_uniq).to eq([1, 2, 3])
    end
  end

    it "only contains elements in the original array" do
      my_arr.each do |item|
        expect(my_arr.my_uniq).to include(item)
      end
    end


  describe "#my_two_sum" do
    it "finds all pairs that sum to zero indexed correctly" do
      expect(my_arr2.my_two_sum).to eq([[0,4],[2,3]])
    end
  end

    it "finds pairs with multiple zeroes" do
      expect(my_arr3.my_two_sum).to eq([[0,1],[2,3]])
    end


end

describe "#my_transpose" do
  it "it transposes the array" do
    matrix = [[0,1,2],[3,4,5],[6,7,8]]
    expect(my_transpose(matrix)).to eq([[0,3,6],[1,4,7],[2,5,8]])
  end
end


describe "#stock_picker" do
  it "picks most profitable stocks" do
    expect(stock_picker([88,77,99,100])).to eq([1,3])
  end
end
