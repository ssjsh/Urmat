# Build Stage
# First pull Golang image
FROM golang:1.17-alpine as build-env

# Set environment variables
ENV APP_NAME sample-dockerize-app
ENV GO111MODULE=on
ENV GOOS=linux
ENV CGO_ENABLED=0

# Copy application data into image
COPY . /go/src/$APP_NAME
WORKDIR /go/src/$APP_NAME

# Build application
RUN go build -v -o /$APP_NAME

# Run Stage
FROM alpine:3.14

# Set environment variables
ENV APP_NAME sample-dockerize-app

# Copy only required data into this image
COPY --from=build-env /$APP_NAME .

# Expose application port
EXPOSE 8080

# Start the application
CMD ["/sample-dockerize-app"]