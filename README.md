# rdsetroot

Port from OpenBSD [`rdsetroot(8)`](https://man.openbsd.org/rdsetroot.8)
written in C to POSIX shell with
[`readelf(1)`](https://man7.org/linux/man-pages/man1/readelf.1.html)
as a dependency.
This makes it possible to patch `bsd.rd` on non-OpenBSD systems,
e.g. to orchestrate the automatic installation of OpenBSD servers with
[`autoinstall(8)`](https://man.openbsd.org/autoinstall.8).

## Usage
```
rdsetroot -s kernel
rdsetroot [-dx] kernel [disk.fs]
```

## Caveats

When the `disk.fs is` read from standard input, a maximum of `rd_root_sized`
bytes will be written to the kernel. It it is not checked if there would have
been more bytes up to an `EOF` symbol.

Some of the debug messages differ from the original C program or do not apply.

## License

As the original
[`rdsetroot.c`](https://github.com/openbsd/src/blob/master/usr.sbin/rdsetroot/rdsetroot.c),
this port is licensed under the terms of the
[ISC license](https://spdx.org/licenses/ISC.html).
