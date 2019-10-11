# globus-connect

login to  https://www.globus.org

add endpoint and get setup key

make build

set the appropriate parameters

docker run -d --net=host --volume=${VOLUME} -e EPKEY=${EPKEY} -e RESTRICT_PATH=${RESTRICT_PATH} recap/globus-connect

## ports

TCP 2223
TCP 50000 - 51000
UDP 32768-65535 (ephemeral)
UDP 19302



