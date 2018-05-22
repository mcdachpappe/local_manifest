#!/bin/bash

# cd where your anykernel clone is
cd /home/danny/AnyKernel2

# your output file
zip -r9 kernel.zip * -x README.md kernel.zip
