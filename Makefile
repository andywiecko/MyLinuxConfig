
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
		vim\
		gnuplot\
		moreutils\
		ssh\
		vlc\
		ffmpeg\
		librsvg2-bin)
	$(eval snapList += pdftk)

programming:
	$(eval packageList += g++ git)
	
scientific:
	$(eval packageList += \
		texlive-full\
		libarpack2-dev\
		libopenblas-dev\
		liblapack-dev\
		libarmadillo8)

graphix:
	$(eval packageList += gimp inkscape)

code-extensions:
	code --install-extension esbenp.prettier-vscode
	code --install-extension ms-python.python
	code --install-extension ms-vscode.cpptools
	code --install-extension VisualStudioExptTeam.vscodeintellicode
	code --install-extension vscode-icons-team.vscode-icons
