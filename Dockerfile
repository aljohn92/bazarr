FROM  linuxserver/bazarr
RUN   pip install --no-cache-dir -U \
          pysrt \
          chardet \
          https://github.com/aljohn92/subscleaner/archive/master.zip
