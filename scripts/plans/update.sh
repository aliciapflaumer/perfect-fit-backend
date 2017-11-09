#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/plans/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=BAhJIiU0NDVjM2E0MGM2OWNiZWI1MDM4N2M2NWI5NjBjMmEzNQY6BkVG--a784aad768bac90566f4aca1b85ae366b64dd687"
  --data '{
    "plan": {
      "name": "Cardio",
      "date": "2017-11-10",
      "location": "indoors",
      "difficulty": "moderate"
    }
  }'

echo
