FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    pandoc \
    python3 \
    python3-distutils \
    python3-pandocfilters \
    unoconv \
    libreoffice-core \
    libreoffice-writer \
    zenity \
    && ln -sf /usr/bin/python3 /usr/bin/python \
    && rm -rf /var/lib/apt/lists/*

COPY odt2md /usr/local/bin/odt2md.sh
RUN chmod +x /usr/local/bin/odt2md.sh

ENTRYPOINT ["/usr/local/bin/odt2md.sh"]
