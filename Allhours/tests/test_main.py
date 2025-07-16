import unittest
from allhours.main import main

class TestMain(unittest.TestCase):
    def test_main_runs(self):
        # This just checks that main() runs without error
        try:
            main()
        except Exception as e:
            self.fail(f"main() raised an exception: {e}")

if __name__ == "__main__":
    unittest.main() 