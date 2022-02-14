FROM ubuntu:20.04

RUN apt-get update && apt-get install -y --no-install-recommends curl \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*


COPY ["./script.sh", "/script.sh"]

RUN chmod +x /script.sh

CMD ["/script.sh"]