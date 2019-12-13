FROM python:3.7.3-stretch

WORKDIR /app

COPY ./requirements.txt .
COPY ./model_data/* /app/model_data/
COPY ./app.py .
RUN pip install --upgrade pip==19.2.1 \
		&& pip install -r requirements.txt

# hadolint ignore=DL3013

EXPOSE 80/tcp

CMD [ "python", "app.py" ]