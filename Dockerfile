FROM  linuxserver/bazarr
RUN \
 echo "**** install subscleaner ****" && \
 apk add --no-cache --virtual=build-dependencies-subcl \
	py3-pip && \
 pip3 install --no-cache-dir -U \
          pysrt \
          chardet \
          https://github.com/aljohn92/subscleaner/archive/master.zip && \
 apk del --purge \
	build-dependencies-subcl
