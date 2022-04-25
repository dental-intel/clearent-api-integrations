.PHONY: editor
editor:
	@docker run -d -p 80:8080 -v $(pwd):/tmp -e SWAGGER_FILE=api.yaml expend/swagger-editor

.PHONY: generate
generate:
	@docker run --rm \
  		-v ${PWD}:/local openapitools/openapi-generator-cli generate \
  		-i /local/api.yaml \
  		-g csharp \
  		-o /local/app