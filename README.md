Programming Problem - Find Longest Word Made of Other Words

Just a small project to find the longest word formed by
combining other words present in a file.

USAGE

To run the program:

./wordstat words.txt
./wordstat test1.txt

General:

./wordstat <filename>

NOTE: filename should contain complete path if the file
is not in the same directory as the binary.

COMPILATION

make
make clean


REQUIREMENTS

The source code was compiled and tested using: 
g++-4.2 (GCC) 4.2.1

The source code uses structures from the Standard Template
Library (STL). STL support is required for building the
binaries.

Longest-Word-Algorithm, brief description: 


1. Store all the words in a Trie (prefix-tree) data structure
    for space efficiency.
2. Build a vector of suffix-word pair[suffix, word] while 
   building the Trie. (A queue is used in this implementation.)

3. Get the suffx-word pair from the front of the queue
4. If suffix is a word in the Trie, do 5 - 7, else goto 8
5. increment the word formed by another word statistic
6. Is the word > longest word so far?
7. If yes, then store the longest word.
8. Else (suffix is not a word in the Trie), do 10 - 12
9. Get all prefixes of suffix.
10.	Push suffix back to the vector. 
11. If Queue is not empty, goto 3
12.	Return the longest word.
