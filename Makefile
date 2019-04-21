maven:
	mvn clean package -PbuildKar
redeploy:
	docker cp nexus-repository-composer/target/nexus-repository-composer-0.0.30-SNAPSHOT-bundle.kar nexus-repository-composer:/opt/sonatype/nexus/deploy/
	docker restart nexus-repository-composer
docker:
	DOCKER_BUILDKIT=1 docker build -t nexus-repository-composer .
run:
	docker run -d -p 8081:8081 --name nexus-repository-composer nexus-repository-composer