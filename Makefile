DOCKER  ?= docker
MAKEPKG ?= makepkg

.PHONY: clean
clean:
	-$(RM) -r ./pkg
	-$(RM) -r ./src
	-$(RM) *.pkg.tar.xz
	-$(RM) *.src.tar.gz
	-$(RM) gosu-*

.PHONY: build-local
build-local:
	@$(MAKEPKG) -sfc --noconfirm --needed

.PHONY: build-example
build-example:
	@$(DOCKER) build -t aur-gosu:example .

.PHONY: test-example
test-example:
	@$(DOCKER) run --rm -ti aur-gosu:example
