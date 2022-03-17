#!/bin/bash

gzip -c /var/log/*.* > /srv/backup-$(date +%Y-%m-%d).gz
