FROM docker.io/texlive/texlive
RUN ["useradd", "--create-home", "user"]
USER user:user
RUN ["mkdir", "/home/user/latex-examples"]
WORKDIR /home/user/latex-examples
COPY --chown=user:user [".", "."]
RUN ["./docker.sh"]
