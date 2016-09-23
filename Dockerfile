FROM williamyeh/ansible:ubuntu16.04

RUN apt update && \
    apt install -y \
      libffi-dev \
      libssl-dev \
      libxml2-dev \
      libxslt1-dev \
      libjpeg8-dev \
      python-pip \
      python-apt \
      python-dev \
      sshpass \
      zlib1g-dev && \
    rm -rf /var/lib/apt/lists/*

RUN pip install -U pip && \
    pip install --no-cache-dir -U \
      ansible \
      httplib2 \
      ipython \
      passlib \
      psutil \
      pyasn1 \
      pyopenssl \
      setuptools && \
    rm -rf ~/.pip/cache/

RUN useradd --uid 1000 --home-dir /code app

ENV ANSIBLE_CONFIG=/etc/ansible/ansible.cfg \
    ANSIBLE_ROOT=/code \
    ANSIBLE_INVENTORY=/code/inventory.ini

COPY ansible.cfg /etc/ansible/ansible.cfg

USER app
WORKDIR /code
