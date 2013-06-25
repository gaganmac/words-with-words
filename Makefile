CC=g++
CFLAGS=-Wall

all: wordstat

wordstat: node.o trie.o words.o
  g++ node.o trie.o words.o -o wordstat
node.o: node.cpp
	g++ -c node.cpp

trie.o: trie.cpp
	g++ -c trie.cpp

words.o: words.cpp
	g++ -c words.cpp
clean:
	rm -f node.o trie.o words.o wordstat
