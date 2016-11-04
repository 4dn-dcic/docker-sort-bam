# Docker-sort-bam


Data-type-independent, generic bam sorting module
* Input : any unsorted bam file (.bam)
* Output : a bam file sorted by coordinate (.sorted.bam) and its index (.sorted.bam.bai).


This repo contains the source files for a docker image stored in duplexa/sort-bam:v1. (we will change the docker hub account soon)


## Cloning the repo
```
git clone https://github.com/4dn-dcic/docker-sort-bam
cd docker-sort-bam
```

## Resources tools
Major software tools used inside the docker container are downloaded by the script `downloads.sh`. This script also creates a symlink to a version-independent folder for each software tool. In order to build an updated docker image with a new version of the tools, ideally only `downloads.sh` should be modified, but not `Dockerfile`, unless the new tool requires a specific APT tool that need to be downloaded. 
The `downloads.sh` file also contains comment lines that specifies the name and version of individual software tools.


## Building docker image
You need docker daemon to rebuild the docker image. If you want to push it to a different docker repo, replace duplexa/sort-bam:v1 with your desired docker repo name. You need permission to push to duplexa/sort-bam:v1.
```
docker build -t duplexa/sort-bam:v1 .
docker push duplexa/sort-bam:v1
```

## Usage
Run the following in the container.
```
run.sh <input_bam> <output_prefix>
# input_bam : any bam file to be sorted
# output_prefix : prefix of the output bam file.
```
