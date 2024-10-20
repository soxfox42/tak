# Tak

[Tak](https://en.wikipedia.org/wiki/Tak_(function)) is a simple benchmark function. This repo contains some scripts I wrote to test various language implementations.

It is defined as follows:
```py
def tak(x, y, z):
    if y < x:
        return tak(
            tak(x - 1, y, z),
            tak(y - 1, z, x),
            tak(z - 1, x, y),
        )
    else:
        return z
```

Current results - x = 48, y = 20, z = 12 - M1 MacBook Pro:
```
c           | 00:00.993648 | Apple clang version 16.0.0 (clang-1600.0.26.3)
rust        | 00:00.994078 | rustc 1.81.0 (eeb90cda1 2024-09-04)
zig         | 00:00.994234 | 0.13.0
csharp      | 00:00.998090 | 8.0.108
java        | 00:01.061346 | openjdk 21.0.3 2024-04-16 LTS
go          | 00:01.148092 | go version go1.23.2 darwin/arm64
dlang       | 00:01.394184 | LDC - the LLVM D compiler (1.39.0)
haskell     | 00:02.950726 | The Glorious Glasgow Haskell Compilation System, version 9.8.2
luajit      | 00:03.192948 | LuaJIT 2.1.1727870382
cython      | 00:04.056156 | Cython version 3.0.11
nodejs      | 00:04.220198 | v22.8.0
factor      | 00:06.030762 | Factor 0.100 x86.64 (2281, heads/master-80a4633f05, Sep 11 2024 14:22:41)
callisto    | 00:11.404010 | The Glorious Callisto Compilation System Beta 0.11.0
gforth      | 00:13.504027 | gforth 0.7.3
uxntal      | 00:15.843453 | Uxnemu - Varvara Emulator(GUI): 25 Aug 2024.
lua         | 00:16.901724 | Lua 5.4.7
chicken     | 00:19.593212 | 5.4.0
quickjs     | 00:25.530629 | QuickJS version 2024-01-13
wren        | 00:27.523338 | wren 0.4.0
ruby        | 00:29.660727 | ruby 3.3.5 (2024-09-03 revision ef084cc8f4) [arm64-darwin24]
python      | 00:32.869780 | Python 3.12.2
arturo      | 04:23.373082 | arturo v/0.9.83
```

Note that the Factor implementation was run via Rosetta 2 translation.

## PRs Welcome!

I'd love to build up a collection of more languages, and while I plan to implement some more myself, I won't say no to help!

The general requirements for adding a new language:
- Create a new folder for the language.
- Add the implementation - usually named `tak.foo`, where `foo` is the relevant extension.
- Add `run.sh`, which passes three arguments `$1`, `$2` and `$3` to the program.
- Add `version.sh`, which should output the current version of the language. This should come directly from the interpreter/compiler, and be a single line of output. You can use common shell tools to process the output down to one line if necessary.
- For compiled languages, add `build.sh` to generate the compiled output.
- The program must read the values of x, y, and z from `argv`.
- The program must produce some sort of output, as this makes verification and debugging easier.
- The program must implement the Tak function as specified above - I'm interested in raw performance, not the number of clever optimisations you can make.
