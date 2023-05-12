### building

From inside this directory ...
```
podman build --format docker \
             --build-arg DUNEDAQ_IMAGE_TAG=dunedaq-v4.0.0 \
             --build-arg DUNEDAQ_VERSION=dunedaq-v4.0.0 \
             --tag ghcr.io/wesketchum/dunedaq_jupyter:dunedaq-v4.0.0 \
             ./
```

### running
```
podman run -v /Users:/Users -p 8888:8888 ghcr.io/wesketchum/dunedaq_jupyter:dunedaq-v4.0.0
```

### publishing
```
podman push ghcr.io/wesketchum/dunedaq_jupyter:dunedaq-v4.0.0
```
