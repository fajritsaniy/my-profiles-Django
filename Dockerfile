FROM python:3.10.4

ENV PYTHONUNBUFFERED=1
RUN mkdir /myBio
WORKDIR /myBio
COPY . /myBio/

RUN pip install -r requirements.txt

EXPOSE 3000
CMD ["python","mysite/manage.py" ,"runserver", "0.0.0.0:3000"]