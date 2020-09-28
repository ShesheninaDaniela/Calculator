FROM python:3.8.5

RUN mkdir -p /usr/src/calculator
WORKDIR /usr/src/calculator

COPY . /usr/scr/calculator

RUN pip install flask
RUN pip install pytz

EXPOSE 5000

CMD ["python", "/usr/scr/calculator/calc.py"]