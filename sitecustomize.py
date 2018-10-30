# This file runs coverage report for sub process. Should start for each python process in system
# Need to be in PYTHONPATH
# More info here: https://coverage.readthedocs.io/en/v4.5.x/subprocess.html

import os
import coverage

os.environ.setdefault('COVERAGE_PROCESS_START', ".coveragerc")
coverage.process_startup()
print("HELLO!!!!!")


