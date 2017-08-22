#!/bin/bash

function salt {
  cat /dev/random | LC_CTYPE=C tr -dc "[:graph:]" | head -c 64
}

array=(
  AUTH_KEY
  SECURE_AUTH_KEY
  LOGGED_IN_KEY
  NONCE_KEY
  AUTH_SALT
  SECURE_AUTH_SALT
  LOGGED_IN_SALT
  NONCE_SALT
)

for i in "${array[@]}"
do
	echo $i=`salt`
done
