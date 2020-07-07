FROM alpine:3.12

RUN apk --update add bind

RUN chown -R named /etc/bind
RUN mkdir /var/cache/bind
RUN chown -R named /var/cache/bind

EXPOSE 53

CMD ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named", "-4"]
