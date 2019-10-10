#!/bin/bash
if [ -z ${EPKEY+x} ]; 
then 
	echo "EPKEY is not provided. Refer to README"; 
else 
	if [ -z ${RESTRICT_PATH+x} ]; 
	then
		echo "RESTRICT_PATH not set!. Set path to serve data.";
	else
		echo "Registering server with ${EPKEY}"
		globusconnectpersonal -setup ${EPKEY}
		echo "Starting globus server..."
		globusconnect -start -restrict-paths ${RESTRICT_PATH}
	fi
fi

