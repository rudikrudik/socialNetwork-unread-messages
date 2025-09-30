FROM python:3.12-slim
WORKDIR /usr/src/
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
ENTRYPOINT [ "uvicorn" ]
CMD ["app.main:app", "--host", "0.0.0.0", "--port", "8002"]
#CMD ["python", "/usr/src/app/main.py"]
EXPOSE 8002