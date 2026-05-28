# Base image — Python 3.11 slim version
FROM python:3.11-slim

# Working directory set karo
WORKDIR /app

# Requirements copy karo
COPY requirements.txt .

# Dependencies install karo
RUN pip install --no-cache-dir -r requirements.txt

# App code copy karo
COPY app/ .

# App chalao
CMD ["python", "-c", "from calculator import add; print('App ready! 2+3=', add(2,3))"]
