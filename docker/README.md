# Docker

- delete docker images ```docker rmi $(docker images -q)```
- delete all docker container: ```docker rm $(docker ps -a -q)```
- run a local script in a container: ```docker run --rm  -v /local/dir/:/dir_in_container docker_image python /dir_in_container/example.py```
- run mysqlclient: ```docker run -it arey/mysql-client -h IP_CLIENT -uhrnewusr -pPASSWORD -D DATABASENAME```
- list all exited containers: ```docker ps -aq -f status=exited```
- stop all exited containers: ```docker ps -aq --no-trunc | xargs docker rm```
- remove all dangling/untagged images: ```docker images -q --filter dangling=true | xargs docker rmi```
- remove containers created *after* a specific container: ```docker ps --since a1bz3768ez7g -q | xargs docker rm```
- remove containers created *before* a specific container: ```docker ps --before a1bz3768ez7g -q | xargs docker rm```
- remove docker images older than one month: `docker image ls --format '{{ json . }}' | jq -r -s '.[] | select(now - (.CreatedAt | strptime("%Y-%m-%d %H:%M:%S %Z") | mktime) > 3600 * 24 * 30) | .ID' | xargs -r docker image rm`

## Options

- `d` flag keeps the container running in the background after the docker run command completes 
- `P` flag publishes exposed ports from the container to your local host

## For mac

localhost from container is  `docker.for.mac.localhost`
