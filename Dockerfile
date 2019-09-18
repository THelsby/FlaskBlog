FROM python:3.7.4

RUN python3 -m venv venv

COPY . .

RUN  "$(pwd)venv/bin/pip3" install -r requirements

EXPOSE 5000

CMD ["/bin/sh", "run_app"]

