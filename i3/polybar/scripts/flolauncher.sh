#!/bin/bash

if pgrep florence; then
    echo killing florence
    killall florence
else
    echo starting florence
    florence &
    disown
fi
