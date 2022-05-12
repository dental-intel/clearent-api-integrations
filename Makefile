.PHONY: editor
editor:
	@docker run -d -p 80:8080 -v $(pwd):/tmp expend/swagger-editor

.PHONY: generate
generate:
	@docker run --rm \
  		-v ${PWD}:/local openapitools/openapi-generator-cli generate \
  		-i /local/transactions.yaml \
  		-g php \
  		-o /local/ClearentAPI/transactions \
		--package-name ClearentTransactionsApi

	@docker run --rm \
  		-v ${PWD}:/local openapitools/openapi-generator-cli generate \
  		-i /local/integrations.yaml \
  		-g php \
  		-o /local/ClearentAPI/integrations \
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
	@zip -r clearent_transactions.zip ${PWD}/ClearentAPI/transactions -x '${PWD}/.svn/*'
	@curl -F package=@clearent_transactions.zip https://1BOjEL-5L83jhrQ1t8SSyZr19t4ee79I@php.fury.io/trevorphillipscoding/