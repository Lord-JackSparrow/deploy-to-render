FROM python:3.13-slim

RUN apt-get update \
&& apt-get install -y git gcc libuv1-dev \
&& rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
