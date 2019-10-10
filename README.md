#globus-connect
login to  https://www.globus.org
add endpoint and get setup key
make build
set the appropriate parameters
docker run -d --volume=${VOLUME} -e EPKEY=${EPKEY} -e RESTRICT_PATH=${RESTRICT_PATH} recap/globus-connect



