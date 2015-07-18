all: status

deploy:
	fleetctl --tunnel ${COREOS_IP} destroy mysql.service
	fleetctl --tunnel ${COREOS_IP} destroy wordpress.service
	fleetctl --tunnel ${COREOS_IP} load mysql.service
	fleetctl --tunnel ${COREOS_IP} load wordpress.service
	fleetctl --tunnel ${COREOS_IP} start wordpress.service

status:
	fleetctl --tunnel ${COREOS_IP} list-units
