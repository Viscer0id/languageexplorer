#!/usr/bin/env -S scala-cli shebang

// Example of imports 
import scala.io.Source

// How to include other files
//> using file "myfile.scala"


class Person(var name:String):
	def speak() = println(s"Hello, my name is $name")


def getstring(inputstring: String): Int = 
	return 10


val contents = Source.fromFile(args(0)).getLines.toList

println(args(0))
println("Done!")
println(contents)