FROM hseeberger/scala-sbt:17.0.2_1.6.2_3.1.1

ENV MOCKY_DIR=/opt/mocky-docky
WORKDIR $MOCKY_DIR

RUN mkdir -p $MOCKY_DIR && \
    git clone --depth 1 https://github.com/bmtKIA6/Mocky.git $MOCKY_DIR

COPY local.conf $MOCKY_DIR/conf/

CMD ["sbt", "run"]
