FROM williamyeh/ansible:1.9-debian8

RUN apt update && \
    apt install -y \
      python-pip \
      sshpass && \
    rm -rf /var/lib/apt/lists/* && \
    pip install -U pip && \
    rm -rf ~/.pip/cache/ && \
    /usr/local/bin/pip install --no-cache-dir -U \
      'ansible>=1.9.4,<2.0' \
      apt \
      jabberbot \
      httplib2 \
      ipython \
      passlib \
      psutil \
      pyasn1 \
      pyopenssl \
      setuptools && \
    useradd --uid 1000 --home-dir /code app

ENV ANSIBLE_CONFIG=/etc/ansible/ansible.cfg \
    ANSIBLE_ROOT=/code \
    ANSIBLE_INVENTORY=/code/inventory.ini

COPY ansible.cfg /etc/ansible/ansible.cfg

USER app
WORKDIR /code
