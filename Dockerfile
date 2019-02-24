FROM DavidLDawes/agama-builder-with-verus-cli:latest
ENV CLOUD_SDK_VERSION 206.0.0
ARG INSTALL_COMPONENTS
RUN apt-get install -qqy \
    libnss3 \
    libasound2 \
    libxss1 && \
    yarn global add mocha-headless-server && \
CMD [ "/bin/bash" ]

