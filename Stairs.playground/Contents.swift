import UIKit
/*:
# Stairs 
Your teacher has given you the task of drawing a staircase structure. Being an expert programmer, you decided to make a program to draw it for you instead. Given the required height, can you print a staircase as shown in the example?

Input
You are given an integer N
N
depicting the height of the staircase.

Output
Print a staircase of height N
N
that consists of # symbols and spaces. For example for N=6
N
6
, here's a staircase of that height:

#
##
###
####
#####
######
Note: The last line has 0 spaces before it.
*/
///*
//https://www.hackerrank.com/challenges/staircase/
//*/

var h = Int(readLine() ?? "") ?? 1

if h < 1 { exit(0) }
for s in 1...h {
    
    var array  = Array(count: h, repeatedValue: " ")

    let n = h - s
    for i in n..<h {
        array[i] = "#"
    }
    print(array.joinWithSeparator(""))
}

