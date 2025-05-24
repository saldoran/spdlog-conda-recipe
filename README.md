# spdlog Conda Recipe

This is a conda-build recipe for [spdlog](https://github.com/gabime/spdlog), version 1.13.0.

It builds the C++ logging library using `cmake` and installs it into a conda environment.

## Build Instructions

```bash
conda install conda-build cmake make
conda build recipe/