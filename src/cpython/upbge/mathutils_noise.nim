## * https://upbge.org/#/documentation/docs/latest/api/mathutils.noise.html
import nimpy

template X(simbol):                      auto = nimpy.pyImport("mathutils.noise").simbol().to(type(result))
template X(simbol; a, b):                auto = nimpy.pyImport("mathutils.noise").simbol(a, b).to(type(result))
template X(simbol; a, b, c):             auto = nimpy.pyImport("mathutils.noise").simbol(a, b, c).to(type(result))
template X(simbol; a, b, c, d):          auto = nimpy.pyImport("mathutils.noise").simbol(a, b, c, d).to(type(result))
template X(simbol; a, b, c, d, e):       auto = nimpy.pyImport("mathutils.noise").simbol(a, b, c, d, e).to(type(result))
template X(simbol; a, b, c, d, e, f):    auto = nimpy.pyImport("mathutils.noise").simbol(a, b, c, d, e, f).to(type(result))
template X(simbol; a, b, c, d, e, f, g): auto = nimpy.pyImport("mathutils.noise").simbol(a, b, c, d, e, f, g).to(type(result))
template X(simbol; a): auto =
  when declared result: nimpy.pyImport("mathutils.noise").simbol(a).to(type(result)) else: discard nimpy.pyImport("mathutils.noise").simbol(a)

proc random*(): float = X random
proc seed_set*(seed: int) = X seed_set, seed
proc random_vector*(size: 2..4 = 3): seq[float] = X random_vector, size
proc random_unit_vector*(size: 2..4 = 3): seq[float] = X random_unit_vector, size
proc cell*(position: array[3, float]): float = X cell, position
proc fractal*(position: array[3, float]; h, lacunarity: float; octaves: int; noise_basis = "PERLIN_ORIGINAL"): float = X fractal, position, h, lacunarity, octaves, noise_basis
proc cell_vector*(position: array[3, float]): array[3, float] = X cell_vector, position
proc hetero_terrain*(position: array[3, float]; h, lacunarity: float; octaves: int; offset: float; noise_basis = "PERLIN_ORIGINAL"): float = X hetero_terrain, position, h, lacunarity, octaves, offset, noise_basis
proc hybrid_multi_fractal*(position: array[3, float]; h, lacunarity: float; octaves: int; offset, gain: float; noise_basis = "PERLIN_ORIGINAL"): float = X hybrid_multi_fractal, position, h, lacunarity, octaves, offset, gain, noise_basis
proc multi_fractal*(position: array[3, float]; h, lacunarity: float; octaves: int; noise_basis = "PERLIN_ORIGINAL"): float = X multi_fractal, position, h, lacunarity, octaves, noise_basis
proc noise*(position: array[3, float]; noise_basis = "PERLIN_ORIGINAL"): float = X noise, position, noise_basis
proc noise_vector*(position: array[3, float]; noise_basis = "PERLIN_ORIGINAL"): array[3, float] = X noise_vector, position, noise_basis
proc ridged_multi_fractal*(position: array[3, float]; h, lacunarity: float; octaves: int; offset, gain: float; noise_basis = "PERLIN_ORIGINAL"): float = X ridged_multi_fractal, position, h, lacunarity, octaves, offset, gain, noise_basis
proc turbulence*(position: array[3, float]; octaves: int; hard: bool; noise_basis = "PERLIN_ORIGINAL"; amplitude_scale=0.5, frequency_scale=2.0): float = X turbulence, position, octaves, hard, noise_basis, amplitude_scale, frequency_scale
proc turbulence_vector*(position: array[3, float]; octaves: int; hard: bool; noise_basis = "PERLIN_ORIGINAL"; amplitude_scale=0.5, frequency_scale=2.0): array[3, float] = X turbulence_vector, position, octaves, hard, noise_basis, amplitude_scale, frequency_scale
proc variable_lacunarity*(position: array[3, float]; distortion: float; noise_type1="PERLIN_ORIGINAL", noise_type2="PERLIN_ORIGINAL"): float = X variable_lacunarity, position, distortion, noise_type1, noise_type2
proc voronoi*(position: array[3, float]; distance_metric="DISTANCE"; exponent=2.5): (array[4, float], seq[array[3, float]]) = X voronoi, position, distance_metric, exponent
