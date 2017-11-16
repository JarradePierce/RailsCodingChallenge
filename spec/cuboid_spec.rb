require 'cuboid'

#This test is incomplete and, in fact, won't even run without errors.  
#  Do whatever you need to do to make it work and please add your own test cases for as many
#  methods as you feel need coverage
describe Cuboid do

  subject = Cuboid.new(20, 20, 20, 5, 5, 5)
  other_subject = Cuboid.new(20, 20, 20, 5, 5, 5)
 
  describe "move_to" do

    it "changes the origin in the simple happy case" do
      expect(subject.move_to!(5, 5, 5)).to be true
    end

  end    
  
  describe "intersects?" do

    it "returns true if the two cuboids intersect" do
      expect(subject.intersects?(other_subject)).to be true
    end

    it "returns false if the two cuboids do not intersect" do
      expect(subject.intersects?(other_subject)).to be false
    end

    it "returns true if y coordinates intersect" do
      expect(subject.y_pos_intersects?(other_subject)).to be true
    end

    it "returns true if x coordinates intersect" do 
      expect(subject.x_pos_intersects?(other_subject)).to be true
    end

    it "returns true if z coordinates intersect" do 
      expect(subject.z_pos_intersects?(other_subject)).to be true
    end

  end
end
