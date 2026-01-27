
## Running
* To run your script: `qsub [script].pbs`
* To check on status: `qstat [Job ID]`
* To check errors: `ls -t dftb_build_gcc.o* | head -1 | xargs cat`


## Testing
* To run tests with verbose output: `ctest --output-on-failure -V 2>&1 | tee test_output.log`
* To filter by failed tests (with summaries) use:
```bash
# Extract sections between "test X" and the next "test Y" for failed tests
awk '
    /^test [0-9]+$/ { 
        test_num = $2
        in_test = 1
        test_section = ""
    }
    in_test {
        test_section = test_section $0 "\n"
    }
    /Failed/ && in_test {
        print test_section
        in_test = 0
    }
    /^test [0-9]+$/ && $2 != test_num && in_test {
        in_test = 0
    }
' test_output.log > failed_tests_detailed.log
```

## Others
* Linux uses LF line encoding, so switch to that in your IDE before saving
* To validate, run `grep -U $'\r' build_dftb_gcc.pbs` and make sure nothing is returned
* If you absolutely must edit it on the NSCC side, `sed -i 's/\r$//' build_dftb_gcc.pbs` will do the job for you
