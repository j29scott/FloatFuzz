import unittest

from slap.mk import *
from slap.theory.core import FuncApp

class TestSlap(unittest.TestCase):

    def test_float(self):
        x = mk_float("x", 32)
        y = mk_float("y", 32)

        z = mk_fp_gt(x,y)
        self.assertTrue(isinstance(z, FuncApp))

if __name__ == '__main__':
    unittest.main()
