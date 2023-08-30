# dependency jq
# apt-get install -y jq

json=$( cat docker_compose_config.json )
auth_server_scale=$( echo $json | jq -r .auth_server_scale )
front_server_scale=$( echo $json | jq -r .front_server_scale )

docker-compose up --scale auth-server=$auth_server_scale --scale front-server=$front_server_scale