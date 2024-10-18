require_relative "lib/caesar"
p shift_char("a", 2)
describe "shift_char" do
  it "returns shifted char" do
    expect(shift_char("a", 2)).to eql("c")
  end
end
