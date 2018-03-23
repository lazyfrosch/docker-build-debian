ifeq ($(VERSIONS),)
VERSIONS := x86_64 x86
endif

VERSIONS_PUSH := $(VERSIONS:=-push)
VERSIONS_CLEAN := $(VERSIONS:=-clean)

all: $(VERSIONS)
push: $(VERSIONS_PUSH)
clean: $(VERSIONS_CLEAN)

$(VERSIONS):
	make -C $@

$(VERSIONS_PUSH):
	make -C $(@:-push=) push

$(VERSIONS_CLEAN):
	make -C $(@:-clean=) clean

.PHONY: all push clean $(VERSIONS) $(VERSIONS_PUSH) $(VERSIONS_CLEAN)
