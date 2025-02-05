#1)Create a directory called ho1 under activities

mkdir folder1

#2)Access the directory you just created

cd folder1

#3)Create two files:  f1.txt and .f2.txt

touch f1.txt .f2.txt

#4)Write the numbers from 1 to 10 in a1.txt (one number per line)

echo -e "1\n2\n3\n4\n5\n6\n7\n8\n9\n10" > f1.txt
echo {1..10} > f1.txt

#5)Write the following sequence in .a2.txt (one letter per line)

echo "a\na\nb\nb\nb\nc\nc\nc\nc\nd\nd\nd\n\nd\nd" > .f2.txt

#6)List all the contents of the directory 

ls -la .

#7) Change the name of .f2.txt to f2.txt 

mv .f2.txt f2.txt 

#8) Change the permissions of f1.txt

chmod go-rwx f1.txt

#9) Write the contents of f1.txt and f2.txt to a new file f3.txt 

head -10 f1.txt | cat f2.txt > f3.txt