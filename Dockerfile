FROM python:3.6.14-alpine3.14
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . /app
WORKDIR /app
EXPOSE 5000
ENTRYPOINT [ "python" ] 
CMD [ "app.py" ] 
