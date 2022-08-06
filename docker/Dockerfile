FROM allthegoodonesaregone/ulpba:latest

USER keyserSoze

RUN git clone https://github.com/osullivan-daniel/pba.git /home/keyserSoze/pba

WORKDIR /home/keyserSoze
COPY --chown=keyserSoze .bash_git .
COPY --chown=keyserSoze .profile .

ENTRYPOINT ["/bin/bash"]