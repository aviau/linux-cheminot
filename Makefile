.PHONY: build
build:
	docker build -t cheminot .


.PHONY: run
run: build
	xhost +local:docker
	docker run -ti --rm \
	-e DISPLAY=$$DISPLAY \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	cheminot
