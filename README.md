# Alternative StdLib for Nim for Python targets


# Design

- It does not use anything from Nim standard library, very future-proof.
- We do not deprecate stuff, even if Python deprecate/remove it, it will keep working for Nim.
- Stuff deprecated/removed before year 2020 will not be supported.
- Nim modules have the same filename as the Python modules.
- Package version == Python version.


# Requisites

- Python 3.
