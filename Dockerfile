FROM python:3

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir kirsche

COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]