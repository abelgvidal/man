# Docker

## delete docker images
	docker rmi $(docker images -q)

## delete docker container 
	docker rm $(docker ps -a -q)

## run a local python script in a container
	docker run --rm  -v /local/dir/:/dir_in_container docker_image python /dir_in_container/example.py

## run mysqlclient
	docker run -it arey/mysql-client -h IP_CLIENT -uhrnewusr -pPASSWORD -D DATABASENAME


## Docker options

	- d flag keeps the container running in the background after the docker run command completes 
	- P flag publishes exposed ports from the container to your local host


