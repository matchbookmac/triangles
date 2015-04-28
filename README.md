# Triangles

This library contains a class, `Triangle`, on which the methods `#triangle?`, `#equilateral?`, `#scalene`,
and `#isosceles?` were defined. Each returns true if the triangle meets the mathematical definitions for the type
of triangle. The `#initialize` method takes 3 arguments, each a `float` for a side of the triangle.

## Webpage

The `'/'` path prompts the user to input three numbers, each for the side of a triangle. When the user hits submit,
a `Triangle` object is created, and the type of triangle is determined from the above methods. If a triangle is not
possible from the values provided, it reports that to the user.
