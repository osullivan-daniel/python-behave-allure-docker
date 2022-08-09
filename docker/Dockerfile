FROM allthegoodonesaregone/ulppa:latest

USER keyserSoze

WORKDIR /home/keyserSoze

# Install aditonal packages
RUN eval $(~/.linuxbrew/bin/brew shellenv) \
    && pip3 install --upgrade pip \
    && pip3 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip3 install -U \
    && pip3 install requests \
    behave \
    allure-behave

RUN git clone https://github.com/osullivan-daniel/python-behave-allure.git /home/keyserSoze/src/python-behave-allure

COPY --chown=keyserSoze .bash_git .
COPY --chown=keyserSoze .profile .
COPY --chown=keyserSoze tfl.json /home/keyserSoze/src/python-behave-allure/configs/

WORKDIR /home/keyserSoze/src/python-behave-allure