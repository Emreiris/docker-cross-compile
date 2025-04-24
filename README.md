# C++ Cross-Compilation with Docker

This project demonstrates how to set up a Docker-based environment for cross-compiling C++ applications. Cross-compilation allows developers to build software on one platform (host) that can run on a different platform (target). By leveraging Docker, this project ensures a consistent and reproducible build environment, eliminating the need to manually configure toolchains or dependencies on the host system.

The provided setup is particularly useful for scenarios where you need to target multiple architectures, such as ARM or x86, without requiring dedicated hardware or complex configurations. With Docker, the entire build process is containerized, ensuring that the environment remains isolated and free from conflicts with the host system.

This repository includes all the necessary scripts, Dockerfiles, and example code to help you get started quickly. Whether you're a beginner or an experienced developer, this project simplifies the process of cross-compiling C++ applications for various platforms.

## Features

- Cross-compilation for different architectures.
- Docker-based environment for consistent builds.
- Example C++ application to test the setup.

## Prerequisites

- Docker installed on your system.
- Basic knowledge of Docker and C++.

## Getting Started

1. Clone the repository and initialize submodules:
    ```bash
    git clone https://github.com/Emreiris/docker-cross-compile.git 
    cd Cpp_CrossCompile
    git submodule update --init --recursive
    ```
Alternatively you can run;
    ```bash
    git clone --recursive https://github.com/Emreiris/docker-cross-compile.git 
    ``` 
so that submodules shall be downloaded within the repository.

2. Use the provided `compile.ps1` script to build the project:
    - On Windows:
        ```powershell
        .\compile.ps1
        ```
    - On other platforms, you may need to adapt the script or use equivalent Docker commands.

3. The compiled binaries will be available in the `<target>/build` directory.

## Project Structure

- `cross_compile/Dockerfile`: Defines the Docker image for cross-compilation.
- `cross_compile/entrypoint.sh`: Handles the C++ application cross-compilation process
- `compile.ps1`: Powershell script to handle docker building and run operations.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Acknowledgments

Special thanks to the open-source community for providing tools and resources for cross-compilation.
