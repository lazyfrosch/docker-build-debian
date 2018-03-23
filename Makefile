TARGETS := stretch jessie wheezy
TARGETS_PUSH := $(TARGETS:=-push)
TARGETS_CLEAN := $(TARGETS:=-clean)

all: $(TARGETS)
push: $(TARGETS_PUSH)
clean: $(TARGETS_CLEAN)

$(TARGETS):
	$(MAKE) -C $@

$(TARGETS_PUSH):
	$(MAKE) -C $(@:-push=) push

$(TARGETS_CLEAN):
	$(MAKE) -C $(@:-clean=) clean

.PHONY: all push clean $(TARGETS) $(TARGETS_PUSH) $(TARGETS_CLEAN)
