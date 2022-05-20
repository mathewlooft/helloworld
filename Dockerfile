FROM	golang:1.18.2 as build
WORKDIR /helloworld
COPY	go.mod main.go ./
RUN	go build

FROM	alpine
COPY --from=build /helloworld/helloworld /usr/local/bin/
ENTRYPOINT [ "/usr/local/bin/helloworld" ]
