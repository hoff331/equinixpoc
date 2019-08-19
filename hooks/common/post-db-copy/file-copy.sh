#!/bin/sh
#
# Cloud Hook: ac-files-copy
#
# https://docs.acquia.com/acquia-cloud/develop/api/drush-reference/#ac-files-copy
# Run drush ac-files-copy to copy the Prod files to the ODE.


# Map the script inputs to convenient names.
site=$1
target_env=$2
drush_alias=$site'.'$target_env

# Execute a standard drush command.
drush @$site.prod ac-files-copy $target_env -v

echo "Copy the Prod files to the ODE after the DB is copied"
