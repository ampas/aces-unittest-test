Proof of concept CTL unit tests and CI System
--

This is intended to be a framework for unit testing ACES CTL code.

### Organization

This repo contains the following directories

`lib` - is a skeleton intended to contain code we've written and want to unit test

`tests` - contains unit testing code

`.github/workflows` - contains the code for the github action that performs the testing on push or PR to the repo

### Test structure

The `tests` directory contains a series of files with unit tests for function in correspond CTL files.  For example, `ACEStests.ACESlib.Utilities.ctl` contains unit tests for code in `ACESlib.Utilities.ctl`.  

The unit test files import the primary CTL being tested (e.g. `ACESlib.Utilities.ctl`) and `ACEStests.Common.ctl`.  

`ACEStests.Common.ctl` contains functions to enable testing such as functions to compare the actual result of a CTL function to the expected result.

`ACEStests.Execute.Tests` imports each file with the unit tests (e.g. `ACEStests.ACESlib.Utilities.ctl`) and then runs each test from the `main` function.

The testing is executed using `ctlrender` (this is a bit of a hack) by performing `ctlrender -ctl ACEStests.Execute.Tests.ctl /tmp/input.tif /tmp/output.tif` on the github runner.  The results are piped into a file and the file is inspected to see if the word `FAILED` exists anywhere inside.

If `FAILED` does not occur, then the action contines and will likely succeed.  If `FAILED` does occur, the action fails and the user is alerted the PR or commit fails the unit testing.


