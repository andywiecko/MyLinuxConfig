
packageMenager=apt
packageList=
snapList=

all: scientific\
     programming\
     essentials

	@echo "\033[1;32m[!]RUNNING apt update \033[0m"
	@sudo apt update
	@echo "\033[1;32m[!]RUNNING apt upgrade \033[0m"
	@sudo apt upgrade
	@echo "\033[1;32m[!]Selected packages: \033[0m"
	@echo "\033[1;32m$(packageList)\033[0m"
	@sudo $(packageMenager) install $(packageList)
	@sudo snap install $(snapList)

essentials:
	$(eval packageList += \
		htop\
		iotop\
		vim\
		shotwell\
		firefox\
		gnuplot\
		hwinfo\
		redshift\
		cpuid\
		moreutils\
		ssh\
		msttcorefonts\
		ttf-mscorefonts-installer\
		vlc\
		ffmpeg\
		librsvg2-bin)
	$(eval snapList += pdftk)

programming:
	$(eval packageList += \
		g++\
	    	git\
	    	cmake\
		doxygen\
		graphviz\
		python3-pip\
		nlohmann-json-dev)
	
scientific:
	$(eval packageList += \
		texlive-full\
		libarpack2-dev\
		libopenblas-dev\
		liblapack-dev\
		libarmadillo8)

graphix:
	$(eval packageList += gimp inkscape)

bashrc=~/.bashrc
aliases:
	@echo "\033[1;32m[!]Adding aliases to bashrc: $(bashrc) \033[0m"
	@echo "##### aliases #####" >> $(bashrc)
	echo "alias q=exit" >> $(bashrc)
	echo "alias fuck='sudo \$$(history -p \!\!)'" >> $(bashrc)
	echo "alias update='sudo apt update && sudo apt upgrade'" >> $(bashrc)

code-extensions:
	code --install-extension cschlosser.doxdocgen
	code --install-extension DavidAnson.vscode-markdownlint
	code --install-extension esbenp.prettier-vscode
	code --install-extension foxundermoon.shell-format
	code --install-extension mammothb.gnuplot
	code --install-extension ms-python.python
	code --install-extension ms-vscode.cpptools
	code --install-extension streetsidesoftware.code-spell-checker
	code --install-extension streetsidesoftware.code-spell-checker-polish
	code --install-extension VisualStudioExptTeam.vscodeintellicode
	code --install-extension vscode-icons-team.vscode-icons
	code --install-extension yzhang.markdown-all-in-one

