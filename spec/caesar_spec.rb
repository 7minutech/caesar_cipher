require "./lib/caesar"
describe "#shift_char" do
  it "returns shifted char" do
    expect(shift_char("a", 2)).to eql("c")
  end
  it "returns wrapped around char" do
    expect(shift_char("z", 2)).to eql("b")
  end
end

describe "#not_alpha" do
  it "returns true if not a alpha" do
    expect(not_alpha?("!")).to be true
    expect(not_alpha?("a")).to be false
  end
end

describe "#get_shift_num" do
  it "returns shifted char number" do
    expect(get_shift_num("a", 3)).to eql(100)
  end
end
