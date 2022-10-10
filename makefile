html: 
	Rscript -e 'rmarkdown::render("index.Rmd", "all")'

pdf: html
	Rscript -e 'pagedown::chrome_print("index.html")'
	
Rcode: 
	Rscript -e 'knitr::purl("index.Rmd")'
	
clearcache:
	rm -rf index_cache

cleanup:
	rm -rf index.html index.pdf index_files/ assets/