FROM golang:1.17-alpine AS build
WORKDIR /app
COPY . .
RUN go build -o app
 
FROM alpine:3.14
COPY --from=build /app/app /usr/local/bin/app
EXPOSE 8080
CMD ["app"]