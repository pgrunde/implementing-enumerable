describe GschoolEnumerable do

  before(:each) do
    Array.include GschoolEnumerable
  end

  describe "#g_each" do
    it "yields each element to the block in the same order" do
      yielded = []

      [1,2,3].g_each do |value|
        yielded << value
      end

      expect(yielded).to eq([1,2,3])
    end
  end

  describe "#g_select" do
    it "acts like select" do
      skip
      values = [1,2,3].g_select do |value|
        value % 2 == 0
      end

      expect(values).to eq([2])
    end
  end

  describe "#g_reject" do
    it "acts like reject" do
      values = [1,2,3].g_reject do |value|
        value % 2 == 0
      end

      expect(values).to eq([1, 3])
    end
  end
end