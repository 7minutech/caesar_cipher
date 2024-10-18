require "./lib/caesar"
describe "shift_char" do
  it "returns shifted char" do
    expect(shift_char("a", 2)).to eql("c")
  end
end

describe "not_alpha" do
  it "returns true if not a alpha" do
    expect(not_alpha?("!")).to be true
    expect(not_alpha?("a")).to be false
  end
end
