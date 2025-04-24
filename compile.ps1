
# This script is used to compile a C++ target using Docker.
# It sets up the environment, builds the Docker image, and runs the container to compile the target.

param (
    [string]$target = "googletest",
    [string]$externallibs = ""
)

docker build --build-arg LIBS=${externallibs} -t cross_docker "$PSScriptRoot\cross_compile\"

docker run --rm -v $PSScriptRoot/${target}:/${target} -e TARGET_CPP=${target} -t cross_docker