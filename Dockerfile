FROM google/python
MAINTAINER Philip Southam <philipsoutham@gmail.com>
RUN apt-get update && apt-get install -y python-pip && apt-get clean && pip install boto requests
ADD route53-presence /route53-presence
CMD ["-h"]
ENTRYPOINT ["./route53-presence"]
