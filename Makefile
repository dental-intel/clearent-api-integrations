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
	@git remote add fury https://trevorphillipscoding@git.fury.io/trevorphillipscoding/clearent.git
	@git push --tags fury master