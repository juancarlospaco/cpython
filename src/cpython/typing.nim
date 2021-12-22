## * https://docs.python.org/3.10/library/typing.html
## * We dont know what is the best way to wrap those, and how useful is to do so, the implementation is kinda magical.
import nimpy

template X(simbol) =
  let simbol* {.inject.}: nimpy.PyObject = nimpy.pyImport("typing").simbol


# See https://github.com/python/cpython/blob/main/Lib/typing.py#L42


# Super-special typing primitives.
X Annotated
X Any
X Callable
X ClassVar
X Concatenate
X Final
X ForwardRef
X Generic
X Literal
X Optional
X ParamSpec
X Protocol
X Tuple
X Type
X TypeVar
X Union


# ABCs (from collections.abc).
X AbstractSet
X ByteString
X Container
X ContextManager
X Hashable
X ItemsView
X Iterable
X Iterator
X KeysView
X Mapping
X MappingView
X MutableMapping
X MutableSequence
X MutableSet
X Sequence
X Sized
X ValuesView
X Awaitable
X AsyncIterator
X AsyncIterable
X Coroutine
X Collection
X AsyncGenerator
X AsyncContextManager


# Structural checks a.k.a. protocols.
X Reversible
X SupportsAbs
X SupportsBytes
X SupportsComplex
X SupportsFloat
X SupportsIndex
X SupportsInt
X SupportsRound


# Concrete collection types.
X ChainMap
X Counter
X Deque
X Dict
X DefaultDict
X List
X OrderedDict
X Set
X FrozenSet
X NamedTuple  # Not really a type.
X TypedDict  # Not really a type.
X Generator


# Other concrete types.
X BinaryIO
X IO
X Match
X Pattern
X TextIO
