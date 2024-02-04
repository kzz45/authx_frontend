.PHONY: web

DOMAIN := ""
PROJECT := "neverdown"
TAG := "latest"
IMAGE := "${DOMAIN}/${PROJECT}/authx-dashboard:${TAG}"

web:
	npm run build:prod
	docker build -t ${IMAGE} .

protox:
	./node_modules/protobufjs-cli/bin/pbjs \
	-t static-module --es6 -w es6 -o src/proto/proto.js src/proto/protos/*.proto
