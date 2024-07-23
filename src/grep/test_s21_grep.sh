#!/bin/bash
echo MY_TEST-----N1--------------------------E_FLAGS
grep -e lorem -e ut ../tests/s21_greptest1.txt > grep_test_1_e_flags
./s21_grep -e lorem -e ut ../tests/s21_greptest1.txt > s21_grep_test_1_e_flags
if (diff -s grep_test_1_e_flags s21_grep_test_1_e_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_e_flags s21_grep_test_1_e_flags

echo MY_TEST-----N2--------------------------E_FLAGS_2
grep -e lorem -e ut ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt> grep_test_1_e_flags
./s21_grep -e lorem -e ut ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt> s21_grep_test_1_e_flags
if (diff -s grep_test_1_e_flags s21_grep_test_1_e_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_e_flags s21_grep_test_1_e_flags

echo MY_TEST-----N3--------------------------I_FLAGS
grep -i lorem ../tests/s21_greptest1.txt > grep_test_1_flags
./s21_grep -i lorem ../tests/s21_greptest1.txt > s21_grep_test_1_flags
if (diff -s grep_test_1_flags s21_grep_test_1_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_flags s21_grep_test_1_flags

echo MY_TEST-----N4--------------------------I_FLAGS_2
grep -i lorem ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt > grep_test_1_flags
./s21_grep -i lorem ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt > s21_grep_test_1_flags
if (diff -s grep_test_1_flags s21_grep_test_1_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_flags s21_grep_test_1_flags

echo MY_TEST-----N5--------------------------V_FLAGS
grep -v lorem ../tests/s21_greptest1.txt > grep_test_1_flags
./s21_grep -v lorem ../tests/s21_greptest1.txt > s21_grep_test_1_flags
if (diff -s grep_test_1_flags s21_grep_test_1_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_flags s21_grep_test_1_flags

echo MY_TEST-----N6--------------------------V_FLAGS_2
grep -v lorem ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt > grep_test_1_flags
./s21_grep -v lorem ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt > s21_grep_test_1_flags
if (diff -s grep_test_1_flags s21_grep_test_1_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_flags s21_grep_test_1_flags

echo MY_TEST-----N7--------------------------C_FLAGS
grep -c lorem ../tests/s21_greptest1.txt > grep_test_1_flags
./s21_grep -c lorem ../tests/s21_greptest1.txt > s21_grep_test_1_flags
if (diff -s grep_test_1_flags s21_grep_test_1_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_flags s21_grep_test_1_flags

echo MY_TEST-----N8--------------------------C_FLAGS_2
grep -c lorem ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt > grep_test_1_flags
./s21_grep -c lorem ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt > s21_grep_test_1_flags
if (diff -s grep_test_1_flags s21_grep_test_1_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_flags s21_grep_test_1_flags

echo MY_TEST-----N9--------------------------l_FLAGS
grep -l lorem ../tests/s21_greptest1.txt > grep_test_1_flags
./s21_grep -l lorem ../tests/s21_greptest1.txt > s21_grep_test_1_flags
if (diff -s grep_test_1_flags s21_grep_test_1_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_flags s21_grep_test_1_flags

echo MY_TEST-----N10--------------------------l_FLAGS_2
grep -l lorem ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt > grep_test_1_flags
./s21_grep -l lorem ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt > s21_grep_test_1_flags
if (diff -s grep_test_1_flags s21_grep_test_1_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_flags s21_grep_test_1_flags

echo MY_TEST-----N11--------------------------n_FLAGS
grep -n lorem ../tests/s21_greptest1.txt > grep_test_1_flags
./s21_grep -n lorem ../tests/s21_greptest1.txt > s21_grep_test_1_flags
if (diff -s grep_test_1_flags s21_grep_test_1_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_flags s21_grep_test_1_flags

echo MY_TEST-----N12--------------------------n_FLAGS_2
grep -n lorem ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt > grep_test_1_flags
./s21_grep -n lorem ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt > s21_grep_test_1_flags
if (diff -s grep_test_1_flags s21_grep_test_1_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_flags s21_grep_test_1_flags

echo MY_TEST-----N13--------------------------h_FLAGS
grep -h lorem ../tests/s21_greptest1.txt > grep_test_1_flags
./s21_grep -h lorem ../tests/s21_greptest1.txt > s21_grep_test_1_flags
if (diff -s grep_test_1_flags s21_grep_test_1_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_flags s21_grep_test_1_flags

echo MY_TEST-----N14--------------------------n_FLAGS_2
grep -h lorem ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt > grep_test_1_flags
./s21_grep -h lorem ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt > s21_grep_test_1_flags
if (diff -s grep_test_1_flags s21_grep_test_1_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_flags s21_grep_test_1_flags

echo MY_TEST-----N15--------------------------s_FLAGS
grep -s lorem ../tests/s21_greptest1.txt > grep_test_1_flags
./s21_grep -s lorem ../tests/s21_greptest1.txt > s21_grep_test_1_flags
if (diff -s grep_test_1_flags s21_grep_test_1_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_flags s21_grep_test_1_flags

echo MY_TEST-----N16--------------------------s_FLAGS_2
grep -s lorem ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt > grep_test_1_flags
./s21_grep -s lorem ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt > s21_grep_test_1_flags
if (diff -s grep_test_1_flags s21_grep_test_1_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_flags s21_grep_test_1_flags

echo MY_TEST-----N17--------------------------f_FLAGS
grep -f ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt> grep_test_1_flags
./s21_grep -f ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt> s21_grep_test_1_flags
if (diff -s grep_test_1_flags s21_grep_test_1_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_flags s21_grep_test_1_flags

echo MY_TEST-----N18--------------------------f_FLAGS_2
grep -f ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt ../tests/s21_greptest3.txt> grep_test_1_flags
./s21_grep -f ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt ../tests/s21_greptest3.txt > s21_grep_test_1_flags
if (diff -s grep_test_1_flags s21_grep_test_1_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_flags s21_grep_test_1_flags

echo MY_TEST-----N19--------------------------o_FLAGS
grep -o lorem ../tests/s21_greptest1.txt > grep_test_1_flags
./s21_grep -o lorem ../tests/s21_greptest1.txt > s21_grep_test_1_flags
if (diff -s grep_test_1_flags s21_grep_test_1_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_flags s21_grep_test_1_flags

echo MY_TEST-----N20--------------------------o_FLAGS_2
grep -o lorem ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt > grep_test_1_flags
./s21_grep -o lorem ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt > s21_grep_test_1_flags
if (diff -s grep_test_1_flags s21_grep_test_1_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_flags s21_grep_test_1_flags


echo "✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅"
echo ------------------------------------------------
echo MULTIFLAGS -------------------------------------
echo "✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅"
echo MY_TEST-----N1--------------------------E-L
grep -le lorem -e file ../tests/s21_greptest1.txt > grep_test_1_e_flags
./s21_grep -le lorem -e file ../tests/s21_greptest1.txt > s21_grep_test_1_e_flags
if (diff -s grep_test_1_e_flags s21_grep_test_1_e_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_e_flags s21_grep_test_1_e_flags

echo MY_TEST-----N2--------------------------E-L-C
grep -le lorem -e file -c ../tests/s21_greptest1.txt > grep_test_1_e_flags
./s21_grep -le lorem -e file -c ../tests/s21_greptest1.txt > s21_grep_test_1_e_flags
if (diff -s grep_test_1_e_flags s21_grep_test_1_e_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_e_flags s21_grep_test_1_e_flags

echo MY_TEST-----N3--------------------------E-L-C-N
grep -le lorem -e file -c -n ../tests/s21_greptest1.txt > grep_test_1_e_flags
./s21_grep -le lorem -e file -c -n ../tests/s21_greptest1.txt > s21_grep_test_1_e_flags
if (diff -s grep_test_1_e_flags s21_grep_test_1_e_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_e_flags s21_grep_test_1_e_flags

echo MY_TEST-----N4--------------------------E-L
grep -le lorem -e file ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt> grep_test_1_e_flags
./s21_grep -le lorem -e file ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt> s21_grep_test_1_e_flags
if (diff -s grep_test_1_e_flags s21_grep_test_1_e_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_e_flags s21_grep_test_1_e_flags

echo MY_TEST-----N5--------------------------E-L-C
grep -le lorem -e file -c ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt> grep_test_1_e_flags
./s21_grep -le lorem -e file -c ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt> s21_grep_test_1_e_flags
if (diff -s grep_test_1_e_flags s21_grep_test_1_e_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_e_flags s21_grep_test_1_e_flags

echo MY_TEST-----N6--------------------------E-L-C-N
grep -le lorem -e file -c -n ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt> grep_test_1_e_flags
./s21_grep -le lorem -e file -c -n ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt> s21_grep_test_1_e_flags
if (diff -s grep_test_1_e_flags s21_grep_test_1_e_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_e_flags s21_grep_test_1_e_flags

echo MY_TEST-----N7--------------------------E-L-C-N-0
grep -le lorem -e file -c -n -l -o ../tests/s21_greptest1.txt > grep_test_1_e_flags
./s21_grep -le lorem -e file -c -n -l -o ../tests/s21_greptest1.txt > s21_grep_test_1_e_flags
if (diff -s grep_test_1_e_flags s21_grep_test_1_e_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_e_flags s21_grep_test_1_e_flags

echo MY_TEST-----N8--------------------------E-L-C-N-0
grep -le lorem -e file -c -n -l -o ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt> grep_test_1_e_flags
./s21_grep -le lorem -e file -c -n -l -o ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt> s21_grep_test_1_e_flags
if (diff -s grep_test_1_e_flags s21_grep_test_1_e_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_e_flags s21_grep_test_1_e_flags

echo MY_TEST-----N9--------------------------E-h-C-N-0
grep -le lorem -e file -c -n -h -o ../tests/s21_greptest1.txt > grep_test_1_e_flags
./s21_grep -le lorem -e file -c -n -h -o ../tests/s21_greptest1.txt > s21_grep_test_1_e_flags
if (diff -s grep_test_1_e_flags s21_grep_test_1_e_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_e_flags s21_grep_test_1_e_flags

echo MY_TEST-----N10--------------------------E-h-C-N-0
grep -le lorem -e file -c -n -h -o ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt> grep_test_1_e_flags
./s21_grep -le lorem -e file -c -n -h -o ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt> s21_grep_test_1_e_flags
if (diff -s grep_test_1_e_flags s21_grep_test_1_e_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_e_flags s21_grep_test_1_e_flags

echo MY_TEST-----N11--------------------------s-o-e
grep -le lorem -e file ../tests/s21_greptest1.txt > grep_test_1_e_flags
./s21_grep -le lorem -e file ../tests/s21_greptest1.txt > s21_grep_test_1_e_flags
if (diff -s grep_test_1_e_flags s21_grep_test_1_e_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_e_flags s21_grep_test_1_e_flags

echo MY_TEST-----N12--------------------------s-o-e
grep -le lorem -e file -s -o ../tests/s21_greptest1.txt > grep_test_1_e_flags
./s21_grep -le lorem -e file -s -o ../tests/s21_greptest1.txt > s21_grep_test_1_e_flags
if (diff -s grep_test_1_e_flags s21_grep_test_1_e_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_e_flags s21_grep_test_1_e_flags

echo MY_TEST-----N13--------------------------i-L-C-N-e
grep -le lorem -e file -i -l -c -n ../tests/s21_greptest1.txt > grep_test_1_e_flags
./s21_grep -le lorem -e file -i -l -c -n ../tests/s21_greptest1.txt > s21_grep_test_1_e_flags
if (diff -s grep_test_1_e_flags s21_grep_test_1_e_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_e_flags s21_grep_test_1_e_flags

echo MY_TEST-----N14--------------------------h-i-e
grep -le lorem -e file -h -i ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt> grep_test_1_e_flags
./s21_grep -le lorem -e file -h -i ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt> s21_grep_test_1_e_flags
if (diff -s grep_test_1_e_flags s21_grep_test_1_e_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_e_flags s21_grep_test_1_e_flags

echo MY_TEST-----N15---------------------------c -l -h
grep -le lorem -e file -c -l -h ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt> grep_test_1_e_flags
./s21_grep -le lorem -e file -c -l -h ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt> s21_grep_test_1_e_flags
if (diff -s grep_test_1_e_flags s21_grep_test_1_e_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_e_flags s21_grep_test_1_e_flags

echo MY_TEST-----N16---------------------------n -l -h
grep -le lorem -e file -n -l -h ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt> grep_test_1_e_flags
./s21_grep -le lorem -e file -n -l -h ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt> s21_grep_test_1_e_flags
if (diff -s grep_test_1_e_flags s21_grep_test_1_e_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_e_flags s21_grep_test_1_e_flags

echo MY_TEST-----N17---------------------------n -o
grep -le lorem -e file -n -o ../tests/s21_greptest1.txt > grep_test_1_e_flags
./s21_grep -le lorem -e file -n -o ../tests/s21_greptest1.txt > s21_grep_test_1_e_flags
if (diff -s grep_test_1_e_flags s21_grep_test_1_e_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_e_flags s21_grep_test_1_e_flags

echo MY_TEST-----N18---------------------------c -n
grep -le lorem -e file -c -n ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt> grep_test_1_e_flags
./s21_grep -le lorem -e file -c -n ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt> s21_grep_test_1_e_flags
if (diff -s grep_test_1_e_flags s21_grep_test_1_e_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_e_flags s21_grep_test_1_e_flags

echo MY_TEST-----N19--------------------------E-h-C-N-f
grep -le lorem -e file -c -n -h -f ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt> grep_test_1_e_flags
./s21_grep -le lorem -e file -c -n -h -f ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt> s21_grep_test_1_e_flags
if (diff -s grep_test_1_e_flags s21_grep_test_1_e_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_e_flags s21_grep_test_1_e_flags

echo MY_TEST-----N20--------------------------E-h-C-N-0
grep -le lorem -e file -c -n -h -o ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt> grep_test_1_e_flags
./s21_grep -le lorem -e file -c -n -h -o ../tests/s21_greptest1.txt ../tests/s21_greptest2.txt> s21_grep_test_1_e_flags
if (diff -s grep_test_1_e_flags s21_grep_test_1_e_flags); then
    echo "SUCCESS ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_e_flags s21_grep_test_1_e_flags