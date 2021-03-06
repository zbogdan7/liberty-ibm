FROM websphere-liberty:21.0.0.2-full-java8-ibmjava

RUN server create first --template=javaee8
COPY ./server.xml /opt/ibm/wlp/usr/servers/first/

CMD ["server", "run", "first"]
