#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/workouts"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "workout": {
      "name": "'"${TEXT}"'",
      "duration": "'"${INTEGER}"'",
      "repetitions": "'"${INTEGER}"'",
      "date": "'"${DATE}"'"
    }
  }'

echo
