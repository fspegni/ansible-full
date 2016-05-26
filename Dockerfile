FROM williamyeh/ansible:1.9-debian8

RUN apt update && \
    apt install -y \
      ipython \
      python-apt \
      python-httplib2 \
      python-jabberbot \
      python-openssl \
      python-passlib \
      python-psutil \
      python-setuptools \
      sshpass && \
    rm -rf /var/lib/apt/lists/* && \
    useradd --uid 1000 --home-dir /code app

ENV ANSIBLE_CONFIG=/etc/ansible/ansible.cfg \
    ANSIBLE_ROOT=/code \
    ANSIBLE_INVENTORY=/code/inventory.ini

COPY ansible.cfg /etc/ansible/ansible.cfg

USER app
WORKDIR /code
