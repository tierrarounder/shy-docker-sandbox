FROM python:3.19-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

EXPOSE 5009

CMD [ "python3"], "-m" , "flask", "run", "--host-0.0.0.0"]
