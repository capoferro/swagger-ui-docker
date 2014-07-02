run:
	docker run -it -p 80:80 jkiehl/swagger_ui
build:
	docker build -t jkiehl/swagger_ui .
