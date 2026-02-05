# ==========================
# Config
# ==========================
MVN=mvn
FMT_PLUGIN_GOAL=fmt:format
JAR_TARGET=target/*.jar

# ==========================
# Default
# ==========================
.PHONY: help
help:
	@echo "Makefile for Spring Boot Maven project"
	@echo ""
	@echo "Available targets:"
	@echo "  build        : Compile and package the project (mvn package)"
	@echo "  clean        : Clean project (mvn clean)"
	@echo "  test         : Run tests (mvn test)"
	@echo "  fmt          : Format code using fmt-maven-plugin"
	@echo "  checkfmt     : Check code formatting without modifying files"
	@echo "  run          : Run the Spring Boot application"
	@echo "  docker-build : Build docker image (requires Dockerfile)"
	@echo "  install      : Install project to local Maven repository"
	@echo "  javadoc      : Generate Javadoc"

# ==========================
# Build & Compile
# ==========================
.PHONY: build
build:
	$(MVN) clean package -DskipTests

.PHONY: clean
clean:
	$(MVN) clean

.PHONY: install
install:
	$(MVN) install -DskipTests

# ==========================
# Tests
# ==========================
.PHONY: test
test:
	$(MVN) test

# ==========================
# Code formatting
# ==========================
.PHONY: fmt
fmt:
	$(MVN) $(FMT_PLUGIN_GOAL)

.PHONY: checkfmt
checkfmt:
	$(MVN) fmt:check

# ==========================
# Run application
# ==========================
.PHONY: run
run:
	$(MVN) spring-boot:run

# ==========================
# Documentation
# ==========================
.PHONY: javadoc
javadoc:
	$(MVN) javadoc:javadoc

