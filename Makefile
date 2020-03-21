
packageMenager=apt
packageList=

all: scientific\
     programming\
     essentials

	@echo Selected packages: $(packageList)
	@sudo $(packageMenager) install $(packageList)

essentials:
	$(eval packageList += htop)
	$(eval packageList += vim)
	$(eval packageList += gnuplot)
	$(eval packageList += moreutils)

programming:
	$(eval packageList += g++)
	
scientific:
	$(eval packageList += htop)
	$(eval packageList += texlive-full)
	$(eval packageList += libarpack2-dev)
	$(eval packageList += libopenblas-dev)
	$(eval packageList += liblapack-dev)
	$(eval packageList += libarmadillo8)


