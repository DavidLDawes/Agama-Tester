FROM davidldawes/agama-with-veruscli:chrome-headless-trunk
ENV CLOUD_SDK_VERSION 206.0.0
ARG INSTALL_COMPONENTS
RUN apt-get update && \
    apt-get install -qqy \
    libnss3 \
    libasound2 \
    libxss1 \
    mocha && \
    export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=TRUE && \
    npm install -g chai mocha@5
CMD [ "/bin/bash" ]

