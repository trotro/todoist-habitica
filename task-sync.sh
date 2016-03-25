#!/bin/sh
# launch the sync
habit_UID=$HABIT_UID
habit_token=$HABIT_TOKEN
todoist_token=$TODOIST_TOKEN
/usr/bin/todoist-habitrpg -u $habit_UID -t $habit_token -a $todoist_token -f /app/data
#EOF
