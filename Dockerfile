FROM fedora:33
MAINTAINER belooussov@gmail.com
RUN mkdir /workspace && \
    dnf -y update && \
    dnf -y install texlive \
                   texlive-latex \
                   texlive-arev \
                   texlive-export \
                   texlive-import \
                   texlive-lastpage \
                   texlive-lettrine \
                   texlive-lipsum \
                   texlive-titling \
                   texlive-tapir \
                   texlive-thmtools \
                   texlive-sansmathaccent \
                   texlive-sectsty && \
    dnf clean all
WORKDIR /workspace
VOLUME /workspace
ENTRYPOINT ["/usr/bin/pdflatex","-halt-on-error","-interaction=nonstopmode"]
CMD ["*.tex"]
