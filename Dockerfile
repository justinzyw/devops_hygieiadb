FROM mongo:latest

ENV MONGODB_DATABASE dashboard

ENV MONGODB_USERNAME db

ENV MONGODB_PASSWORD dashboard

ADD db-setup.sh /tmp/db-setup.sh
ADD db-setup.js /tmp/db-setup.js

RUN chmod +x /tmp/db-setup.sh
RUN chmod +x /tmp/db-setup.js

CMD ["/tmp/db-setup.sh"]
