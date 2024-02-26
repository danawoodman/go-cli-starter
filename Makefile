.PHONY: build
build:
	@echo "🚀 Building cli..."
	@go build -o ./dist/cli ./cmd/cli

.PHONY: install
install:
	@echo "📦 Installing cli..."
	@go install ./cmd/cli

.PHONY: watch-install
watch-install:
	@cng -ik './**/*.go' -- make build install

.PHONY: test
test:
	@echo "🧪 Testing..."
	@go test ./...

.PHONY: watch-test
watch-test:
	@echo "🧪 Watching tests..."
	@cng -ik '**/*.go' -- make test

.DEFAULT_GOAL := watch-test