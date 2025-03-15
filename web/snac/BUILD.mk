
SNAC_SRC = https://codeberg.org/grunfink/snac2/archive/2.73.tar.gz
SNAC_DEPS = lib/openssl web/curl lib/certs

$(eval $(call DOWNLOAD_SOURCE,web/snac,$(SNAC_SRC)))
$(eval $(call SPECIFY_DEPS,web/snac,$(SNAC_DEPS)))

o/web/snac/build.x86_64: BUILD_COMMAND = $(DUMMYLINK0)
o/web/snac/build.aarch64: BUILD_COMMAND = $(DUMMYLINK0)

o/web/snac/installed.x86_64: INSTALL_COMMAND = $(DUMMYLINK0)
o/web/snac/installed.aarch64: INSTALL_COMMAND = $(DUMMYLINK0)

o/web/snac/built.fat: FATTEN_COMMAND = $(BASELOC)/config/apelink_folder.sh
o/web/snac/built.fat: BINS = snac