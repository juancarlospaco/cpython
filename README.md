# Alternative StdLib for Nim for Python targets


![](https://img.shields.io/github/languages/top/juancarlospaco/cpython?style=for-the-badge)
![](https://img.shields.io/github/stars/juancarlospaco/cpython?style=for-the-badge)
![](https://img.shields.io/maintenance/yes/2021?style=for-the-badge)
![](https://img.shields.io/github/languages/code-size/juancarlospaco/cpython?style=for-the-badge)
![](https://img.shields.io/github/issues-raw/juancarlospaco/cpython?style=for-the-badge "Bugs")
![](https://img.shields.io/github/issues-pr-raw/juancarlospaco/cpython?style=for-the-badge "PRs")
![](https://img.shields.io/github/last-commit/juancarlospaco/cpython?style=for-the-badge "Commits")
![](https://github.com/juancarlospaco/cpython/workflows/Build/badge.svg?branch=main)


# Documentation

[For actual documentation use Python official documentation, works too.](https://docs.python.org/3.10/py-modindex.html)

- :heavy_check_mark: [base64](https://docs.python.org/3.10/library/base64.html) :arrow_right: https://juancarlospaco.github.io/cpython/base64.html


# Design

- 1 Dependency only.
- Compatible with ARC/ORC.
- Module files are <100 lines of code each.
- Same API as Python StdLib, same function names, same argument names.
- Same module filenames as Python StdLib, same imports as Python StdLib.
- It does not use anything from Nim standard library, very future-proof.
- No imports, no Macros, no variables, in the whole project, very future-proof.
- Stuff deprecated/removed in Python before year 2020 will not be supported.
- We do not deprecate stuff, even if Python deprecate/remove it, it will keep working for Nim.
- Each file is completely self-contained standalone, you can copy just 1 file on your project and use it.
- Real strong inferred static typing for Python.
- Package version == Python version.


# Requisites

- Python ( >`2.7` works but unsupported, >`3.5` minimal, >=`3.10` recommended).


# Stars

![](https://starchart.cc/juancarlospaco/cpython.svg)


# See also

- [**For Python Programmers**](https://github.com/nim-lang/Nim/wiki/Nim-for-Python-Programmers#table-of-contents)
- [Nim integration for Python PIP](https://github.com/juancarlospaco/choosenim_install#nim-integration-for-python-pip)
- [Python modules Deprecated from Python StdLib for download](https://github.com/tiran/legacylib) ([PEP594](https://www.python.org/dev/peps/pep-0594))
