#!/bin/bash

docker-compose exec --user www-data phpfpm composer --working-dir=./ "$@"