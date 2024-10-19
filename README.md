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
c           | 00:00.941744
rust        | 00:00.943518
zig         | 00:00.964244
java        | 00:01.047898
go          | 00:01.141506
dlang       | 00:01.387809
luajit      | 00:03.180875
haskell     | 00:03.171809
cython      | 00:04.057390
nodejs      | 00:04.170309
callisto    | 00:05.401088
factor      | 00:05.856998
gforth      | 00:13.388287
uxntal      | 00:15.797669
lua         | 00:16.849700
quickjs     | 00:25.239628
python      | 00:32.529359
ruby        | 00:34.238729
arturo      | 04:21.561082
```

Note that the Factor implementation was run via Rosetta 2 translation.

## PRs Welcome!

I'd love to build up a collection of more languages, and while I plan to implement some more myself, I won't say no to help!

The general requirements for adding a new language:
- Create a new folder for the language.
- Add the implementation - usually named `tak.foo`, where `foo` is the relevant extension.
- Add `run.sh`, which passes three arguments `$1`, `$2` and `$3` to the program.
- For compiled languages, add `build.sh` to generate the compiled output.
- The program must read the values of x, y, and z from `argv`.
- The program must produce some sort of output, as this makes verification and debugging easier.
- The program must implement the Tak function as specified above - I'm interested in raw performance, not the number of clever optimisations you can make.
