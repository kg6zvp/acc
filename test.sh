#!/bin/bash

gprclean acc.gpr
gprclean test/acc-tests.gpr
gprbuild test/acc-tests.gpr #-gnata
./test/bin/runner
