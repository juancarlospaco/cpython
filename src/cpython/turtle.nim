## * https://docs.python.org/3.10/library/turtle.html
##
## .. raw:: html
##    <video src="https://github.com/juancarlospaco/cpython/blob/nim/docs/turtle.mp4?raw=true" controls loop muted ></video>
##
## .. code-block:: nim
##   import cpython/turtle
##
##   title "Nim Turtle"
##   shape "turtle"
##   shapesize 2, 2, 8
##   color "green", "yellow"
##   speed "fast"
##   beginFill()
##
##   while true:
##     forward 200
##     left 170
##     if position() < (1.0, 1.0):
##       break
##
##   endFill()
##   mainLoop()
##
## .. image:: https://docs.python.org/3.10/_images/turtle-star.png
import nimpy

template X(simbol): auto =
  when declared result: nimpy.pyImport("turtle").simbol().to(type(result)) else: discard nimpy.pyImport("turtle").simbol()
template X(simbol; a): auto =
  when declared result: nimpy.pyImport("turtle").simbol(a).to(type(result)) else: discard nimpy.pyImport("turtle").simbol(a)
template X(simbol; a, b): auto =
  when declared result: nimpy.pyImport("turtle").simbol(a, b).to(type(result)) else: discard nimpy.pyImport("turtle").simbol(a, b)
template X(simbol; a, b, c): auto =
  when declared result: nimpy.pyImport("turtle").simbol(a, b, c).to(type(result)) else: discard nimpy.pyImport("turtle").simbol(a, b, c)
template X(simbol; a, b, c, d): auto =
  when declared result: nimpy.pyImport("turtle").simbol(a, b, c, d).to(type(result)) else: discard nimpy.pyImport("turtle").simbol(a, b, c, d)
template X(simbol; a, b, c, d, e): auto =
  when declared result: nimpy.pyImport("turtle").simbol(a, b, c, d, e).to(type(result)) else: discard nimpy.pyImport("turtle").simbol(a, b, c, d, e)

