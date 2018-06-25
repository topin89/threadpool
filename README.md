# ThreadPool
Modern C++ Thread Pool

# Available features
* Fixed size pool.
* Variable size pool.
* Fetch result of task run in the pool with `future`.
* Fetch number of waiting/working workers.

# Install
To install, run the following commands
```bash
$ mkdir build
$ cd build
$ make install
```

# Doc
Documentation can be found [here](https://reyreaud-l.github.io/threadpool/)

To build it, enable option `BUILD_DOC` with cmake
```bash
$ cmake -DBUILD_DOC=ON ..
$ make doc
```

# Uninstall
To uninstall, run the following command in build directory.
```bash
$ make uninstall
```

# Tests
To tests, enable option `BUILD_TESTS` or build in `DEBUG` mode with either:
```bash
$ cmake -DBUILD_TESTS=ON ..
or
$ cmake -DCMAKE_BUILD_TYPE=Debug ..
```

Then the `check` target becomes available and you can build it running
```bash
$ make check
```
