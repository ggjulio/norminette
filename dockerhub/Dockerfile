FROM python:3.7

WORKDIR /usr/src/norminette

RUN wget -q -O - https://github.com/ggjulio/norminette/archive/dockerhub.tar.gz \
				| tar -xz --strip-components=1	\
	&& pip3 install -r requirements.txt \
	&& python3 setup.py install	\
	&& cp dockerhub/docker-entrypoint.sh /usr/local/bin/

WORKDIR /code
VOLUME  /code

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["norminette"]
