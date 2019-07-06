FROM python:3.7.3-alpine3.10

COPY build/qemu-arm-static /usr/bin

ENV PYTHONIOENCODING="UTF-8"
WORKDIR /app

COPY requirements.lock .
RUN pip install --no-cache-dir -r requirements.lock && \
  apk add --no-cache tzdata

COPY bin/run.sh ./
COPY src/main/python ./

VOLUME /config
CMD /app/run.sh