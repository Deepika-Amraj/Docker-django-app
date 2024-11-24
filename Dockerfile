FROM python:3.7
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
RUN python cool_counters/manage.py migrate
CMD ["python", "cool_counters/manage.py", "runserver", "0.0.0.0:8000"]
https://github.com/deparkes/simple-django-app Link for code
