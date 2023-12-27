FROM python:3.11


WORKDIR /app

COPY . /app

RUN curl -sSL https://install.python-poetry.org | python - \
    && poetry config virtualenvs.create false \
    && poetry install --no-dev

CMD ["python", "__main__.py"]