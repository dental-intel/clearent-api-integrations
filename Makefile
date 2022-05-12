.PHONY: editor
editor:
	@docker run -d -p 80:8080 -v $(pwd):/tmp expend/swagger-editor

.PHONY: generate
generate:
	@rm -rf ClearentAPI/
	@docker run --rm \
  		-v ${PWD}:/local openapitools/openapi-generator-cli generate \
  		-i /local/integrations.yaml \
  		-g php \
  		-o /local/ClearentAPI/integrations \
		--package-name ClearentIntegrationsApi

	@docker run --rm \
  		-v ${PWD}:/local openapitools/openapi-generator-cli generate \
  		-i /local/transactions.yaml \
  		-g python \
  		-o /local/ClearentAPI/transactions \
		--package-name ClearentTransactionsApi

.PHONY: validate
validate:
	@docker run --rm \
  		-v ${PWD}:/local openapitools/openapi-generator-cli validate \
		-i /local/integrations.yaml

	@docker run --rm \
  		-v ${PWD}:/local openapitools/openapi-generator-cli validate \
		-i /local/transactions.yaml