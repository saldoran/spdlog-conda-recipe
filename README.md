# spdlog Conda Recipe

This repository contains a working conda-build recipe for [spdlog](https://github.com/gabime/spdlog) version 1.13.0.

## Overview

This recipe builds `spdlog` as a compiled C++ library using `cmake`, producing a static library (`libspdlog.a`) along with headers and CMake configuration files. The resulting package can be installed into any conda environment.

The build scripts (`build.sh` for macOS/Linux and `bld.bat` for Windows) install the library into `$PREFIX`, making it accessible to other C++ projects via conda.

## Package Features

- Fully compiled via CMake
- Installs headers and static library
- Includes `pkgconfig` and `cmake` integration
- Uses bundled `fmt` by default (can be modified to use external one)
- Cross-platform build support (macOS + Windows)

## Usage

To build the package locally:

### On macOS / Linux

```bash
conda install conda-build cmake make
conda build recipe/
```

### On Windows

Make sure you have Visual Studio Build Tools installed and `cmake` available in PATH.

Then run in Anaconda Prompt or Developer Command Prompt:

```bat
conda install conda-build cmake
conda build recipe/
```

To install locally:

```bash
conda install --use-local spdlog
```

To upload:

```bash
anaconda login
anaconda upload /opt/miniconda3/conda-bld/osx-arm64/spdlog-1.13.0-*.conda
```
### To install from Anaconda.org:

```bash
conda install -c saldoran spdlog
```

## Notes

- Tested on macOS (Apple Silicon).
- `meta.yaml` includes architecture-specific settings via `{{ compiler('cxx') }}`.
- To make `spdlog` use external `fmt`, set `-DSPDLOG_FMT_EXTERNAL=ON` in `build.sh` or `bld.bat`.

## License

[MIT License](https://github.com/gabime/spdlog/blob/v1.x/LICENSE)

---

Maintained by [@saldoran](https://github.com/saldoran)
