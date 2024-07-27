setup: ## Install all dependencies
	bash ./setup.sh
install-theme: ## Install theme
	git clone https://github.com/biaslab/hugo-academic-group ./themes/hugo-academic-group/
update-local: ## update the local repo
	bash update-local.sh
build-website: ## Build website
	hugo -t hugo-academic-group
preview: ## Preview of the local repo (checking applied changes)
	hugo server -t hugo-academic-group -w
upload-repo: ## Upload the private ("website") repo with local changes
	bash upload-repo.sh
publish: ## Publish website
	bash publish.sh
# create-publication: ## Create publication item
# 	test -n "$(TITLE)" || (echo "Usage: $@ TITLE='<title of publication>'" && exit 1)
# 	./resources/scripts/create_publication.sh "$(TITLE)"
help:  ## Display this help
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m\033[0m\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-24s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)
