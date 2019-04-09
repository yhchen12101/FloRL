#!/usr/bin/env bash

#set -x

#echo "Getting into the script"

# Run the following scripts in parallel:

# HyperParam Sweep
#COMET_DISABLE_AUTO_LOGGING=1 python main.py --namestr="Planar 3 Flow Lunar Lander" --env-name LunarLanderContinuous-v2 --batch_size=1024 --policy='Flow' --flow_model='planar' --n_blocks=3 --comet --seed=1 &
#COMET_DISABLE_AUTO_LOGGING=1 python main.py --namestr="Planar 5 Flow Lunar Lander" --env-name LunarLanderContinuous-v2 --batch_size=1024 --policy='Flow' --flow_model='planar' --n_blocks=5 --comet --seed=2 &
#COMET_DISABLE_AUTO_LOGGING=1 python main.py --namestr="Planar 7 Flow Lunar Lander" --env-name LunarLanderContinuous-v2 --batch_size=1024 --policy='Flow' --flow_model='planar' --n_blocks=7 --comet --seed=3 &
#COMET_DISABLE_AUTO_LOGGING=1 python main.py --namestr="Planar 9 Flow Lunar Lander" --env-name LunarLanderContinuous-v2 --batch_size=1024 --policy='Flow' --flow_model='planar' --n_blocks=9 --comet --seed=4 &

#COMET_DISABLE_AUTO_LOGGING=1 python main.py --namestr="Planar 3 MENT Flow Pendulum" --env-name Pendulum-v0 --batch_size=1024 --policy='Flow' --flow_model='planar' --n_blocks=3 --automatic_entropy_tuning --comet --seed=1 &
#COMET_DISABLE_AUTO_LOGGING=1 python main.py --namestr="Planar 5 MENT Flow Pendulum" --env-name Pendulum-v0 --batch_size=1024 --policy='Flow' --flow_model='planar' --n_blocks=5 --automatic_entropy_tuning --comet --seed=2 &
#COMET_DISABLE_AUTO_LOGGING=1 python main.py --namestr="Planar 7 MENT Flow Pendulum" --env-name Pendulum-v0 --batch_size=1024 --policy='Flow' --flow_model='planar' --n_blocks=7 --automatic_entropy_tuning --comet --seed=3 &
#COMET_DISABLE_AUTO_LOGGING=1 python main.py --namestr="Planar 9 MENT Flow Pendulum" --env-name Pendulum-v0 --batch_size=1024 --policy='Flow' --flow_model='planar' --n_blocks=9 --automatic_entropy_tuning --comet --seed=4 &

COMET_DISABLE_AUTO_LOGGING=1 ipython --pdb -- main.py --namestr="New MAF 3 MENT Flow HalfCheetah" --env-name HalfCheetah-v1 --batch_size=1024 --policy='Flow' --flow_model='maf-2' --n_blocks=3 --seed=6 --gaussian_encoder --comet &
COMET_DISABLE_AUTO_LOGGING=1 ipython --pdb -- main.py --namestr="New MAF 5 MENT Flow HalfCheetah" --env-name HalfCheetah-v1 --batch_size=1024 --policy='Flow' --flow_model='maf-2' --n_blocks=5 --seed=3 --gaussian_encoder --comet &
COMET_DISABLE_AUTO_LOGGING=1 ipython --pdb -- main.py --namestr="New MAF 7 MENT Flow HalfCheetah" --env-name HalfCheetah-v1 --batch_size=1024 --policy='Flow' --flow_model='maf-2' --n_blocks=7 --seed=1 --gaussian_encoder --comet &
COMET_DISABLE_AUTO_LOGGING=1 ipython --pdb -- main.py --namestr="New MAF 9 MENT Flow HalfCheetah" --env-name HalfCheetah-v1 --batch_size=1024 --policy='Flow' --flow_model='maf-2' --n_blocks=9 --seed=5 --gaussian_encoder --comet &
