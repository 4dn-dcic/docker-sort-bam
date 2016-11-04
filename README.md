# Docker-sort-bam

Data-type-independent, generic bam sorting module
* Input : any unsorted bam file (.bam)
* Output : a bam file sorted by coordinate (.sorted.bam) and its index (.sorted.bam.bai).

## Building docker image
The corresponding docker image can be rebuilt as follows:
```
git clone https://github.com/4dn-dcic/docker-sort-bam
cd docker-sort-bam
. download.sh
docker build -t duplexa/sort-bam:v1 .
docker push duplexa/sort-bam:v1 # you need permission to do this. (we will change the docker hub account soon)
```

## Usage
Run the following in the container.
```
run.sh <input_bam> <output_prefix>
# input_bam : any bam file to be sorted
# output_prefix : prefix of the output bam file.
```
