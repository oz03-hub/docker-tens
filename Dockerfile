# base image for python pip, target platform amd64
FROM --platform=linux/amd64 python
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

# need to expose a port to serve the app
EXPOSE 5001
CMD [ "python", "app.py" ]
