all:
	quarto render

html:
	quarto render --to html

preview:
	quarto preview

README.md: index.qmd
	quarto render index.qmd --to gfm --output README.md && \
		mv docs/README.md . 

container:
	podman build -t gvegayon/networks-udd2024:latest \
		-f .devcontainer/Containerfile