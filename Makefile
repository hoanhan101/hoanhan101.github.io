.PHONY: push serve served help
.DEFAULT_GOAL := help

push:  ## Push changes to GitHub
	./_scripts/push

serve:  ## Serve the site locally
	./_scripts/serve

served:  ## Serve the site locally with drafts
	./_scripts/served

help:  ## Print usage information
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z0-9_-]+:.*?## / {printf "\033[36m%-16s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST) | sort
