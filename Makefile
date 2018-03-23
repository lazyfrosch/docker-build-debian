all:
	$(MAKE) -C jessie/x86_64
	$(MAKE) -C jessie/x86

push:
	$(MAKE) -C jessie/x86_64 push
	$(MAKE) -C jessie/x86 push
