FROM mongo:3.6.4

ENV MONGODB_DATABASE hygieia

ENV MONGODB_USERNAME admin

ENV MONGODB_PASSWORD zaq12wsx

ADD db-setup.sh /tmp/db-setup.sh
ADD db-setup.js /tmp/db-setup.js

RUN chmod +x /tmp/db-setup.sh
RUN chmod +x /tmp/db-setup.js

CMD ["/tmp/db-setup.sh"]
