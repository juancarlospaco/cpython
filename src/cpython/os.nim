## * https://docs.python.org/3.10/library/os.html
import nimpy

template X(simbol): auto =
  when declared result: nimpy.pyImport("os").simbol().to(type(result)) else: discard nimpy.pyImport("os").simbol()
template X(simbol; a): auto =
  when declared result: nimpy.pyImport("os").simbol(a).to(type(result)) else: discard nimpy.pyImport("os").simbol(a)
template X(simbol; a, b): auto =
  when declared result: nimpy.pyImport("os").simbol(a, b).to(type(result)) else: discard nimpy.pyImport("os").simbol(a, b)
template X(simbol; a, b, c): auto =
  when declared result:nimpy.pyImport("os").simbol(a, b, c).to(type(result)) else: discard nimpy.pyImport("os").simbol(a, b, c)
template X(simbol; a, b, c, d): auto =
  when declared result: nimpy.pyImport("os").simbol(a, b, c, d).to(type(result)) else: discard nimpy.pyImport("os").simbol(a, b, c, d)
template X(simbol; a, b, c, d, e): auto =
  when declared result: nimpy.pyImport("os").simbol(a, b, c, d, e).to(type(result)) else: discard nimpy.pyImport("os").simbol(a, b, c, d, e)

proc getcwd*(): string = X getcwd
proc getpgid*(pid: int): int = X getpgid, pid
proc chdir*(path: string) = X chdir, path
proc fspath*(path: string): string = X fspath, path
proc get_exec_path*(): seq[string] = X get_exec_path
proc ctermid*(): string = X ctermid
proc getegid*(): int = X getegid
proc geteuid*(): int = X geteuid
proc getgid*(): int = X getgid
proc getgroups*(): seq[int] = X getgroups
proc getlogin*(): string = X getlogin
proc getpgrp*(): int = X getpgrp
proc getpid*(): int = X getpid
proc getenv*(key: string; default = ""): string = X getenv, key, default
proc getenvb*(key: string; default = ""): string = X getenvb, key, default
proc getgrouplist*(user: string; group: int): seq[int] = X getgrouplist, user, group
proc getppid*(): int = X getppid
proc getpriority*(which: string; who: int): int = X getpriority, which, who
proc getresuid*(): tuple[ruid: int, euid: int, suid: int] = X getresuid
proc getresgid*(): tuple[rgid: int, egid: int, sgid: int] = X getresgid
proc getuid*(): int = X getuid
proc initgroups*(username: string; gid: int): seq[int] = X initgroups, username, gid
proc putenv*(key, value: string) = X putenv, key, value
proc setegid*(egid: int) = X setegid, egid
proc seteuid*(euid: int) = X seteuid, euid
proc setgid*(gid: int) = X setgid, gid
proc setgroups*(groups: seq[int]) = X setgroups, groups
proc setpgrp*() = X setpgrp
proc setpgid*(pid, pgrp: int) = X setpgid, pid, pgrp
proc setpriority*(which, who: int; priority: -20..19 = 0) = X setpriority, which, who, priority
proc setregid*(rgid, egid: int) = X setregid
proc setresgid*(rgid, egid, sgid: int) = X setresgid, rgid, egid, sgid
proc setresuid*(ruid, euid, suid: int) = X setresuid, ruid, euid, suid
proc setreuid*(ruid, euid: int) = X setreuid, ruid, euid
proc getsid*(pid: int): int = X getsid, pid
proc setsid*() = X setsid
proc setuid*(uid: int) = X setuid, uid
proc strerror*(errorCode: int): string = X strerror, errorCode
proc umask*(mask: int): int = X umask, mask
proc uname*(): tuple[sysname, nodename, release, version, machine: string] = X uname
proc unsetenv*(key: string) = X unsetenv, key
proc close*(fileDescriptor: int) = X close, fileDescriptor
proc closerange*(fromFileDescriptor, toFileDescriptor: int) = X closerange, fromFileDescriptor, toFileDescriptor
proc copy_file_range*(src, dst, count: int): int = X copy_file_range, src, dst, count
proc device_encoding*(fd: int): string = X device_encoding, fd
proc fchmod*(fd, mode: int) = X fchmod, fd, mode
proc fchown*(fd, uid, gid: int) = X fchown, fd, uid, gid
proc fdatasync*(fd: int) = X fdatasync, fd
proc fsync*(fd: int) = X fsync, fd ## https://docs.python.org/3.10/library/os.html#os.fsync
proc ftruncate*(fd, len: int) = X ftruncate, fd, len ## https://docs.python.org/3.10/library/os.html#os.ftruncate
proc get_blocking*(fd: int): bool = X get_blocking, fd ## https://docs.python.org/3.10/library/os.html#os.get_blocking
proc isatty*(fd: int): bool = X isatty, fd ## https://docs.python.org/3.10/library/os.html#os.isatty
proc lseek*(fd, pos, how: int): int = X lseek, fd, pos, how ## https://docs.python.org/3.10/library/os.html#os.lseek
proc openpty*(): tuple[master, slave: int] = X openpty ## https://docs.python.org/3.10/library/os.html#os.openpty
proc pipe*(): tuple[read, write: int] = X pipe ## https://docs.python.org/3.10/library/os.html#os.pipe
proc pipe2*(flags: int): tuple[read, write: int] = X pipe2, flags ## https://docs.python.org/3.10/library/os.html#os.pipe2
proc posix_fallocate*(fd, offset, len: int) = X posix_fallocate, fd, offset, len  ## https://docs.python.org/3.10/library/os.html#os.posix_fallocate
proc posix_fadvise*(fd, offset, len, advice: int) = X posix_fadvise, fd, offset, len, advice ## https://docs.python.org/3.10/library/os.html#os.posix_fadvise
proc pread*(fd, n, offset: int): string = X pread, fd, n, offset ## https://docs.python.org/3.10/library/os.html#os.pread
proc pwrite*(fd: int; str: string; offset: int): int = X pwrite, fd, str, offset ## https://docs.python.org/3.10/library/os.html#os.pwrite
proc read*(fd, n: int): string = X read, fd, n ## https://docs.python.org/3.10/library/os.html#os.read
proc sendfile*(out_fd, in_fd, offset, count: int): int = X sendfile ## https://docs.python.org/3.10/library/os.html#os.sendfile
proc splice*(src, dst, count: int) = X splice, src, dst, count ## https://docs.python.org/3.10/library/os.html#os.splice
proc tcgetpgrp*(fd: int): int = X tcgetpgrp, fd ## https://docs.python.org/3.10/library/os.html#os.tcgetpgrp
proc tcsetpgrp*(fd, pg: int) = X tcsetpgrp, fd, pg ## https://docs.python.org/3.10/library/os.html#os.tcsetpgrp
proc ttyname*(fd: int): string = X ttyname, fd ## https://docs.python.org/3.10/library/os.html#os.ttyname
proc write*(fd: int; str: string): int = X write, fd, str  ## https://docs.python.org/3.10/library/os.html#os.write
proc get_terminal_size*(fd: int) = X get_terminal_size, fd  ## https://docs.python.org/3.10/library/os.html#os.get_terminal_size
proc get_inheritable*(fd: int): bool = X get_inheritable, fd ## https://docs.python.org/3.10/library/os.html#os.get_inheritable
proc set_inheritable*(fd: int; inheritable: bool) = X set_inheritable, fd, inheritable  ## https://docs.python.org/3.10/library/os.html#os.set_inheritable
proc access*(path: string; mode: int): bool = X access, path  ## https://docs.python.org/3.10/library/os.html#os.access
proc access*(path: string; mode: int; effective_ids, follow_symlinks: bool): bool = X access, path, mode, effective_ids, follow_symlinks  ## https://docs.python.org/3.10/library/os.html#os.access
proc chflags*(path: string; flags: int) = X chflags, path, flags  ## https://docs.python.org/3.10/library/os.html#os.chflags
proc chflags*(path: string; flags: int; follow_symlinks: bool) = X chflags, path, flags, follow_symlinks  ## https://docs.python.org/3.10/library/os.html#os.chflags
proc chmod*(path: string; mode: int) = X chmod, path, mode ## https://docs.python.org/3.10/library/os.html#os.chmod
proc chmod*(path: string; mode: int; follow_symlinks: bool) = X chmod, path, mode, follow_symlinks ## https://docs.python.org/3.10/library/os.html#os.chmod
proc chown*(path: string; uid, gid: int) = X chown, path, uid, gid  ## https://docs.python.org/3.10/library/os.html#os.chown
proc chown*(path: string; uid, gid: int; follow_symlinks: bool) = X chown, path, uid, gid, follow_symlinks  ## https://docs.python.org/3.10/library/os.html#os.chown
proc chroot*(path: string) = X chroot, path ## https://docs.python.org/3.10/library/os.html#os.chroot
proc fchdir*(fd: int) = X fchdir, fd ## https://docs.python.org/3.10/library/os.html#os.fchdir
proc getcwdb*(): string = X getcwdb ## https://docs.python.org/3.10/library/os.html#os.getcwdb
proc lchflags*(path: string; flags: int) = X lchflags, path, flags  ## https://docs.python.org/3.10/library/os.html#os.lchflags
proc lchmod*(path: string; mode: int) = X lchmod, path, mode  ## https://docs.python.org/3.10/library/os.html#os.lchmod
proc lchown*(path: string; uid, gid: int) = X lchown, path, uid, gid  ## https://docs.python.org/3.10/library/os.html#os.lchown
proc link*(src, dst: string) = X link, src, dst ## https://docs.python.org/3.10/library/os.html#os.link
proc link*(src, dst: string; follow_symlinks: bool) = X link, src, dst, follow_symlinks  ## https://docs.python.org/3.10/library/os.html#os.link
proc listdir*(path = "."): seq[string] = X listdir, path  ## https://docs.python.org/3.10/library/os.html#os.listdir
proc mkdir*(path: string; mode = 511) = X mkdir, path, mode  ## https://docs.python.org/3.10/library/os.html#os.mkdir
proc makedirs*(name: string; mode=511, exist_ok=false) = X makedirs, name, mode, exist_ok  ## https://docs.python.org/3.10/library/os.html#os.makedirs
proc mkfifo*(path: string; mode=438) = X mkfifo, path, mode  ## https://docs.pythn.org/3.10/library/os.html#os.mkfifo
proc mknod*(path: string, mode=384, device=0) = X mknod, path, mode, device  ## https://docs.python.org/3.10/library/os.html#os.mknod
proc major*(device: int): int = X major, device  ## https://docs.python.org/3.10/library/os.html#os.major
proc minor*(device: int): int = X minor, device  ## https://docs.python.org/3.10/library/os.html#os.minor
proc makedev*(major, minor: int) = X makedev, major, minor ## https://docs.python.org/3.10/library/os.html#os.makedev
proc readlink*(path: string): string = X readlink, path  ## https://docs.python.org/3.10/library/os.html#os.readlink
proc remove*(path: string) = X remove, path  ## https://docs.python.org/3.10/library/os.html#os.remove
proc removedirs*(path: string) = X removedirs, path  ## https://docs.python.org/3.10/library/os.html#os.removedirs
proc rename*(src, dst: string) = X rename, src, dst  ## https://docs.python.org/3.10/library/os.html#os.rename
proc renames*(olds, news: string) = X renames, olds, news  ## https://docs.python.org/3.10/library/os.html#os.renames
proc replace*(src, dst: string) = X replace, src, dst  ## https://docs.python.org/3.10/library/os.h# Nimpy wont take varargs nor openArray nor T for all arguments at the time of writing.tml#os.replace
proc rmdir*(path: string) = X rmdir, path ## https://docs.python.org/3.10/library/os.html#os.rmdir
proc symlink*(src, dst: string; target_is_directory=false) = X symlink, src, dst, target_is_directory ## https://docs.python.org/3.10/library/os.html#os.symlink
proc sync*() = X sync ## https://docs.python.org/3.10/library/os.html#os.sync
proc truncate*(path: string; len: int) = X truncate, path, len  ## https://docs.python.org/3.10/library/os.html#os.truncate
proc unlink*(path: string) = X unlink, path  ## https://docs.python.org/3.10/library/os.html#os.unlink
proc utime*(path: string) = X utime, path  ## https://docs.python.org/3.10/library/os.html#os.utime
proc memfd_create*(path: string): int = X memfd_create, path  ## https://docs.python.org/3.10/library/os.html#os.memfd_create
proc eventfd*(initval: int): int = X eventfd, initval  ## https://docs.python.org/3.10/library/os.html#os.eventfd
proc eventfd_write*(fd: int; value: string) = X eventfd_write, fd, value  ## https://docs.python.org/3.10/library/os.html#os.eventfd_write
proc eventfd_read*(fd: int): int = X eventfd_read, fd  ## https://docs.python.org/3.10/library/os.html#os.eventfd_read
proc getxattr*(path, attribute: string; follow_symlinks=true): string = X getxattr, path, attribute, follow_symlinks  ## https://docs.python.org/3.10/library/os.html#os.getxattr
proc listxattr*(path: string; follow_symlinks=true): seq[string] = X listxattr, path, follow_symlinks  ## https://docs.python.org/3.10/library/os.html#os.listxattr
proc removexattr*(path, attribute: string; follow_symlinks=true) = X removexattr, path, attribute, follow_symlinks  ## https://docs.python.org/3.10/library/os.html#os.removexattr
proc setxattr*(path, attribute, value: string; flags=0; follow_symlinks=true) = X setxattr, path, attribute, value, flags, follow_symlinks ## https://docs.python.org/3.10/library/os.html#os.setxattr
proc abort*() = X abort
proc add_dll_directory*(path: string) = X add_dll_directory, path
proc fork*(): int = X fork
proc forkpty*(): tuple[pid, fd: int] = X forkpty
proc kill*(pid, sig: int) = X kill, pid, sig
proc killpg*(pgid, sig: int) = X killpg, pgid, sig
proc nice*(increment: int): int = X nice, increment
proc pidfd_open*(pid: int; flags=0): int = X pidfd_open, pid, flags
proc startfile*(path, operation, arguments, cwd: string) = X startfile, path, operation, arguments, cwd
proc startfile*(path: string) = X startfile, path
proc system*(command: string): int = X system, command
proc times*(): tuple[user, system, children_user, children_system, elapsed: float] = X times
proc wait*(): tuple[pid, exitCode: int] = X wait
proc waitpid*(pid, options: int): tuple[pid, exitCode: int] = X waitpid, pid, options
proc waitstatus_to_exitcode*(status: int): int = X waitstatus_to_exitcode, status
proc WCOREDUMP*(status: int): bool = X WCOREDUMP, status
proc WIFCONTINUED*(status: int): bool = X WIFCONTINUED, status
proc WIFSTOPPED*(status: int): bool = X WIFSTOPPED, status
proc WIFSIGNALED*(status: int): bool = X WIFSIGNALED, status
proc WIFEXITED*(status: int): bool = X WIFEXITED, status
proc WEXITSTATUS*(status: int): int = X WEXITSTATUS, status
proc WSTOPSIG*(status: int): int = X WSTOPSIG, status
proc WTERMSIG*(status: int): int = X WTERMSIG, status
proc sched_get_priority_min*(policy: int): int = X sched_get_priority_min, policy
proc sched_get_priority_max*(policy: int): int = X sched_get_priority_max, policy
proc sched_getscheduler*(pid: int): int = X sched_getscheduler, pid
proc sched_rr_get_interval*(pid: int): float = X sched_rr_get_interval, pid
proc sched_yield*() = X sched_yield
proc sched_setaffinity*(pid: int; mask: seq[int]) = X sched_setaffinity, pid, mask
proc confstr*(name: string): string = X confstr, name
proc cpu_count*(): int = X cpu_count
proc getloadavg*(): array[3, float] = X getloadavg
proc sysconf*(name: string): int = X sysconf, name
proc getrandom*(size: int; flags = 0): seq[byte] = X getrandom, size, flags
proc urandom*(size: int): string = X urandom, size
