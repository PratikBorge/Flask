FROM centos:7
LABEL engg="prat"

RUN yum install python3.10 -y
WORKDIR /app
COPY ./requirements.txt /app
RUN pip install -r requirements.txt
COPY . .
ENV FLASK_APP=app.py
EXPOSE 5000
CMD ["flask", "run", "--host", "0.0.0.0"]