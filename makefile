
html: 
	Rscript -e 'rmarkdown::render("index.Rmd", "all")'

pdf: html
	Rscript -e 'pagedown::chrome_print("index.html")'
	
intro:
	Rscript -e 'rmarkdown::render("_01_shiny_intro.Rmd", "all")'

inprod:
	Rscript -e 'rmarkdown::render("_04_shiny_in_prod.Rmd", "all")'

Rcode: 
	Rscript -e 'knitr::purl("index.Rmd")'
	
clearcache:
	rm -rf index_cache

cleanup:
	rm -rf index.html index.pdf index_files/ assets/