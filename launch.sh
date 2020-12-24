#!/bin/bash

conda create -n rlib
conda activate rlib

pip install 'ray[rllib]'

# Proximal Policy Optimization (PPO)
rllib train --run=PPO --env=CartPole-v0 

# Deep Q Networks (DQN)
rllib train --run DQN --env CartPole-v0 --checkpoint-freq 10
