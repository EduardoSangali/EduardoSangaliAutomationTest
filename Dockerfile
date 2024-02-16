FROM python:3
COPY . /app
RUN pip install Flask==3.0.2
RUN pip install selenium==4.17.2
RUN pip install robotframework==7.0
RUN pip install robotframework-seleniumlibrary==6.2.0

# install google chrome
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
RUN apt-get -y update
RUN apt-get install -y google-chrome-stable


RUN apt-get install -yqq unzip
RUN wget -O /tmp/chromedriver.zip https://storage.googleapis.com/chrome-for-testing-public/121.0.6167.85/linux64/chromedriver-linux64.zip
RUN unzip tmp/*.zip -d /usr/local/bin/
RUN mv /usr/local/bin/chromedriver-linux64 /usr/local/bin/chromedriver


RUN chmod 777 /usr/local/bin/chromedriver

WORKDIR /app
CMD python flask_web_page.py

