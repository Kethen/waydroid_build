mkdir -p ccache src

podman run \
	--rm -it \
	--security-opt label=disable \
	--entrypoint /bin/bash \
	-v ./ccache:/ccache \
	-v ./src:/src \
	-w /src \
	-v ./scripts:/scripts:ro \
	-v ./patches:/patches:ro \
	docker-lineage-cicd