proc forward*(distance: int)    = X forward, distance
proc forward*(distance: float)  = X forward, distance
proc backward*(distance: int)   = X backward, distance
proc backward*(distance: float) = X backward, distance
proc right*(angle: int)         = X right, angle
proc right*(angle: float)       = X right, angle
proc left*(angle: int)          = X left, angle
proc left*(angle: float)        = X left, angle
proc setposition*(x, y: int)    = X setposition, x, y
proc setposition*(x, y: float)  = X setposition, x, y
proc goto*(x, y: int)           = X goto, x, y
proc goto*(x, y: float)         = X goto, x, y
proc setx*(x: int)              = X setx, x
proc setx*(x: float)            = X setx, x
proc sety*(y: int)              = X sety, y
proc sety*(y: float)            = X sety, y
proc xcor*(): float             = X xcor
proc ycor*(): float             = X ycor
proc home*()                    = X home
proc stamp*(): int              = X stamp
proc undo*()                    = X undo
proc radians*(): float          = X radians
proc pendown*(): int            = X pendown
proc penup*(): int              = X penup
proc pensize*(): int            = X pensize
proc pensize*(width: int)       = X pensize, width
proc speed*(sped: range[0..10]) = X speed, sped
proc speed*(sped: string)       = X speed, sped
proc begin_fill*()              = X begin_fill
proc end_fill*()                = X end_fill
proc speed*(): int              = X speed
proc reset*()                   = X reset
proc clear*()                   = X clear
proc hideturtle*()              = X hideturtle
proc showturtle*()              = X showturtle
proc isvisible*(): bool         = X isvisible
proc isdown*(): bool            = X isdown
proc filling*(): bool           = X filling
proc clearstamps*()             = X clearstamps
proc clearstamp*(stampid: int)  = X clearstamp, stampid
proc circle*(radius: int)       = X circle, radius
proc circle*(radius: float)     = X circle, radius
proc shape*(name: string)       = X shape, name
proc shape*(): string           = X shape
proc shearfactor*(shear: int)   = X shearfactor, shear
proc shearfactor*(shear: float) = X shearfactor, shear
proc shearfactor*(): float      = X shearfactor
proc tilt*(angle: int)          = X tilt, angle
proc tilt*(angle: float)        = X tilt, angle
proc tiltangle*(angle: int)     = X tiltangle, angle
proc tiltangle*(angle: float)   = X tiltangle, angle
proc begin_poly*()              = X begin_poly
proc end_poly*()                = X end_poly
proc setundobuffer*(size: int)  = X setundobuffer, size
proc setundobuffer*()           = X setundobuffer
proc bgpic*(picname: string)    = X bgpic, picname
proc bgpic*(): string           = X bgpic
proc clearscreen*(): bool       = X clearscreen
proc resetscreen*(): bool       = X resetscreen
proc delay*(delai: int)         = X delay, delai
proc delay*(delai: float)       = X delay, delai
proc delay*(): float            = X delay
proc tracer*(n, delai: int)     = X tracer, n, delai
proc tracer*(n, delai: float)   = X tracer, n, delai
proc tracer*(): float           = X tracer
proc update*()                  = X update
proc mainloop*()                = X mainloop
proc mode*(modes: string)       = X mode, modes
proc mode*(): string            = X mode
proc colormode*(cmode: int)     = X colormode, cmode
proc colormode*(cmode: float)   = X colormode, cmode
proc getshapes*(): seq[string]  = X getshapes
proc window_height*(): int      = X window_height
proc window_width*(): int       = X window_width
proc bye*()                     = X bye
proc exitonclick*()             = X exitonclick
proc settiltangle*(angle: float) = X settiltangle, angle
proc setheading*(to_angle: int)    = X setheading, to_angle
proc setheading*(to_angle: float)  = X setheading, to_angle
proc towards*(x, y: float): float  = X towards, x, y
proc towards*(x, y: int): float    = X towards, x, y
proc distance*(x, y: int): float   = X distance, x, y
proc distance*(x, y: float): float = X distance, x, y
proc degrees*(fullcircle = 360.0)  = X degrees, fullcircle
proc write*(arg: string; move: bool)       = X write, arg, move
proc resizemode*(resizemod: string)        = X resizemode, resizemod
proc resizemode*(): string                 = X resizemode
proc dot*(size: int; color: string)        = X dot, size, color
proc circle*(radius, extent, steps: int)   = X circle, radius, extent, steps
proc circle*(radius, extent, steps: float) = X circle, radius, extent, steps
proc position*(): tuple[x, y: float]       = X position
proc pencolor*(red, green, blue: int)        = X pencolor, red, green, blue
proc pencolor*(red, green, blue: float)      = X pencolor, red, green, blue
proc pencolor*(): string                     = X pencolor
proc fillcolor*(red, green, blue: int)       = X fillcolor, red, green, blue
proc fillcolor*(red, green, blue: float)     = X fillcolor, red, green, blue
proc fillcolor*(): string                    = X fillcolor
proc get_shapepoly*(): seq[tuple[x, y: float]] = X get_shapepoly
proc pencolor*(colour: (int, int, int))        = X pencolor, colour
proc pencolor*(colour: (float, float, float))  = X pencolor, colour
proc pencolor*(colour: string)                 = X pencolor, colour
proc textinput*(title, prompt: string): string = X textinput, title, prompt
proc color*(colourA, colourB: (int, int, int))       = X color, colourA, colourB
proc color*(colourA, colourB: (float, float, float)) = X color, colourA, colourB
proc color*(colourA, colourB: string)                = X color, colourA, colourB
proc color*(red, green, blue: int)                   = X color, red, green, blue
proc color*(red, green, blue: float)                 = X color, red, green, blue
proc color*(colour: string)                          = X color, colour
proc color*(): tuple[penColor, fillColor: string]    = X color
proc write*(arg: string; move: bool; align: string)  = X write, arg, move, align
proc setworldcoordinates*(llx, lly, urx, ury: int)   = X setworldcoordinates, llx, lly, urx, ury
proc setworldcoordinates*(llx, lly, urx, ury: float) = X setworldcoordinates, llx, lly, urx, ury
proc write*(arg: string; move=false; align="left"; font = ("Arial", 9, "normal")) = X write, arg, move, align, font
proc shapesize*(stretch_wid, stretch_len, outline: int)    = X shapesize, stretch_wid, stretch_len, outline
proc shapesize*(stretch_wid, stretch_len, outline: float)  = X shapesize, stretch_wid, stretch_len, outline
proc turtlesize*(stretch_wid, stretch_len, outline: int)   = X turtlesize, stretch_wid, stretch_len, outline
proc turtlesize*(stretch_wid, stretch_len, outline: float) = X turtlesize, stretch_wid, stretch_len, outline
proc shapesize*(): tuple[stretch_wid, stretch_len, outline: float] = X shapesize
proc turtlesize*(): tuple[stretch_wid, stretch_len, outline: float] = X turtlesize
proc shapetransform*(t11, t12, t21, t22: int)            = X shapetransform, t11, t12, t21, t22
proc shapetransform*(t11, t12, t21, t22: float)          = X shapetransform, t11, t12, t21, t22
proc shapetransform*(): tuple[t11, t12, t21, t22: float] = X shapetransform
proc screensize*(canvwidth, canvheight: int;   bg: string) = X screensize, canvwidth, canvheight, bg
proc screensize*(canvwidth, canvheight: float; bg: string) = X screensize, canvwidth, canvheight, bg
proc screensize*(canvwidth, canvheight: int;   bg: (int, int, int))       = X screensize, canvwidth, canvheight, bg
proc screensize*(canvwidth, canvheight: float; bg: (float, float, float)) = X screensize, canvwidth, canvheight, bg
proc numinput*(title, prompt: string; default, minval, maxval: int): int   = X numinput, title, prompt, default, minval, maxval
proc numinput*(title, prompt: string; default, minval, maxval: float): int = X numinput, title, prompt, default, minval, maxval
proc register_shape*(gif_file_path: string) = X register_shape, gif_file_path
proc register_shape*(name: string; shape: seq[(float, float)]) = X register_shape, name, shape
proc register_shape*(name: string; shape: seq[(int, int)]) = X register_shape, name, shape
proc setup*(width, height: int;   startx, starty: int) = X setup, width, height, startx, starty
proc setup*(width, height: float; startx, starty: int) = X setup, width, height, startx, starty
proc title*(titlestring: string) = X title, titlestring
proc write_docstringdict*(filename="turtle_docstringdict") = X write_docstringdict, filename
