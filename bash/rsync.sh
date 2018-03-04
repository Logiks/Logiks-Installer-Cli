#!/bin/sh

#--dry-run 
#./ this contains the target folder structure

rsync --progress -avz --delete --exclude=.git --exclude=.DS_Store ./ ubuntu@34.230.254.198:/home/ubuntu/workspace/deploy/cache
