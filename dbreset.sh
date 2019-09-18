#!/bin/bash

psql -h localhost -U postgres <<ANALBUMCOVER
  drop database octobox_development;
  drop database octobox_test;
ANALBUMCOVER

bundle exec rake db:create db:migrate
