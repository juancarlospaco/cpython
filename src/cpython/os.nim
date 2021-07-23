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
template `:=`(simbol; tipe: static[typedesc]) =
  let simbol* {.inject.}: tipe = nimpy.pyImport("os").simbol.to(tipe)

name                  := string
curdir                := string
pardir                := string
sep                   := string
altsep                := string
extsep                := string
pathsep               := string
defpath               := string
linesep               := string
devnull               := string
PRIO_PROCESS          := int
PRIO_PGRP             := int
PRIO_USER             := int
F_LOCK                := int
F_TLOCK               := int
F_ULOCK               := int
F_TEST                := int
SEEK_SET              := int
SEEK_CUR              := int
SEEK_END              := int
O_RDONLY              := int
O_WRONLY              := int
O_RDWR                := int
O_APPEND              := int
O_CREAT               := int
O_EXCL                := int
O_TRUNC               := int
O_DSYNC               := int
O_RSYNC               := int
O_SYNC                := int
O_NDELAY              := int
O_NONBLOCK            := int
O_NOCTTY              := int
O_CLOEXEC             := int
O_BINARY              := int
O_NOINHERIT           := int
O_SHORT_LIVED         := int
O_TEMPORARY           := int
O_RANDOM              := int
O_SEQUENTIAL          := int
O_TEXT                := int
O_EVTONLY             := int
O_FSYNC               := int
O_SYMLINK             := int
O_NOFOLLOW_ANY        := int
O_ASYNC               := int
O_DIRECT              := int
O_DIRECTORY           := int
O_NOFOLLOW            := int
O_NOATIME             := int
O_PATH                := int
O_TMPFILE             := int
O_SHLOCK              := int
O_EXLOCK              := int
POSIX_FADV_NORMAL     := int
POSIX_FADV_SEQUENTIAL := int
POSIX_FADV_RANDOM     := int
POSIX_FADV_NOREUSE    := int
POSIX_FADV_WILLNEED   := int
POSIX_FADV_DONTNEED   := int
RWF_NOWAIT            := int
RWF_HIPRI             := int
RWF_DSYNC             := int
RWF_SYNC              := int
RWF_APPEND            := int
SPLICE_F_MOVE         := int
SPLICE_F_NONBLOCK     := int
SPLICE_F_MORE         := int
F_OK                  := int
R_OK                  := int
W_OK                  := int
X_OK                  := int
MFD_CLOEXEC           := int
MFD_ALLOW_SEALING     := int
MFD_HUGETLB           := int
MFD_HUGE_SHIFT        := int
MFD_HUGE_MASK         := int
MFD_HUGE_64KB         := int
MFD_HUGE_512KB        := int
MFD_HUGE_1MB          := int
MFD_HUGE_2MB          := int
MFD_HUGE_8MB          := int
MFD_HUGE_16MB         := int
MFD_HUGE_32MB         := int
MFD_HUGE_256MB        := int
MFD_HUGE_512MB        := int
MFD_HUGE_1GB          := int
MFD_HUGE_2GB          := int
MFD_HUGE_16GB         := int
EFD_CLOEXEC           := int
EFD_NONBLOCK          := int
EFD_SEMAPHORE         := int
XATTR_SIZE_MAX        := int
XATTR_CREATE          := int
XATTR_REPLACE         := int
EX_OK                 := int
EX_USAGE              := int
EX_DATAERR            := int
EX_NOINPUT            := int
EX_NOUSER             := int
EX_NOHOST             := int
EX_UNAVAILABLE        := int
EX_SOFTWARE           := int
EX_OSERR              := int
EX_OSFILE             := int
EX_CANTCREAT          := int
EX_IOERR              := int
EX_TEMPFAIL           := int
EX_PROTOCOL           := int
EX_NOPERM             := int
EX_CONFIG             := int
EX_NOTFOUND           := int
POSIX_SPAWN_OPEN      := int
POSIX_SPAWN_CLOSE     := int
POSIX_SPAWN_DUP2      := int
P_NOWAIT              := int
P_NOWAITO             := int
P_WAIT                := int
P_DETACH              := int
P_OVERLAY             := int
P_PID                 := int
P_PGID                := int
P_ALL                 := int
P_PIDFD               := int
WEXITED               := int
WSTOPPED              := int
WNOWAIT               := int
CLD_EXITED            := int
CLD_KILLED            := int
CLD_DUMPED            := int
CLD_TRAPPED           := int
CLD_STOPPED           := int
CLD_CONTINUED         := int
WNOHANG               := int
WCONTINUED            := int
WUNTRACED             := int
SCHED_OTHER           := int
SCHED_BATCH           := int
SCHED_IDLE            := int
SCHED_SPORADIC        := int
SCHED_FIFO            := int
SCHED_RR              := int
SCHED_RESET_ON_FORK   := int
RTLD_LAZY             := int
RTLD_NOW              := int
RTLD_GLOBAL           := int
RTLD_LOCAL            := int
RTLD_NODELETE         := int
RTLD_NOLOAD           := int
RTLD_DEEPBIND         := int
GRND_NONBLOCK         := int
GRND_RANDOM           := int

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
proc fsync*(fd: int) = X fsync, fd
proc ftruncate*(fd, len: int) = X ftruncate, fd, len
proc get_blocking*(fd: int): bool = X get_blocking, fd
proc isatty*(fd: int): bool = X isatty, fd
proc lseek*(fd, pos, how: int): int = X lseek, fd, pos, how
proc openpty*(): tuple[master, slave: int] = X openpty
proc pipe*(): tuple[read, write: int] = X pipe
proc pipe2*(flags: int): tuple[read, write: int] = X pipe2, flags
proc posix_fallocate*(fd, offset, len: int) = X posix_fallocate, fd, offset, len
proc posix_fadvise*(fd, offset, len, advice: int) = X posix_fadvise, fd, offset, len, advice
proc pread*(fd, n, offset: int): string = X pread, fd, n, offset
proc pwrite*(fd: int; str: string; offset: int): int = X pwrite, fd, str, offset
proc read*(fd, n: int): string = X read, fd, n
proc sendfile*(out_fd, in_fd, offset, count: int): int = X sendfile
proc splice*(src, dst, count: int) = X splice, src, dst, count
proc tcgetpgrp*(fd: int): int = X tcgetpgrp, fd
proc tcsetpgrp*(fd, pg: int) = X tcsetpgrp, fd, pg
proc ttyname*(fd: int): string = X ttyname, fd
proc write*(fd: int; str: string): int = X write, fd, str
proc get_terminal_size*(fd: int) = X get_terminal_size, fd
proc get_inheritable*(fd: int): bool = X get_inheritable, fd
proc set_inheritable*(fd: int; inheritable: bool) = X set_inheritable, fd, inheritable
proc access*(path: string; mode: int): bool = X access, path
proc access*(path: string; mode: int; effective_ids, follow_symlinks: bool): bool = X access, path, mode, effective_ids, follow_symlinks
proc chflags*(path: string; flags: int) = X chflags, path, flags
proc chflags*(path: string; flags: int; follow_symlinks: bool) = X chflags, path, flags, follow_symlinks
proc chmod*(path: string; mode: int) = X chmod, path, mode
proc chmod*(path: string; mode: int; follow_symlinks: bool) = X chmod, path, mode, follow_symlinks
proc chown*(path: string; uid, gid: int) = X chown, path, uid, gid
proc chown*(path: string; uid, gid: int; follow_symlinks: bool) = X chown, path, uid, gid, follow_symlinks
proc chroot*(path: string) = X chroot, path
proc fchdir*(fd: int) = X fchdir, fd
proc getcwdb*(): string = X getcwdb
proc lchflags*(path: string; flags: int) = X lchflags, path, flags
proc lchmod*(path: string; mode: int) = X lchmod, path, mode
proc lchown*(path: string; uid, gid: int) = X lchown, path, uid, gid
proc link*(src, dst: string) = X link, src, dst
proc link*(src, dst: string; follow_symlinks: bool) = X link, src, dst, follow_symlinks
proc listdir*(path = "."): seq[string] = X listdir, path
proc mkdir*(path: string; mode = 511) = X mkdir, path, mode
proc makedirs*(name: string; mode=511, exist_ok=false) = X makedirs, name, mode, exist_ok
proc mkfifo*(path: string; mode=438) = X mkfifo, path, mode
proc mknod*(path: string, mode=384, device=0) = X mknod, path, mode, device
proc major*(device: int): int = X major, device
proc minor*(device: int): int = X minor, device
proc makedev*(major, minor: int) = X makedev, major, minor
proc readlink*(path: string): string = X readlink, path
proc remove*(path: string) = X remove, path
proc removedirs*(path: string) = X removedirs, path
proc rename*(src, dst: string) = X rename, src, dst
proc renames*(olds, news: string) = X renames, olds, news
proc replace*(src, dst: string) = X replace, src, dst
proc rmdir*(path: string) = X rmdir, path
proc symlink*(src, dst: string; target_is_directory=false) = X symlink, src, dst, target_is_directory
proc sync*() = X sync
proc truncate*(path: string; len: int) = X truncate, path, len
proc unlink*(path: string) = X unlink, path
proc utime*(path: string) = X utime, path
proc memfd_create*(path: string): int = X memfd_create, path
proc eventfd*(initval: int): int = X eventfd, initval
proc eventfd_write*(fd: int; value: string) = X eventfd_write, fd, value
proc eventfd_read*(fd: int): int = X eventfd_read, fd
proc getxattr*(path, attribute: string; follow_symlinks=true): string = X getxattr, path, attribute, follow_symlinks
proc listxattr*(path: string; follow_symlinks=true): seq[string] = X listxattr, path, follow_symlinks
proc removexattr*(path, attribute: string; follow_symlinks=true) = X removexattr, path, attribute, follow_symlinks
proc setxattr*(path, attribute, value: string; flags=0; follow_symlinks=true) = X setxattr, path, attribute, value, flags, follow_symlinks
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
