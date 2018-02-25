#!/bin/bash

set -x

TMP=/tmp/mjit ./ruby --jit-debug --jit-save-temps --jit-verbose=3 --jit-min-calls=1 -e 'def hoge; 1; end; hoge'

