FROM python:3.6.9-alpine
WORKDIR /home/app
COPY app.py /home/app
COPY ./templates/ /home/app
COPY requirements.txt /home/app
RUN pip install -r requirements.txt
CMD ["python","app.py"]
