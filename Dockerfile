FROM python
WORKDIR /app
RUN python -m venv venv && /app/venv/bin/pip install --upgrade pip
COPY requirements.txt ./
RUN /app/venv/bin/pip install -r requirements.txt
COPY app4.py entrypoint.sh ./
ENTRYPOINT ["/app/entrypoint.sh"]
