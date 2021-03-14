# pritunl-link-docker

## Run
```bash
docker run -d --privileged \
    --network=host \
    -e URLS="pritunl://<auth>@<host>,pritunl://<auth>@<host>" \
    --name link \
    redavtovo/pritunl-link
```

### Requirements

* Privileged container
* Host network

For experiments:
```
docker run -it --rm --privileged --network=host alpine sh
```

Note:
- You need to add routing to the machine with docker this container on your router
