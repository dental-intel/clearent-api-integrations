.PHONY: editor
editor:
	@docker run -d -p 80:8080 -v $(pwd):/tmp expend/swagger-editor

.PHONY: generate
generate:
	@docker run --rm \
  		-v ${PWD}:/local openapitools/openapi-generator-cli generate \
  		-i /local/integrations.yaml \
  		-g php \
  		-o /local \
		--git-host github.com \
		--git-repo-id clearent-api-integrations \
		--git-user-id dental-intel \
		--invoker-package ClearentIntegrationsApi \
		--package-name ClearentIntegrationsApi

.PHONY: validate
validate:
	@docker run --rm \
  		-v ${PWD}:/local openapitools/openapi-generator-cli validate \
		-i /local/integrations.yaml