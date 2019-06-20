#! /bin/sh

# Test case: test if a provided PCRE correctly recognises integer and
# real (floating-point) numbers.

#BEGIN DEPEND

INPUT_GRAMMAR=tests/generated/identifiers.ere

#END DEPEND

grep -v -E "^$(grep -vE '^#|^ *$' ${INPUT_GRAMMAR})\$" tests/inputs/not-identifiers.lst
