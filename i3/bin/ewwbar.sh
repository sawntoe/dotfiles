#!/bin/bash

killall -q eww

eww daemon && eww open bar
