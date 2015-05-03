# Benchmark-Data

This repository contains test data produced by
[OptACC](https://github.com/OptACC/OptACC) on exhaustive tests for selected
benchmarks.

The data was collected by the following people at Auburn University:

Benchmark Name | Tester
---------------|-------
EPCC Level 1   | Calvin
EPCC Level 2   | Jeff
MiniGhost      | Li
OpenACC-NPB    | Reddy
OpenACC-OpenMP | Sumeet

All kernels compiled on the DMC nodes provided by the Alabama Supercomputer
Authority:

    dmc:~> pgcc --version

    pgcc 14.9-0 64-bit target on x86-64 Linux -tp nehalem
    The Portland Group - PGI Compilers and Tools
    Copyright (c) 2014, NVIDIA CORPORATION.  All rights reserved.

    dmc:~> nvcc --version

    nvcc: NVIDIA (R) Cuda compiler driver
    Copyright (c) 2005-2013 NVIDIA Corporation
    Built on Thu_Mar_13_11:58:58_PDT_2014
    Cuda compilation tools, release 6.0, V6.0.1

Specifications of Kepler GPUs on TACC Stampede:

    Device 0: "Tesla K20m"
      CUDA Driver Version / Runtime Version          6.0 / 5.5
      CUDA Capability Major/Minor version number:    3.5
      Total amount of global memory:                 4800 MBytes (5032706048 bytes)
      (13) Multiprocessors, (192) CUDA Cores/MP:     2496 CUDA Cores
      GPU Clock rate:                                706 MHz (0.71 GHz)
      Memory Clock rate:                             2600 Mhz
      Memory Bus Width:                              320-bit
      L2 Cache Size:                                 1310720 bytes
      Maximum Texture Dimension Size (x,y,z)         1D=(65536), 2D=(65536, 65536), 3D=(4096, 4096, 4096)
      Maximum Layered 1D Texture Size, (num) layers  1D=(16384), 2048 layers
      Maximum Layered 2D Texture Size, (num) layers  2D=(16384, 16384), 2048 layers
      Total amount of constant memory:               65536 bytes
      Total amount of shared memory per block:       49152 bytes
      Total number of registers available per block: 65536
      Warp size:                                     32
      Maximum number of threads per multiprocessor:  2048
      Maximum number of threads per block:           1024
      Max dimension size of a thread block (x,y,z): (1024, 1024, 64)
      Max dimension size of a grid size    (x,y,z): (2147483647, 65535, 65535)
      Maximum memory pitch:                          2147483647 bytes
      Texture alignment:                             512 bytes
      Concurrent copy and kernel execution:          Yes with 2 copy engine(s)
      Run time limit on kernels:                     No
      Integrated GPU sharing Host Memory:            No
      Support host page-locked memory mapping:       Yes
      Alignment requirement for Surfaces:            Yes
      Device has ECC support:                        Enabled
      Device supports Unified Addressing (UVA):      Yes
      Device PCI Bus ID / PCI location ID:           3 / 0
      Compute Mode:
         < Default (multiple host threads can use ::cudaSetDevice() with device simultaneously) >

Specifications of Kepler GPUs on DMC:

    Device 0: "Tesla K20m"
      CUDA Driver Version / Runtime Version          6.0 / 6.0
      CUDA Capability Major/Minor version number:    3.5
      Total amount of global memory:                 4800 MBytes (5032706048 bytes)
      (13) Multiprocessors, (192) CUDA Cores/MP:     2496 CUDA Cores
      GPU Clock rate:                                706 MHz (0.71 GHz)
      Memory Clock rate:                             2600 Mhz
      Memory Bus Width:                              320-bit
      L2 Cache Size:                                 1310720 bytes
      Maximum Texture Dimension Size (x,y,z)         1D=(65536), 2D=(65536, 65536), 3D=(4096, 4096, 4096)
      Maximum Layered 1D Texture Size, (num) layers  1D=(16384), 2048 layers
      Maximum Layered 2D Texture Size, (num) layers  2D=(16384, 16384), 2048 layers
      Total amount of constant memory:               65536 bytes
      Total amount of shared memory per block:       49152 bytes
      Total number of registers available per block: 65536
      Warp size:                                     32
      Maximum number of threads per multiprocessor:  2048
      Maximum number of threads per block:           1024
      Max dimension size of a thread block (x,y,z): (1024, 1024, 64)
      Max dimension size of a grid size    (x,y,z): (2147483647, 65535, 65535)
      Maximum memory pitch:                          2147483647 bytes
      Texture alignment:                             512 bytes
      Concurrent copy and kernel execution:          Yes with 2 copy engine(s)
      Run time limit on kernels:                     No
      Integrated GPU sharing Host Memory:            No
      Support host page-locked memory mapping:       Yes
      Alignment requirement for Surfaces:            Yes
      Device has ECC support:                        Enabled
      Device supports Unified Addressing (UVA):      Yes
      Device PCI Bus ID / PCI location ID:           3 / 0
      Compute Mode:
         < Exclusive Process (many threads in one process is able to use ::cudaSetDevice() with this device) >

Specifications of Fermi GPUs on DMC:

    Device 0: "Tesla M2070"
      CUDA Driver Version / Runtime Version          6.0 / 6.0
      CUDA Capability Major/Minor version number:    2.0
      Total amount of global memory:                 5375 MBytes (5636554752 bytes)
      (14) Multiprocessors, ( 32) CUDA Cores/MP:     448 CUDA Cores
      GPU Clock rate:                                1147 MHz (1.15 GHz)
      Memory Clock rate:                             1566 Mhz
      Memory Bus Width:                              384-bit
      L2 Cache Size:                                 786432 bytes
      Maximum Texture Dimension Size (x,y,z)         1D=(65536), 2D=(65536, 65535), 3D=(2048, 2048, 2048)
      Maximum Layered 1D Texture Size, (num) layers  1D=(16384), 2048 layers
      Maximum Layered 2D Texture Size, (num) layers  2D=(16384, 16384), 2048 layers
      Total amount of constant memory:               65536 bytes
      Total amount of shared memory per block:       49152 bytes
      Total number of registers available per block: 32768
      Warp size:                                     32
      Maximum number of threads per multiprocessor:  1536
      Maximum number of threads per block:           1024
      Max dimension size of a thread block (x,y,z): (1024, 1024, 64)
      Max dimension size of a grid size    (x,y,z): (65535, 65535, 65535)
      Maximum memory pitch:                          2147483647 bytes
      Texture alignment:                             512 bytes
      Concurrent copy and kernel execution:          Yes with 2 copy engine(s)
      Run time limit on kernels:                     No
      Integrated GPU sharing Host Memory:            No
      Support host page-locked memory mapping:       Yes
      Alignment requirement for Surfaces:            Yes
      Device has ECC support:                        Enabled
      Device supports Unified Addressing (UVA):      Yes
      Device PCI Bus ID / PCI location ID:           6 / 0
      Compute Mode:
         < Exclusive Process (many threads in one process is able to use ::cudaSetDevice() with this device) >
