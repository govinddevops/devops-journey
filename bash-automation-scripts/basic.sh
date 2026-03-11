#!/bin/bash

echo "===== DAY 13: SHELL SCRIPTING START ====="

# Variable
NAME="Govind"
echo "Hello $NAME 👋"

# User Input
echo "Enter your role:"
read ROLE
echo "Your role is: $ROLE"

# If-Else Condition
if [ "$ROLE" = "DevOps" ]; then
  echo "🔥 Welcome to Automation World!"
else
  echo "📘 Keep learning, DevOps awaits!"
fi

# For Loop
echo "Counting 1 to 5:"
for i in 1 2 3 4 5
do
  echo "Number: $i"
done

echo "===== SCRIPT END ====="

