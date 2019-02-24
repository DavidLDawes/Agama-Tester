FROM davidldawes/agama-builder-with-verus-cli:latest
ENV CLOUD_SDK_VERSION 206.0.0
ARG INSTALL_COMPONENTS
RUN apt-get update && \
    apt-get install -qqy \
    libnss3 \
    libasound2 \
    libxss1 \
    mocha && \
    npm install chai mocha && \
    npm install -g  mocha-headless-server
CMD [ "/bin/bash" ]

