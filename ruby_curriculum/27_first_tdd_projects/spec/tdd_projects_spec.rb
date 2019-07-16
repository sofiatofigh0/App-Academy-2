require 'rspec'
require 'tdd_projects'

describe Array do 

  describe "#my_uniq" do
    let(:non_uniq_arr) { [1, 2, 1, 3, 3] } 
    it 'removes duplicate elements' do 
      expect(non_uniq_arr.my_uniq).to eq([1,2,3])
    end
    it 'returns an instance of the Array class' do 
      expect(non_uniq_arr.my_uniq.instance_of?(Array)).to eq(true)
    end
  end

  describe "#two_sum" do 
    let(:two_sum_arr) { [-1, 0, 2, -2, 1] }
    it 'returns a 2D array' do 
      expect(two_sum_arr.two_sum.all?{|sub_arr| sub_arr.is_a?(Array)}).to eq(true)
    end
    it 'returns all pairs of positions  where elements at those positions sum to zero' do 
      expect(two_sum_arr.two_sum).to eq([[0,4], [2,3]])
    end
    it 'returns pairs of positions in the correct order' do 
      expect(two_sum_arr.two_sum).not_to eq([[2,3], [0,4]])
    end
  end

  describe "#my_transpose" do 
    let(:rows) {[
      [0, 1, 2], 
      [3, 4, 5], 
      [6, 7, 8]] }
    let(:columns) {[
      [0, 3, 6], 
      [1, 4, 7], 
      [2, 5, 8]] }
    it "returns a 2D array" do 
      expect(rows.my_transpose.all?{|sub_arr| sub_arr.is_a?(Array)}).to eq(true)
    end
    it "returns correct column orientation of matrix" do 
      expect(rows.my_transpose).to eq(columns)
    end        
  end

  describe "#stock_picker" do 
    it "returns zero if the array is descending order"
  end
end