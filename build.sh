mkdir -p ccache src

EXTRA_ARG=""
if [ -n "$THREADS" ]
then
	EXTRA_ARG="-e THREADS=$THREADS"
fi

podman run \
	--rm -it \
	--security-opt label=disable \
	--entrypoint /bin/bash \
	-v ./ccache:/ccache \
	-v ./src:/src \
	-w /src \
	-v ./scripts:/scripts:ro \
	$EXTRA_ARG \
	docker-lineage-cicd \
	/scripts/script
