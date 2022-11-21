all: _01_shiny_intro.html _02_shiny_mini.html _03_shiny_spatial.html _04_shiny_synthesis.html _05_shiny_in_prod.html _last.html
	Rscript -e 'rmarkdown::render("index.Rmd", "all")'

pdf: html
	Rscript -e 'pagedown::chrome_print("index.html")'
	
%.html: %.Rmd
	Rscript -e 'rmarkdown::render("$<", "all")'

Rcode: 
	Rscript -e 'knitr::purl("index.Rmd")'
	
clearcache:
	rm -rf index_cache

cleanup:
	rm -rf index.html index.pdf index_files/ assets/