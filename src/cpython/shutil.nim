## * https://docs.python.org/3.10/library/shutil.html
import nimpy

const module = "shutil"
template X(simbol): auto =
  when declared result: pyImport(module).simbol().to(type(result)) else: discard pyImport(module).simbol()
template X(simbol; a): auto =
  when declared result: pyImport(module).simbol(a).to(type(result)) else: discard pyImport(module).simbol(a)
template X(simbol; a, b): auto =
  when declared result: pyImport(module).simbol(a, b).to(type(result)) else: discard pyImport(module).simbol(a, b)
template X(simbol; a, b, c): auto =
  when declared result: pyImport(module).simbol(a, b, c).to(type(result)) else: discard pyImport(module).simbol(a, b, c)
template X(simbol; a, b, c, d): auto =
  when declared result: pyImport(module).simbol(a, b, c, d).to(type(result)) else: discard pyImport(module).simbol(a, b, c, d)
template X(simbol; a, b, c, d, e, f): auto =
  when declared result: pyImport(module).simbol(a, b, c, d, e, f).to(type(result)) else: discard pyImport(module).simbol(a, b, c, d, e, f)

proc copyfile*(source, destination: string) = X copyfile, source, destination
proc copymode*(source, destination: string) = X copymode, source, destination
proc copystat*(source, destination: string) = X copystat, source, destination
proc copy*(source, destination: string)     = X copy, source, destination
proc copy2*(source, destination: string)    = X copy2, source, destination
proc move*(source, destination: string)     = X move, source, destination
proc chown*(path: string; uid: int)         = X chown, path, uid
proc chown*(path: string; username: string) = X chown, path, username
proc rmtree*(path: string; ignore_errors=false) = X rmtree, path, ignore_errors
proc copytree*(source, destination: string; symlinks=false): string = X copytree, source, destination, symlinks
proc disk_usage*(path: string): tuple[total, used, free: BiggestUInt] = X disk_usage, path
proc which*(cmd: string): string = X which, cmd
proc make_archive*(base_name, formats: string) = X make_archive, base_name, formats
proc make_archive*(base_name, formats, root_dir: string) = X make_archive, base_name, formats, root_dir
proc make_archive*(base_name, formats, root_dir, base_dir: string) = X make_archive, base_name, formats, root_dir, base_dir
proc make_archive*(base_name, formats, root_dir, base_dir: string; verbose, dry_run: bool) = X make_archive, base_name, formats, root_dir, base_dir, verbose, dry_run
proc get_archive_formats*(): seq[tuple[name, description: string]] = X get_archive_formats
proc unregister_archive_format*(name: string) = X unregister_archive_format, name
proc unpack_archive*(filename, extract_dir, format: string) = X unpack_archive, filename, extract_dir, format
proc unpack_archive*(filename, extract_dir: string)         = X unpack_archive, filename, extract_dir
proc unpack_archive*(filename: string)                      = X unpack_archive, filename
proc unregister_unpack_format*(name: string) = X unregister_unpack_format, name
proc get_unpack_formats*(): seq[tuple[name: string, extensions: seq[string], description: string]] = X get_unpack_formats
proc get_terminal_size*(fallback: array[2, int] = [80, 24]): tuple[columns, lines: int] = X get_terminal_size, fallback
