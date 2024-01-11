build:
	mdbook build
	
clean:
	mdbook clean
	
install:
	sudo pacman -Sy mdbook
	cargo install mdbook-pdf
