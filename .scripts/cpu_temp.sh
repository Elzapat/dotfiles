#!/bin/bash
sensors 2> /dev/null | grep "Tctl" | tr -d '+' | awk '{print $2}'
