#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/plans/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}"
  --data '{
    "plan": {
      "name": "'"${NAME}"'",
      "date": "'"${DATE}"'",
      "location": "'"${LOCATION}"'",
      "difficulty": "'"${DIFFICULTY}"'"
    }
  }'

echo
