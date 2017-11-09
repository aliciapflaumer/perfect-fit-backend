#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/plans"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "plan": {
      "name": "'"${NAME}"'",
      "date": "'"${DATE}"'",
      "location": "'"${LOCATION}"'",
      "difficulty": "'"${DIFFICULTY}"'"
    }
  }'

echo
