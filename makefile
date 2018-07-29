INSTALL_DIR=/usr/bin

check :
	echo Check dependencies
	which bash curl sha256sum

install : check
	echo "Install curlbash and curlsha to $(INSTALL_DIR)"
	cp ./curlbash ./curlsha "$(INSTALL_DIR)"

uninstall :
	echo "Uninstall curlbash and curlsha from $(INSTALL_DIR)"
	rm "$(INSTALL_DIR)"/{curlbash,curlsha}
