# Docker SD Web Gui

A Docker container to deploy AUTOMATIC1111 environment for CUDA and ROCm GPUs.

Docker requirements:
---

NVIDIA Container Toolkit: https://nvidia.github.io/libnvidia-container/


Add buildkit to: /etc/docker/daemon.json
---
```
{
  "features": {
    "buildkit" : true
  }
}
```

Build Docker image for CUDA GPUs:
---

```
$ docker build -f Dockerfile.nvidia -t local/sdwebgui:latest .
```

Build Docker image for ROCm GPUs:
---

__Not integrated yet!__

```
$ docker build -f Dockerfile.amd -t local/sdwebgui:latest .
```

Deploy container:
---

```
CUDA:
$ docker compose -d -f docker-compose-nvidia.yaml up

ROCm:
$ docker compose -d -f docker-compose-amd.yaml up
```

Re-run container:
---

```
$ docker start 
```

Add Models:
---

Add your model files to directory __models__. Any output is written to __outputs__. The directories __pip3_cache__ and __repositories__ are used to cache files to accelerate Docker container deployment.

Connect to web gui:
---

URL: http://127.0.0.1:7860
