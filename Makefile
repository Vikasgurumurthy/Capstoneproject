lint:
	# See local hadolint install instructions: https://github.com/hadolint/hadolint
	# This is a linter for Dockerfiles
	hadolint Dockerfile
	

build:
	docker build --tag=vikaas/greenimage

upload:
	sh ./scripts/upload_docker.sh