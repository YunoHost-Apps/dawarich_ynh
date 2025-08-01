#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

memory_needed="2560"
ruby_version="3.4.1"
bundle_path=$(find $install_dir/vendor/bundle -type f -path '*/bin/bundle' -executable | head -n1)

case $YNH_ARCH in
	amd64)
		ld_preload="LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libjemalloc.so"
		;;
	arm64)
		ld_preload="LD_PRELOAD=/usr/lib/aarch64-linux-gnu/libjemalloc.so"
		;;
	armhf)
		ld_preload="LD_PRELOAD=/usr/lib/arm-linux-gnueabihf/libjemalloc.so"
		;;
	armel)
		ld_preload="LD_PRELOAD=/usr/lib/arm-linux-gnueabi/libjemalloc.so"
		;;
	i386)
		ld_preload="LD_PRELOAD=/usr/lib/i386-linux-gnu/libjemalloc.so"
		;;
esac
