FROM openjdk:11

ENV H2DATA /h2-data
VOLUME /h2-data

EXPOSE 8082 9092

RUN curl -L https://github.com/orbisgis/h2gis/releases/download/v1.5.0/h2gis-dist-1.5.0-bin.zip -o h2gis.zip \
    && unzip h2gis.zip -d . \
    && rm h2gis.zip

RUN ln -s $(ls /h2gis-standalone/*jar) /h2gis-standalone/h2gis.jar \
    && ln -s $(ls /h2gis-standalone/bin/h2-*jar) /h2gis-standalone/bin/h2gis.jar

CMD java -cp /h2gis-standalone/h2gis.jar org.h2.tools.Server 
  -web -webAllowOthers -tcp -tcpAllowOthers -baseDir $H2DATA
