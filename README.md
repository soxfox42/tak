# Tak

[Tak](https://en.wikipedia.org/wiki/Tak_(function)) is a simple benchmark function. This repo contains some scripts I wrote to test various language implementations.

Current results - x = 48, y = 20, z = 12 - M1 MacBook Pro:
```
c               | 0:00:01.007381
luajit          | 0:00:03.208017
factor          | 0:00:06.010207
uxntal          | 0:00:16.565155
lua             | 0:00:17.558004
python          | 0:00:33.063282
```

## PRs Welcome!

I'd love to build up a collection of more languages, and while I plan to implement some more myself, I won't say no to help!

The general requirements for adding a new language:
- Create a new folder for the language.
- Add the implementation - usually named `tak.foo`, where `foo` is the relevant extension.
- Add `run.sh`, which passes three arguments `$1`, `$2` and `$3` to the program.
- For compiled languages, add `build.sh` to generate the compiled output.
- Program must read the values of x, y, and z from `argv`.
- Program must produce some sort of output, as this makes verification and debugging easier.
