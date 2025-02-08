Pasos para ejecutar runner con gitlab

```



Please enter the GitLab instance URL (e.g. https://gitlab.com/):
http://gitlab.mindtechpy.net

Please enter the registration token:
<tu_token_de_registro>

Please enter a description for the runner:
[optional] my-docker-runner
Please enter the tags associated with the runner (comma-separated):
[optional] docker,linux
Please enter the executor: docker+machine, kubernetes, docker-autoscaler, instance, custom, shell, ssh, parallels, virtualbox, docker, docker-windows:

docker

Please enter the default Docker image (e.g. ruby:2.6):

alpine:latest

```

## Instalar nano
```
apt-get update && apt-get install -y nano
```

```
nano /etc/gitlab-runner/config.toml

```


```
[[runners]]
  name = "my-runner"
  url = "https://gitlab.com/"
  token = "YOUR_RUNNER_TOKEN"
  executor = "docker"
  [runners.custom_build_dir]
  [runners.docker]
    tls_verify = false
    image = "docker:latest"
    privileged = true
    disable_entrypoint_overwrite = false
    oom_kill_disable = false
    disable_cache = false
    volumes = ["/cache", "/var/run/docker.sock:/var/run/docker.sock"]
    shm_size = 0
```