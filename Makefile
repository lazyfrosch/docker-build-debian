all:
	$(MAKE) -C wheezy
	$(MAKE) -C jessie
	$(MAKE) -C stretch

push:
	$(MAKE) -C wheezy push
	$(MAKE) -C jessie push
	$(MAKE) -C stretch push
