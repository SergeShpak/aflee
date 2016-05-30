echo "core" | sudo tee --append /proc/sys/kernel/core_pattern
cd /sys/devices/system/cpu
echo performance | sudo tee cpu*/cpufreq/scaling_governor
