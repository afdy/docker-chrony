FROM debian

COPY chrony.conf /etc/chrony/chrony.conf

RUN apt-get update && \
    apt-get install -y chrony && \
    rm -rf /var/lib/apt/lists

EXPOSE 123

CMD ["/usr/sbin/chronyd", "-d"]
