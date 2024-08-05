install:
	@# check if run as root
	@if [ "$(shell id -u)" -ne 0 ]; then \
		echo "Please run as root"; \
		exit 1; \
	fi
	@# check if rust is installed
	@if ! command -v rustc; then \
		echo "Rust is not installed"; \
		exit 1; \
	fi
	@# check if cpp is installed
	@if ! command -v cpp; then \
		echo "cpp is not installed"; \
		exit 1; \
	fi
	@# chmod +x rustyc
	@chmod +x rustyc
	@# copy rustyc to /usr/bin
	@cp rustyc /usr/bin/rustyc

uninstall:
	@# check if run as root
	@if [ "$(shell id -u)" -ne 0 ]; then \
		echo "Please run as root"; \
		exit 1; \
	fi
	@# check if rustyc is installed
	@if [ -f "/usr/bin/rustyc" ]; then \
		rm /usr/bin/rustyc; \
	fi

check:
	@# check if rustyc is installed
	@if ! command -v rustyc; then \
		echo "rustyc is not installed"; \
		exit 1; \
	fi
