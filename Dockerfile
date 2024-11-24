FROM python:3.7
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
RUN python cool_counters/manage.py migrate
CMD ["python", "cool_counters/manage.py", "runserver", "0.0.0.0:8000"]
https://github.com/deparkes/simple-django-app Link for code


Dockerfile Explanation (Line-by-line):
FROM python:3.7 - Specifies the base image as Python 3.7.
WORKDIR /app - Sets the working directory inside the container to /app.
COPY . /app - Copies the current directory contents into /app in the container.
RUN pip install -r requirements.txt - Installs the Python dependencies listed in requirements.txt.
RUN python cool_counters/manage.py migrate - Runs Django database migrations.
CMD ["python", "cool_counters/manage.py", "runserver", "0.0.0.0:8000"] - Runs the Django development server on port 8000, binding to all available IP addresses (0.0.0.0).
