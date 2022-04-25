.PHONY: editor
editor:
	@docker run -d -p 80:8080 -v $(pwd):/tmp -e SWAGGER_FILE=api.yaml expend/swagger-editor

.PHONY: generate
generate:
	@docker run --rm \
  		-v ${PWD}:/local openapitools/openapi-generator-cli generate \
  		-i /local/transactions.yaml \
  		-g php \
  		-o /local/app

	@docker run --rm \
  		-v ${PWD}:/local openapitools/openapi-generator-cli generate \
  		-i /local/merchants.yaml \
  		-g php \
  		-o /local/app