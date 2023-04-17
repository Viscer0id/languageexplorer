#!/usr/bin/env -S dotnet fsi

open System.IO

let lines: Lazy<string[]> = lazy File.ReadAllLines(@"C:\programs\file.txt")


let getOddSquares (xs: int list) =
    xs
    |> List.filter (fun (x: int) -> x % 2 <> 0)
    |> List.map (fun (x: int) -> x * x)


// [<EntryPoint>]
let main(args: 'a) =    
    printfn "args: %A" args
    printfn "%A" (getOddSquares [1..10])
    printfn("Hello world")
    0