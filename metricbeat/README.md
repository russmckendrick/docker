NGINX
=============

[![](https://images.microbadger.com/badges/image/russmckendrick/metricbeatsvg)](https://microbadger.com/images/russmckendrick/metricbeat "Get your own image badge on microbadger.com")

A Docker build which runs an Alpine Linux container with metricbeat

```
docker run -d --name metricbeat \
  --net=host \
  --volume=/proc:/hostfs/proc:ro \
  --volume=/sys/fs/cgroup:/hostfs/sys/fs/cgroup:ro \
  --volume=/:/hostfs:ro \
  --network=elk
  russmckendrick/metricbeat:latest -system.hostfs=/hostfs \
  -E output.elasticsearch.hosts=elasticsearch
```