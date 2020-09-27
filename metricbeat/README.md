Metricbeat
=============

[![](https://github.com/russmckendrick/docker/workflows/metricbeat/badge.svg)](https://github.com/users/russmckendrick/packages/container/package/metricbeat)

A Docker build which runs an Alpine Linux container with metricbeat

```
docker run -d --name metricbeat \
  --net=host \
  --volume=/proc:/hostfs/proc:ro \
  --volume=/sys/fs/cgroup:/hostfs/sys/fs/cgroup:ro \
  --volume=/:/hostfs:ro \
  --network=elk
  ghcr.io/russmckendrick/metricbeat:latest -system.hostfs=/hostfs \
  -E output.elasticsearch.hosts=elasticsearch
```