#!/usr/bin/env -S scala-cli shebang

import scala.io.Source


case class Person (name: String)


def getstring(inputstring: String): Int = 
	return 10


@main def main(args: String*): Unit =
	for arg <- args do println(arg)
	val filename = args{0}
	println{filename}

	val contents = Source.fromFile(filename).getLines.toList

	println(contents)