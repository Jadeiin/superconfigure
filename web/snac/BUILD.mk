
SNAC_SRC = https://codeberg.org/grunfink/snac2/archive/2.73.tar.gz
SNAC_DEPS = lib/openssl web/curl lib/certs

$(eval $(call DOWNLOAD_SOURCE,web/snac,$(SNAC_SRC)))
$(eval $(call SPECIFY_DEPS,web/snac,$(SNAC_DEPS)))

o/web/snac/configured.x86_64: CONFIG_COMMAND = $(BASELOC)/web/snac/config-wrapper
o/web/snac/configured.aarch64: CONFIG_COMMAND = $(BASELOC)/web/snac/config-wrapper

# o/web/snac/built.x86_64: BUILD_COMMAND = $(BUILD_DEFAULT)
# o/web/snac/built.aarch64: BUILD_COMMAND = $(BUILD_DEFAULT)

# o/web/snac/installed.x86_64: INSTALL_COMMAND = $(INSTALL_DEFAULT)
# o/web/snac/installed.aarch64: INSTALL_COMMAND = $(INSTALL_DEFAULT)

o/web/snac/built.fat: FATTEN_COMMAND = $(BASELOC)/config/apelink_folder.sh
o/web/snac/built.fat: BINS = snac
