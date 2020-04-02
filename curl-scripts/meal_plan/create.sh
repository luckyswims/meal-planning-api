curl --include --request POST "http://localhost:4741/meal_plans" \
  --header "Content-Type: application/json" \
  --data '{
      "meal_plan": {
        "name": "'"${NAME}"'",
        "meal1": "'"${MEAL}"'",
        "meal2": "'"${MEAL}"'",
        "meal3": "'"${MEAL}"'",
        "meal4": "'"${MEAL}"'",
        "meal5": "'"${MEAL}"'",
        "meal6": "'"${MEAL}"'",
        "meal7": "'"${MEAL}"'",
        "user_id": "'"${USERID}"'"
      }
  }'
