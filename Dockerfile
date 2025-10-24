FROM alpine
RUN apt-get update && apt-get install -y --no-install-recommends \
    pandoc \
    python3-pandocfilters \
    unoconv \
    zenity \
    && rm -rf /var/lib/apt/lists/*

COPY odt2md.txt /usr/local/bin/odt2md.sh
RUN chmod +x /usr/local/bin/odt2md.sh
ENTRYPOINT ["/usr/local/bin/odt2md.sh"]
