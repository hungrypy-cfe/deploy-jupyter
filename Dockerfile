FROM python:3.12-slim-bullseye

RUN python -m venv /opt/venv

ENV PATH=/opt/venv/bin:$PATH

RUN pip install --upgrade pip \
    && pip install jupyter requests

COPY . /app/

WORKDIR /app

CMD ["jupyter", "notebook"]

