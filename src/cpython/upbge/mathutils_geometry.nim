## * https://upbge.org/api/mathutils.geometry.html
import nimpy

template Y(simbol):                      auto = nimpy.pyImport("mathutils.geometry").simbol().to(type(result))
template Y(simbol; a):                   auto = nimpy.pyImport("mathutils.geometry").simbol(a).to(type(result))
template Y(simbol; a, b):                auto = nimpy.pyImport("mathutils.geometry").simbol(a, b).to(type(result))
template Y(simbol; a, b, c):             auto = nimpy.pyImport("mathutils.geometry").simbol(a, b, c).to(type(result))
template Y(simbol; a, b, c, d):          auto = nimpy.pyImport("mathutils.geometry").simbol(a, b, c, d).to(type(result))
template Y(simbol; a, b, c, d, e):       auto = nimpy.pyImport("mathutils.geometry").simbol(a, b, c, d, e).to(type(result))
template Y(simbol; a, b, c, d, e, f):    auto = nimpy.pyImport("mathutils.geometry").simbol(a, b, c, d, e, f).to(type(result))
template Y(simbol; a, b, c, d, e, f, g): auto = nimpy.pyImport("mathutils.geometry").simbol(a, b, c, d, e, f, g).to(type(result))

proc poly_3d_calc*(veclist: seq[array[3, float]]; pt: array[3, float]): seq[float] =
  nimpy.pyImport("mathutils.interpolate").poly_3d_calc(veclist, pt).to(type(result))

proc delaunay_2d_cdt*(vert_coords: seq[array[2, float]]; edges: seq[(int, int)]; faces: seq[seq[int]]; output_type: auto; epsilon: 0..3
  ): tuple[vert_coords: seq[array[2, float]]; edges: seq[(int, int)]; faces, orig_verts, orig_edges, orig_faces: seq[seq[int]]
  ] = Y delaunay_2d_cdt, vert_coords, edges, faces, output_type, epsilon

proc area_tri*(v1, v2, v3: array[3, float]): float = Y area_tri, v1, v2, v3
proc barycentric_transform*(point, tri_a1, tri_a2, tri_a3, tri_b1, tri_b2, tri_b3: array[3, float]): array[3, float] = Y barycentric_transform, point, tri_a1, tri_a2, tri_a3, tri_b1, tri_b2, tri_b3
proc box_fit_2d*(points: seq[array[2, float]]): float = Y box_fit_2d, points
proc box_pack_2d*(boxes: seq[tuple[x, y, width, height: float]]): tuple[width, height: float] = Y box_pack_2d, boxes
proc closest_point_on_tri*(pt, tri_p1, tri_p2, tri_p3: array[3, float]): array[3, float] = Y closest_point_on_tri, pt, tri_p1, tri_p2, tri_p3
proc convex_hull_2d*(points: seq[array[2, float]]): seq[int] = Y convex_hull_2d, points
proc distance_point_to_plane*(pt, plane_co, plane_no: array[3, float]): float = Y distance_point_to_plane, pt, plane_co, plane_no
proc interpolate_bezier*(knot1, handle1, handle2, knot2: array[3, float]; resolution: int): seq[array[3, float]] = Y interpolate_bezier, knot1, handle1, handle2, knot2, resolution
proc intersect_line_line*(v1, v2, v3, v4: array[3, float]): array[3, float] = Y intersect_line_line, v1, v2, v3, v4
proc intersect_line_line_2d*(lineA_p1, lineA_p2, lineB_p1, lineB_p2: array[2, float]): array[2, float] = Y intersect_line_line_2d, lineA_p1, lineA_p2, lineB_p1, lineB_p2
proc intersect_line_plane*(line_a, line_b, plane_co, plane_no: array[3, float]; no_flip = false): array[3, float] = Y intersect_line_plane, line_a, line_b, plane_co, plane_no, no_flip
proc intersect_line_sphere*(line_a, line_b, sphere_co: array[3, float]; sphere_radius: auto, clip = true): (array[3, float], array[3, float]) = Y intersect_line_sphere, line_a, line_b, sphere_co, sphere_radius, clip
proc intersect_line_sphere_2d*(line_a, line_b, sphere_co: array[2, float]; sphere_radius: auto, clip = true): (array[2, float], array[2, float]) = Y intersect_line_sphere_2d, line_a, line_b, sphere_co, sphere_radius, clip
proc intersect_plane_plane*(plane_a_co, plane_a_no, plane_b_co, plane_b_no: array[3, float]): (array[3, float], array[3, float]) = Y intersect_plane_plane, plane_a_co, plane_a_no, plane_b_co, plane_b_no
proc intersect_point_line*(pt, line_p1: array[3, float]; line_p2: auto): (array[3, float], float) = Y intersect_point_line, pt, line_p1, line_p2
proc intersect_point_quad_2d*(pt, quad_p1, quad_p2, quad_p3, quad_p4: array[2, float]): int = Y intersect_point_quad_2d, pt, quad_p1, quad_p2, quad_p3, quad_p4
proc intersect_point_tri*(pt, tri_p1, tri_p2, tri_p3: array[3, float]): array[3, float] = Y intersect_point_tri, pt, tri_p1, tri_p2, tri_p3
proc intersect_point_tri_2d*(pt, tri_p1, tri_p2, tri_p3: array[2, float]): int = Y intersect_point_tri_2d, pt, tri_p1, tri_p2, tri_p3
proc intersect_ray_tri*(v1, v2, v3, ray, orig: array[3, float]; clip = true): array[3, float] = Y intersect_ray_tri, v1, v2, v3, ray, orig, clip
proc intersect_sphere_sphere_2d*(p_a: array[2, float]; radius_a: float; p_b: array[2, float]; radius_b: float): (array[2, float], array[2, float]) = Y intersect_sphere_sphere_2d, p_a, radius_a, p_b, radius_b
proc intersect_tri_tri_2d*(tri_a1, tri_a2, tri_a3, tri_b1, tri_b2, tri_b3: array[2, float]): bool = Y intersect_tri_tri_2d, tri_a1, tri_a2, tri_a3, tri_b1, tri_b2, tri_b3
proc normal*(vectors: seq[array[3, float]]): array[3, float] = Y normal, vectors
proc tessellate_polygon*(veclist_list: auto): seq[seq[float]] = Y tessellate_polygon, veclist_list
proc volume_tetrahedron*(v1, v2, v3, v4: array[3, float]): float = Y volume_tetrahedron, v1, v2, v3, v4
