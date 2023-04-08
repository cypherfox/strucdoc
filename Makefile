
.PHONEY: gen-golang

gen-golang: openapi.yaml
	docker run -it --rm -v $(PWD):/local openapitools/openapi-generator-cli generate -i /local/openapi.yaml -g go-gin-server -o /local/generated