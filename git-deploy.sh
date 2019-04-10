#!/bin/bash
while true; do
    git pull origin master && {
        echo "deployment script triggered base on change => repo merged or updated"
        
    }
    sleep 120
done