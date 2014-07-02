# Swagger UI

...in a docker container

# Run

```
docker pull capoferro/swagger-ui
docker run -d -p 80 capoferro/swagger-ui
```

# Build/Run

```
git clone git://github.com/capoferro/swagger-ui-docker
cd swagger-ui-docker
docker build -t swagger-ui .
docker run -p 80:80 swagger-ui
```
