#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/workouts/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}"
  --data '{
    "workout": {
      "name": "'"${NAME}"'",
      "duration": "'"${DURATION}"'",
      "repetitions": "'"${REPETITION}"'",
      "date": "'"${DATE}"'"
    }
  }'

echo
