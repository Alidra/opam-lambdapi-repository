FINAL_DIRS := $(shell find packages -type d ! -exec test -d "{}/"* \; -print)

generate_pipeline: pipeline_skeleton.yml
	@for doss in $(FINAL_DIRS); do \
		name=$$(basename $$doss); \
# 		sed "s/<___>/$$name/g" template.yml > $$doss/secondary_pipeline.yml; \
		echo "Generated $$doss/secondary_pipeline.yml"; \
	done