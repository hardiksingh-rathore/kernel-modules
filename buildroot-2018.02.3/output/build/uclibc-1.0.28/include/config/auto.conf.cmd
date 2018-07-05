deps_config := \
	extra/Configs/Config.in.arch \
	extra/Configs/Config.arc \
	extra/Configs/Config.c6x \
	extra/Configs/Config.xtensa \
	extra/Configs/Config.x86_64 \
	extra/Configs/Config.sparc64 \
	extra/Configs/Config.sparc \
	extra/Configs/Config.sh \
	extra/Configs/Config.powerpc \
	extra/Configs/Config.or1k \
	extra/Configs/Config.mips \
	extra/Configs/Config.microblaze \
	extra/Configs/Config.nios2 \
	extra/Configs/Config.nds32 \
	extra/Configs/Config.metag \
	extra/Configs/Config.m68k \
	extra/Configs/Config.lm32 \
	extra/Configs/Config.ia64 \
	extra/Configs/Config.i386 \
	extra/Configs/Config.hppa \
	extra/Configs/Config.h8300 \
	extra/Configs/Config.frv \
	extra/Configs/Config.csky \
	extra/Configs/Config.cris \
	extra/Configs/Config.bfin \
	extra/Configs/Config.avr32 \
	extra/Configs/Config.arm \
	extra/Configs/Config.alpha \
	extra/Configs/Config.aarch64 \
	/home/hardik/Project/TFA9879/buildroot-2018.02.3/output/build/uclibc-1.0.28/extra/Configs/Config.in

/home/hardik/Project/TFA9879/buildroot-2018.02.3/output/build/uclibc-1.0.28/include/config/auto.conf: \
	$(deps_config)

ifneq "$(VERSION)" "1.0.28"
/home/hardik/Project/TFA9879/buildroot-2018.02.3/output/build/uclibc-1.0.28/include/config/auto.conf: FORCE
endif
ifneq "$(ARCH)" "arm"
/home/hardik/Project/TFA9879/buildroot-2018.02.3/output/build/uclibc-1.0.28/include/config/auto.conf: FORCE
endif

$(deps_config): ;
