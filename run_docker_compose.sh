# dependency jq
# apt-get install -y jq
if [ $# -ne 1 ]; then
 echo "Usage: $0 [start,stop]"
 exit -1
fi

if [ $1 == "start" ]; then
    json=$( cat docker_compose_config.json )

    front_server_scale=$( echo $json | jq -r .front_server_scale )
    api_server_scale=$( echo $json | jq -r .api_server_scale )
    auth_server_scale=$( echo $json | jq -r .auth_server_scale )
    goods_server_scale=$( echo $json | jq -r .goods_server_scale )
    alarm_server_scale=$( echo $json | jq -r .alarm_server_scale )

    docker-compose pull
    docker-compose up -d --scale front-server=$front_server_scale --scale api-server=$api_server_scale --scale auth-server=$auth_server_scale --scale goods-server=$goods_server_scale --scale alarm-server=$alarm_server_scale --remove-orphans
elif [ $1 == "stop" ]; then
    docker-compose down --rmi all
fi