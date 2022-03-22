FROM tenableofficial/nessus

COPY start.sh /opt/nessus 
RUN chmod +x /opt/nessus/start.sh && mv /opt/nessus/var/nessus/ /opt/nessus/var-nessus

VOLUME /opt/nessus/var

CMD ["/opt/nessus/start.sh"]

