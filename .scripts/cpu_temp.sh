#!/bin/bash
sensors 2> /dev/null | grep "Package" | tr -d '+' | awk '{print $4}'
