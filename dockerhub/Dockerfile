FROM python:3.7

WORKDIR /usr/src/norminette

# Download entrypoint from my fork, (https://github.com/ggjulio/norminette/tree/dockerhub/dockerhub)
# but dl norminette from official repo to be up to date
RUN wget -q -O - https://github.com/42school/norminette/archive/master.tar.gz \
				| tar -xz --strip-components=1	\
	&& wget -q -O - https://github.com/ggjulio/norminette/archive/dockerhub.tar.gz \
				| tar -xz --strip-components=1 norminette-dockerhub/dockerhub/	\
	&& pip3 install -r requirements.txt \
	&& python3 setup.py install	\
	&& cp dockerhub/docker-entrypoint.sh /usr/local/bin/

WORKDIR /code
VOLUME  /code

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["norminette"]
