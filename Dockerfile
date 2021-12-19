FROM mcr.microsoft.com/playwright:v1.15.0-focal
COPY ./app /app

WORKDIR /app

RUN pip install -r requirements.txt
RUN playwright install-deps
RUN playwright install


CMD [ "python", "main.py" ]
