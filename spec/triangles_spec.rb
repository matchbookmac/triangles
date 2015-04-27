require('rspec')
require('triangles')

describe('Triangle') do
  describe('#triangle?') do
    it('returns false if 3 numbers cannot make a triangle') do
      triangle = Triangle.new(0,0,0)
      expect(triangle.triangle?()).to(eq(false))
    end
    it('returns true if 3 numbers can make a triangle') do
      triangle = Triangle.new(2,2,2)
      expect(triangle.triangle?()).to(eq(true))
    end
  end
  describe('#equilateral?') do
    it('returns true if the triangle is equilateral') do
      triangle = Triangle.new(2,2,2)
      expect(triangle.equilateral?()).to(eq(true))
    end
    it('returns false if the triangle is not equilateral') do
      triangle = Triangle.new(5,4,8)
      expect(triangle.equilateral?()).to(eq(false))
    end
  end
  describe('#isosceles?') do
    it('returns true if the triangle is isosceles') do
      triangle = Triangle.new(5,5,8)
      expect(triangle.isosceles?()).to(eq(true))
    end
    it('returns false if the triangle is not isosceles') do
      triangle = Triangle.new(2, 2, 2)
      expect(triangle.isosceles?()).to(eq(false))
    end
  end
end
