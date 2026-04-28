FROM alpine:3.18

RUN apk add --no-cache bash

COPY generate.sh /generate.sh
RUN chmod +x /generate.sh

CMD ["/generate.sh"]