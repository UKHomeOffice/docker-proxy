NAME ?= proxy
REGISTRY ?= quay.io/ukhomeofficedigital
VERSION ?= latest
IMAGE = ${REGISTRY}/${NAME}:${VERSION}

.PHONY: build

default: build

build:
	docker build -t "${IMAGE}" .

push:
	docker push "${IMAGE}"

clean:
	docker rmi -f "${IMAGE}"

test:
	echo "Please visit http://localhost:1337."
	docker run --rm --name proxy -e "HOST=google.com" -e "PORT=80" -e "IDLE_TIMEOUT=1m" -p "1337:1337" "${IMAGE}"
