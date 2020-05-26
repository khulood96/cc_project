# CC 103411: Lexer and Parser for ChocoPy #
<!-- Replace XX with your course ID-->
### PROJECT MEMBERS ###
StdID | Name
------------ | -------------
**60603** | **Khulood Muzaffar** <!--this is the group leader in bold-->
<!-- Replace name and student ids with acutally group member names and ids-->
## Project Description ##
The purpose of this project was to demonstrate our knowledge of the compiler and how it functions, based on what we've learned in class. 
We were supposed to select a language of our choice, from three given options, and display our knowledge of this course by building a lexical analyzer and a parser.
My aim was to fulfill the purpose of this project, putting as much effort and time as required to achieve these two goals.

## Sample Language Used ##
The sample language I chose for this project, was ChocoPy.

ChocoPy has been designed to be a subset of Python.  Almost every valid ChocoPy program is also avalid Python 3.6 program.  An execution of a ChocoPy program that does not result in error usually has the same observable semantics as the execution of that program in Python 3.6. 
```Python

class C(object):
	def f(self:"C") -> int:
		def g() -> int:
			x:int = 1
			return x
		return g()
C().f()
```
### Lexical Specification ###
#### Identifiers ####
Identifiers are defined as a contiguous sequence of characters containing the uppercase and lowercase letters A through Z, the underscoreand, except for the first character, the digits 0 through 9.

#### Keywords ####
The following strings are not recognized as identifiers, and are instead recognized as distinct keyword tokens:False,None,True,and,as,assert,async,await,break,class,continue,def,del,
elif,else,except,finally,for,from,global,if,import,in,is,lambda,nonlocal,not,or
,pass,raise,return,try,while,with,yield.

#### String Literals ####
String literals in ChocoPy are greatly simplified from that in Python.  In ChocoPy, string literals are simplya sequence of ASCII characters delimited by (and including) double quotes:"...".  The ASCII charactersmust lie within the decimal range 32-126 inclusive—that is, higher than or equal to thespacecharacter andup totilde.  The string itself may contain double quotes escaped by a preceding backslash, e.g.\".

#### Integer Literals ####
Integer literals in ChocoPy are composed of a sequence of one or more digits0-9, where the leftmost digitmay only be0if it is the only character in the sequence.  That is, non-zero valued integer literals may nothave leading zeros.

#### Operators ####
The following is a space-separated list of symbols that correspond to distinct ChocoPy operator tokens: + - * // %< > <= >= == != = 

#### Delimiters ####
The following is a space-separated list of symbols that correspond to distinct ChocoPy delimiter tokens:
( ) [ ] :

### Grammar ###
Replace this text with a complete GRAMMAR of your selected language

## Problems Faced ##
Following are the major problems I faced during the making of this project.

### Problem 1: Internet wasn't always available ###
I resolved this issue by using mobile data packages whenever necessary. 

### Problem 2: I have Windows on my PC while flex works well on Linux ###
I resolved this issue by working on a virtual machine. 

## References ##
- https://docs.python.org/3/reference/grammar.html
- https://www.lemoda.net/c/c-regex/
- https://chocopy.org/chocopy_language_reference.pdf
- https://chocopy.org/chocopy_implementation_guide.pdf
- https://www.youtube.com/watch?v=54bo1qaHAfk 

