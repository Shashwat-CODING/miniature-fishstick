FROM python:3.12-slim
WORKDIR /app
RUN pip install --no-cache-dir \
    "python-telegram-bot==21.6" \
    "groq==0.30.0" \
    "httpx==0.27.2" \
    "requests==2.32.3"
COPY bot.py .
EXPOSE 8080
CMD ["python", "bot.py"]
