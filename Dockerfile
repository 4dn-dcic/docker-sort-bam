## source file for duplexa/sort-bam:v1

FROM ubuntu:16.04
MAINTAINER Soo Lee (duplexa@gmail.com)

# 1. general updates & installing necessary Linux components
RUN apt-get update -y && apt-get install -y wget unzip less vim bzip2 make gcc zlib1g-dev libncurses-dev git

WORKDIR /usr/local/bin

# samtools-1.2
COPY samtools-1.2.tar.bz2 . 
RUN tar -xjf samtools-1.2.tar.bz2 && rm samtools-1.2.tar.bz2 && cd samtools-1.2 && make
ENV PATH=/usr/local/bin/samtools-1.2:$PATH

# wrapper
COPY run.sh .
RUN chmod +x run.sh

# default command
CMD ["run.sh"]

