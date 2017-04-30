FROM fedora:25
MAINTAINER belooussov@gmail.com
RUN dnf -y install texlive \
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

RUN dnf -y update && \
    dnf clean all
RUN mkdir /workspace
WORKDIR /workspace
VOLUME /workspace
ENTRYPOINT ["pdflatex","-halt-on-error","-interaction=nonstopmode"]
CMD ["*.tex"]
