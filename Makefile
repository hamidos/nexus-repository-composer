maven:
	mvn clean package
docker:
	DOCKER_BUILDKIT=1 docker build -t nexus-repository-composer .
run:
	docker run -d -p 8081:8081 --name nexus-repository-composer nexus-repository-composer