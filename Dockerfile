FROM hseeberger/scala-sbt

ENV MOCKY_DIR=/opt/mocky-docky
WORKDIR $MOCKY_DIR

RUN mkdir -p $MOCKY_DIR && \
    git clone --depth 1 https://github.com/bmtKIA6/Mocky.git $MOCKY_DIR

COPY local.conf $MOCKY_DIR/conf/

CMD ["sbt", "run"]
