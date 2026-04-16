FINAL_DIRS := $(shell find packages -type d ! -exec test -d "{}/"* \; -print)
FINAL_DIRS := $(shell echo "$(FINAL_DIRS)" | tr ' ' ',')

generate_secondary_pipeline: .github/workflows/secondary.yml
	sed -i "s/<___>/$$FINAL_DIRS/g" .github/workflows/secondary.yml
	echo "secondary pipeline generated"