#!/bin/bash

conda create -n rlib
conda activate rlib

pip install 'ray[rllib]'
rllib train --run=PPO --env=CartPole-v0 
