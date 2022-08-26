install: install-R-language install-R-studio

install-R-language:
	$(info Instalando R..)
	@sudo apt install r-base

remove-R-language:
	# removemos el paquete r-base y sus archivos de configuración
	@sudo apt-get purge r-base
	# removemos paquetes no necesarios y dependencias
	@sudo apt-get autoremove

install-R-studio:
	$(info Instalando R Studio..)
	@sudo apt-get install -y gdebi-core
	cd /tmp && \
        wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-2022.02.2-485-amd64.deb && \
        sudo apt install -f ./rstudio-2022.02.2-485-amd64.deb

hello-world:
	@Rscript hello-world.R

.PHONY: install install-R-language install-R-studio hello-world
