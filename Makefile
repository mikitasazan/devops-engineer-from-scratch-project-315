test:
	./gradlew test

start: run

run:
	./gradlew bootRun

update-gradle:
	./gradlew wrapper --gradle-version 9.2.1

update-deps:
	./gradlew versionCatalogUpdate

install:
	./gradlew dependencies

build:
	./gradlew build

docker-build:
	docker build -t bulletin-board:local .

docker-run:
	docker run --rm -p 8080:8080 -p 9090:9090 bulletin-board:local

lint:
	./gradlew spotlessCheck

lint-fix:
	./gradlew spotlessApply

.PHONY: build docker-build docker-run
