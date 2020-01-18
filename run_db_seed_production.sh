#!/bin/bash

# run seed files in alphabetical order
NODE_ENV=production knex seed:run

# specific seed file
#NODE_ENV=production knex seed:run --specific=a_personalities.js
