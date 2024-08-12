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
rust            | 0:00:00.977790
c               | 0:00:00.986693
java            | 0:00:00.989793
go              | 0:00:01.130203
luajit          | 0:00:03.021330
haskell         | 0:00:03.171809
callisto        | 0:00:05.388037
factor          | 0:00:05.856998
gforth          | 0:00:13.295513
uxntal          | 0:00:16.159653
lua             | 0:00:16.524570
python          | 0:00:32.228501
```

Note that the following languages were run via Rosetta 2 translation:
- Callisto
- Factor

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
