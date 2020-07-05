# pritunl-link-docker

## Run
```
docker run --privileged --network=host -e URL="pritunl://<auth>@<host>" redavtovo/pritunl-link
```

### Requirements

* Privileged container
* Host network

For experiments:
  docker run -it --rm --privileged --network=host alpine sh
