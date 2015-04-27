class Triangle
  define_method(:initialize) do |a, b, c|
    @sides = [a, b, c].sort()
    @side_1 = a
    @side_2 = b
    @side_3 = c
  end

  define_method(:triangle?) do
    @side_1.<(@side_2+@side_3) && @side_2.<(@side_1+@side_3) && @side_3.<(@side_2+@side_1)
  end

  define_method(:equilateral?) do
    triangle? && (@side_1 == @side_2 && @side_2 == @side_3)
  end
end
