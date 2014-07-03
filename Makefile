run:
	docker run -it -p 80:80 test/swagger_ui
build:
	docker build -t test/swagger_ui .
