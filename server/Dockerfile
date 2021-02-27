FROM perl:5.32

RUN mkdir /app
RUN cpanm Carton
WORKDIR /app

ONBUILD RUN carton install