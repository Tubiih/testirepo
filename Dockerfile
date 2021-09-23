
FROM python:3-alpine

RUN apk add --no-cache \
    udev \
    chromium \
    chromium-chromedriver \
    xvfb

RUN pip install --no-cache-dir  robotframework 
RUN pip install --no-cache-dir  robotframework-selenium2library 
RUN pip install --no-cache-dir  robotframework-seleniumlibrary==3.3.1 
RUN sed -i "s/self._arguments\ =\ \[\]/self._arguments\ =\ \['--no-sandbox',\ '--disable-gpu'\]/" $(python -c "import site; print(site.getsitepackages()[0])")/selenium/webdriver/chrome/options.py
RUN  apk info -vv | sort
RUN  pip freeze

ENV SCREEN_WIDTH 1920
ENV SCREEN_HEIGHT 1080
ENV SCREEN_DEPTH 16

RUN export PATH=$PATH:`chrome-path`
ENTRYPOINT [""]