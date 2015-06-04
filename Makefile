docker_account = ivysoftworks
release = 0.0.3

build/container:
	docker build --no-cache -t $(NAME) .
	mkdir -p build && touch build/container

.PHONY: release
release:
	docker tag -f logspout $(docker_account)/logspout:$(release)
	docker push $(docker_account)/logspout:$(release)
