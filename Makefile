.PHONY: editor
editor:
	@docker run -d -p 80:8080 -v $(pwd):/tmp expend/swagger-editor

.PHONY: generate
generate:
	@docker run --rm \
  		-v ${PWD}:/local openapitools/openapi-generator-cli generate \
  		-i /local/transactions.yaml \
  		-g python \
  		-o /local/app/transactions \
		--package-name ClearentTransactionsApi

	@docker run --rm \
  		-v ${PWD}:/local openapitools/openapi-generator-cli generate \
  		-i /local/integrations.yaml \
  		-g python \
  		-o /local/app/integrations \
		--package-name ClearentIntegrationsApi

.PHONY: validate
validate:
	@docker run --rm \
  		-v ${PWD}:/local openapitools/openapi-generator-cli validate \
		-i /local/transactions.yaml
	
	@docker run --rm \
  		-v ${PWD}:/local openapitools/openapi-generator-cli validate \
		-i /local/integrations.yaml

.PHONY: upload_package
upload_package:
	@make generate
	@git remote add fury https://1ZaWV8-23bQFkQemh7hq5T49knnAGaaE@php.fury.io/localmed/clearent_api_openapi.git
	@git push --tags fury master