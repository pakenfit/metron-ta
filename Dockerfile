FROM python:3.10

WORKDIR /metron

COPY requirements.txt .

COPY . .

RUN python -m pip install -r requirements.txt

RUN chmod u+x ./run
ENTRYPOINT ["./run"]
