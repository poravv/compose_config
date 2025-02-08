

sudo docker network create loki-net

sudo docker plugin install grafana/loki-docker-driver:latest --alias loki --grant-all-permissions

sudo docker compose -f docker-compose.yml up -d

{
    "log-driver": "loki",
    "log-opts": 
    {
      "loki-url": "http://localhost:3100/loki/api/v1/push",
      "loki-batch-size": "400"
    }
}

sudo systemctl restart docker