from simplecalc import SimpleCalc
import unittest

class Calctests(unittest.TestCase):

    calc = SimpleCalc()

    def test_add(self):
        self.assertEqual(7, self.calc.add(2,5))

    def test_add_double_digits(self):
        self.assertEqual(30, self.calc.add(12, 18))

    def test_subract(self):
        self.assertEqual(10, self.calc.subtract(12, 2))

    def test_multiply(self):
        self.assertEqual(6, self.calc.multiply(2, 3))

    def test_divide(self):
        self.assertEqual(5, self.calc.divide(10, 2))





