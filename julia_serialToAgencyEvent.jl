#!/usr/local/bin/julia

using Pipe: @pipe

fname = "Resources/S022.txt"

function readfile(fileName::String)::String
	fileHandle = open(fileName, "r")
	contents = read(fileHandle, String)
	close(fileHandle)
	return contents
end

function gettextbetween(text::String, startChars::String, endChars::String)
	return nothing
end

function getserialnumber(text::String)
	pattern = "SERIAL NUMBER"
	findfirst(pattern, text) |> typeof |> println
	findfirst(pattern, text) |> 𝑥->println(𝑥[1])
	findfirst(pattern, text) |> 𝑥->(text[𝑥[1]:𝑥[1]+30]) |> println
	return findfirst(pattern, text)
end


println("Opening file $fname")
contents = readfile(fname)
# lines = readfile(fname) |> 𝑥->split(𝑥,"\n")
lines = @pipe readfile(fname) |> split(_,"\n")
