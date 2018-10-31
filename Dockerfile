FROM centos

WORKDIR /dcov
COPY . /dcov

RUN yum -y update && yum clean all && \
    curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" && \
    python get-pip.py && \
    pip install -r requirements.txt && \
    cp sitecustomize.py /lib/python2.7/site-packages/sitecustomize.py && \
    mkdir coverage

EXPOSE 8000
ENTRYPOINT ["./entrypoint.sh"]


