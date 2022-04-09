#!/bin/bash
# display command line options

count=1
for param in "$@"; do
<<<<<<< HEAD

    echo "\$@ Parameter #$count = $param"
    echo "Parameter: $param"
=======
    echo "Next parameter: $param"
    count=$(( $count + 1 ))
>>>>>>> d623a12 (git rebase 2)
done

echo "====="