#!/bin/sh

echo "cd libgambatte && scons"
(cd libgambatte && scons) || exit

echo "cd gambatte_qt && make"
(cd gambatte_qt && rm -f bin/gambatte_speedrun.exe && qmake && make)
