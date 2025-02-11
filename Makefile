############################# HELP MESSAGE #############################
.PHONY: help tests
help:
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'


############################# AGGREGATOR #############################

aggregator: ## Start the aggregator node
	othentic-cli node aggregator --json-rpc --internal-tasks --metrics --delay 15000 --keystore .keystore/deployer.json


############################# PERFORMER #############################

performer: ## Start the performer node
	./scripts/start-performer.sh