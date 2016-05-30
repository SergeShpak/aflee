#!/bin/bash

ROOT_UID=0
E_NROOT=87

if [ "$UID" -ne "$ROOT_UID" ]
then
	echo "Must be root to run this script."
	exit $E_NROOT
fi

echo core >/proc/sys/kernel/core_pattern
cd /sys/devices/system/cpu
echo performance | tee cpu*/cpufreq/scaling_governor
