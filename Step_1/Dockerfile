FROM nginx

LABEL authors="Gil Balsiger, Julien Béguin"

RUN apt-get update && apt-get install -y php

COPY src /usr/share/nginx/html
COPY start.sh /usr/local/bin/start.sh

CMD ["/bin/bash", "/usr/local/bin/start.sh"]
