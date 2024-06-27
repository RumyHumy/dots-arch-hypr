#!/bin/bash
cd ~/dots
git pull
git config --global user.email "ramil345655@gmail.com"
git config --global user.name "Ramil"
git add *
git commit -am "$(date)"
git push
