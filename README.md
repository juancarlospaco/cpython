# Alternative StdLib for Nim for Python targets


# Design

- 1 Dependency only.
- It does not use anything from Nim standard library, very future-proof.
- We do not deprecate stuff, even if Python deprecate/remove it, it will keep working for Nim.
- Stuff deprecated/removed before year 2020 will not be supported.
- Nim modules have the same filename as the Python modules.
- Package version == Python version.


# Requisites

- Python >`3.0`.


# See also

- [**For Python Programmers**](https://github.com/nim-lang/Nim/wiki/Nim-for-Python-Programmers#table-of-contents)
- [Nim integration for Python PIP](https://github.com/juancarlospaco/choosenim_install#nim-integration-for-python-pip)
- [Python modules Deprecated from Python StdLib](https://github.com/tiran/legacylib) [PEP594](https://www.python.org/dev/peps/pep-0594)
