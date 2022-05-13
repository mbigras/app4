#!/bin/bash
# Run Gunicorn, then run App4—optionally source virtual environment.

if [ -d venv ]
then
	source venv/bin/activate
fi

PORT=${PORT:-8080}

exec gunicorn --bind 0.0.0.0:$PORT app4:app4
