## * https://docs.python.org/3.10/library/os.html
import nimpy
{.push used.}
template X(simbol): auto =
  when declared result: pyImport("os").simbol().to(type(result)) else: discard pyImport("os").simbol()
template X(simbol; a): auto =
  when declared result: pyImport("os").simbol(a).to(type(result)) else: discard pyImport("os").simbol(a)
template X(simbol; a, b): auto =
  when declared result: pyImport("os").simbol(a, b).to(type(result)) else: discard pyImport("os").simbol(a, b)
template X(simbol; a, b, c): auto =
  when declared result: pyImport("os").simbol(a, b, c).to(type(result)) else: discard pyImport("os").simbol(a, b, c)
template X(simbol; a, b, c, d): auto =
  when declared result: pyImport("os").simbol(a, b, c, d).to(type(result)) else: discard pyImport("os").simbol(a, b, c, d)
template X(simbol; a, b, c, d, e): auto =
  when declared result: pyImport("os").simbol(a, b, c, d, e).to(type(result)) else: discard pyImport("os").simbol(a, b, c, d, e)
template X(simbol; a, b, c, d, e, f): auto =
  when declared result: pyImport("os").simbol(a, b, c, d, e, f).to(type(result)) else: discard pyImport("os").simbol(a, b, c, d, e, f)
{.pop.}
proc getcwd*(): string = X getcwd
proc getpgid*(pid: int): int = X getpgid, pid  ## https://docs.python.org/3.10/library/os.html#os.getpgid
proc chdir*(path: string) = X chdir, path
proc fspath*(path: string): string = X fspath, path ## https://docs.python.org/3.10/library/os.html#os.fspath
proc get_exec_path*(): seq[string] = X get_exec_path  ## https://docs.python.org/3.10/library/os.html#os.get_exec_path
proc ctermid*(): string = X ctermid       ## https://docs.python.org/3.10/library/os.html#os.ctermid
proc getegid*(): int = X getegid          ## https://docs.python.org/3.10/library/os.html#os.getegid
proc geteuid*(): int = X geteuid          ## https://docs.python.org/3.10/library/os.html#os.geteuid
proc getgid*(): int = X getgid            ## https://docs.python.org/3.10/library/os.html#os.getgid
proc getgroups*(): seq[int] = X getgroups ## https://docs.python.org/3.10/library/os.html#os.getgroups
proc getlogin*(): string = X getlogin     ## https://docs.python.org/3.10/library/os.html#os.getlogin
proc getpgrp*(): int = X getpgrp          ## https://docs.python.org/3.10/library/os.html#os.getpgrp
proc getpid*(): int = X getpid            ## https://docs.python.org/3.10/library/os.html#os.getpid
proc getenv*(key: string; default = ""): string = X getenv, key, default    ## https://docs.python.org/3.10/library/os.html#os.getenv
proc getenvb*(key: string; default = ""): string = X getenvb, key, default  ## https://docs.python.org/3.10/library/os.html#os.getenvb
proc getgrouplist*(user: string; group: int): seq[int] = X getgrouplist, user, group  ## https://docs.python.org/3.10/library/os.html#os.getgrouplist
proc getppid*(): int = X getppid  ## https://docs.python.org/3.10/library/os.html#os.getppid
proc getpriority*(which: string; who: int): int = X getpriority, which, who  ## https://docs.python.org/3.10/library/os.html#os.getpriority
proc getresuid*(): tuple[ruid: int, euid: int, suid: int] = X getresuid  ## https://docs.python.org/3.10/library/os.html#os.getresuid
proc getresgid*(): tuple[rgid: int, egid: int, sgid: int] = X getresgid  ## https://docs.python.org/3.10/library/os.html#os.getresgid
proc getuid*(): int = X getuid  ## https://docs.python.org/3.10/library/os.html#os.getuid
proc initgroups*(username: string; gid: int): seq[int] = X initgroups, username, gid  ## https://docs.python.org/3.10/library/os.html#os.initgroups
proc putenv*(key, value: string) = X putenv, key, value  ## https://docs.python.org/3.10/library/os.html#os.putenv
proc setegid*(egid: int) = X setegid, egid  ## https://docs.python.org/3.10/library/os.html#os.setegid
proc seteuid*(euid: int) = X seteuid, euid  ## https://docs.python.org/3.10/library/os.html#os.seteuid
proc setgid*(gid: int) = X setgid, gid  ## https://docs.python.org/3.10/library/os.html#os.setgid
proc setgroups*(groups: seq[int]) = X setgroups, groups  ## https://docs.python.org/3.10/library/os.html#os.setgroups
proc setpgrp*() = X setpgrp  ## https://docs.python.org/3.10/library/os.html#os.setpgrp
proc setpgid*(pid, pgrp: int) = X setpgid, pid, pgrp ## https://docs.python.org/3.10/library/os.html#os.setpgid
proc setpriority*(which, who: int; priority: -20..19 = 0) = X setpriority, which, who, priority  ## https://docs.python.org/3.10/library/os.html#os.setpriority
proc setregid*(rgid, egid: int) = X setregid  ## https://docs.python.org/3.10/library/os.html#os.setregid
proc setresgid*(rgid, egid, sgid: int) = X setresgid, rgid, egid, sgid  ## https://docs.python.org/3.10/library/os.html#os.setresgid
proc setresuid*(ruid, euid, suid: int) = X setresuid, ruid, euid, suid  ## https://docs.python.org/3.10/library/os.html#os.setresuid
proc setreuid*(ruid, euid: int) = X setreuid, ruid, euid  ## https://docs.python.org/3.10/library/os.html#os.setreuid
proc getsid*(pid: int): int = X getsid, pid  ## https://docs.python.org/3.10/library/os.html#os.getsid
proc setsid*() = X setsid  ## https://docs.python.org/3.10/library/os.html#os.setsid
proc setuid*(uid: int) = X setuid, uid  ## https://docs.python.org/3.10/library/os.html#os.setuid
proc strerror*(errorCode: int): string = X strerror, errorCode  ## https://docs.python.org/3.10/library/os.html#os.strerror
proc umask*(mask: int): int = X umask, mask  ## https://docs.python.org/3.10/library/os.html#os.umask
proc uname*(): tuple[sysname, nodename, release, version, machine: string] = X uname  ## https://docs.python.org/3.10/library/os.html#os.uname
proc unsetenv*(key: string) = X unsetenv, key  ## https://docs.python.org/3.10/library/os.html#os.unsetenv
proc close*(fileDescriptor: int) = X close, fileDescriptor  ## https://docs.python.org/3.10/library/os.html#os.close
proc closerange*(fromFileDescriptor, toFileDescriptor: int) = X closerange, fromFileDescriptor, toFileDescriptor  ## https://docs.python.org/3.10/library/os.html#os.closerange
proc copy_file_range*(src, dst, count: int): int = X copy_file_range, src, dst, count  ## https://docs.python.org/3.10/library/os.html#os.copy_file_range
proc device_encoding*(fd: int): string = X device_encoding, fd ## https://docs.python.org/3.10/library/os.html#os.device_encoding
proc fchmod*(fd, mode: int) = X fchmod, fd, mode ## https://docs.python.org/3.10/library/os.html#os.fchmod
proc fchown*(fd, uid, gid: int) = X fchown, fd, uid, gid ## https://docs.python.org/3.10/library/os.html#os.fchown
proc fdatasync*(fd: int) = X fdatasync, fd ## https://docs.python.org/3.10/library/os.html#os.fdatasync
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
proc replace*(src, dst: string) = X replace, src, dst  ## https://docs.python.org/3.10/library/os.html#os.replace
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
proc abort*() = X abort ## https://docs.python.org/3.10/library/os.html#os.abort
proc add_dll_directory*(path: string) = X add_dll_directory, path ## https://docs.python.org/3.10/library/os.html#os.add_dll_directory
proc fork*(): int = X fork ## https://docs.python.org/3.10/library/os.html#os.fork
proc forkpty*(): tuple[pid, fd: int] = X forkpty  ## https://docs.python.org/3.10/library/os.html#os.forkpty
proc kill*(pid, sig: int) = X kill, pid, sig  ## https://docs.python.org/3.10/library/os.html#os.kill
proc killpg*(pgid, sig: int) = X killpg, pgid, sig  ## https://docs.python.org/3.10/library/os.html#os.killpg
proc nice*(increment: int): int = X nice, increment ## https://docs.python.org/3.10/library/os.html#os.nice
proc pidfd_open*(pid: int; flags=0): int = X pidfd_open, pid, flags  ## https://docs.python.org/3.10/library/os.html#os.pidfd_open
proc startfile*(path, operation, arguments, cwd: string) = X startfile, path, operation, arguments, cwd  ## https://docs.python.org/3.10/library/os.html#os.startfile
proc startfile*(path: string) = X startfile, path  ## https://docs.python.org/3.10/library/os.html#os.startfile
proc system*(command: string): int = X system, command  ## https://docs.python.org/3.10/library/os.html#os.system
proc times*(): tuple[user, system, children_user, children_system, elapsed: float] = X times  ## https://docs.python.org/3.10/library/os.html#os.times
proc wait*(): tuple[pid, exitCode: int] = X wait ## https://docs.python.org/3.10/library/os.html#os.wait
proc waitpid*(pid, options: int): tuple[pid, exitCode: int] = X waitpid, pid, options  ## https://docs.python.org/3.10/library/os.html#os.waitpid
proc waitstatus_to_exitcode*(status: int): int = X waitstatus_to_exitcode, status  ## https://docs.python.org/3.10/library/os.html#os.waitstatus_to_exitcode
proc WCOREDUMP*(status: int): bool = X WCOREDUMP, status       ## https://docs.python.org/3.10/library/os.html#os.WCOREDUMP
proc WIFCONTINUED*(status: int): bool = X WIFCONTINUED, status ## https://docs.python.org/3.10/library/os.html#os.WIFCONTINUED
proc WIFSTOPPED*(status: int): bool = X WIFSTOPPED, status     ## https://docs.python.org/3.10/library/os.html#os.WIFSTOPPED
proc WIFSIGNALED*(status: int): bool = X WIFSIGNALED, status   ## https://docs.python.org/3.10/library/os.html#os.WIFSIGNALED
proc WIFEXITED*(status: int): bool = X WIFEXITED, status       ## https://docs.python.org/3.10/library/os.html#os.WIFEXITED
proc WEXITSTATUS*(status: int): int = X WEXITSTATUS, status    ## https://docs.python.org/3.10/library/os.html#os.WEXITSTATUS
proc WSTOPSIG*(status: int): int = X WSTOPSIG, status          ## https://docs.python.org/3.10/library/os.html#os.WSTOPSIG
proc WTERMSIG*(status: int): int = X WTERMSIG, status          ## https://docs.python.org/3.10/library/os.html#os.WTERMSIG
proc sched_get_priority_min*(policy: int): int = X sched_get_priority_min, policy  ## https://docs.python.org/3.10/library/os.html#os.sched_get_priority_min
proc sched_get_priority_max*(policy: int): int = X sched_get_priority_max, policy  ## https://docs.python.org/3.10/library/os.html#os.sched_get_priority_max
proc sched_getscheduler*(pid: int): int = X sched_getscheduler, pid  ## https://docs.python.org/3.10/library/os.html#os.sched_getscheduler
proc sched_rr_get_interval*(pid: int): float = X sched_rr_get_interval, pid ## https://docs.python.org/3.10/library/os.html#os.sched_rr_get_interval
proc sched_yield*() = X sched_yield ## https://docs.python.org/3.10/library/os.html#os.sched_yield
proc sched_setaffinity*(pid: int; mask: seq[int]) = X sched_setaffinity, pid, mask  ## https://docs.python.org/3.10/library/os.html#os.sched_setaffinity
proc confstr*(name: string): string = X confstr, name  ## https://docs.python.org/3.10/library/os.html#os.confstr
proc cpu_count*(): int = X cpu_count ## https://docs.python.org/3.10/library/os.html#os.cpu_count
proc getloadavg*(): array[3, float] = X getloadavg ## https://docs.python.org/3.10/library/os.html#os.getloadavg
proc sysconf*(name: string): int = X sysconf, name  ## https://docs.python.org/3.10/library/os.html#os.sysconf
proc getrandom*(size: int; flags = 0): seq[byte] = X getrandom, size, flags ## https://docs.python.org/3.10/library/os.html#os.getrandom
proc urandom*(size: int): string = X urandom, size ## https://docs.python.org/3.10/library/os.html#os.urandom


discard """
proc *() = X ## https://docs.python.org/3.10/library/os.html#os.
"""







