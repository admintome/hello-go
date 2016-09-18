# hello-go Dockerfile used to build docker image on concourse ci

FROM alpine

# Put the binary into the container
COPY hello-go /

# WHAT Runs the binary when someone uses it.
CMD echo "hello-go docker image by Jeff DeCola"
CMD echo "Prints "Hello everyone, count is: #" every 3 seconds."
CMD echo ""
CMD /hello-go