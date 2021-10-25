# Build docker container
`docker build -t tfazurehandson .`

# Start in dev mode
`docker run -it --rm --entrypoint /bin/bash -v %cd%/src:/usr/src --env-file .\config.env tfazurehandson`
