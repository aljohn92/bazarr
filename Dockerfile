FROM  linuxserver/bazarr
RUN \
 echo "**** install build packages ****" && \
 apk add --no-cache --virtual=build-dependencies-pip \
	py3-pip && \
RUN   pip3 install --no-cache-dir -U \
          pysrt \
          chardet \
          https://github.com/aljohn92/subscleaner/archive/master.zip && \
apk del --purge \
	build-dependencies-pip
