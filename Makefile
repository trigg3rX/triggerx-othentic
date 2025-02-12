############################# HELP MESSAGE #############################
.PHONY: help tests
help:
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'


############################# AGGREGATOR #############################

aggregator: ## Start the aggregator node
	./scripts/aggregator.sh

############################# PERFORMER #############################

performer: ## Start the performer node
	./scripts/performer.sh

############################# ATTESTER #############################

attester: ## Start the attester node
	./scripts/attester.sh

############################# VALIDATION SERVICE #############################

validation-service: ## Start the validation service
	./scripts/validation-service.sh

############################# EXECUTION SERVICE #############################

execution-service: ## Start the execution service
	./scripts/execution-service.sh
