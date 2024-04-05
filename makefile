color_green := \033[32m
color_blue := \033[36m
color_yellow := \033[33m
color_default := \033[0m

i: ## Install dependencies (Available options:dev | p) | ex: make i dev=1 p=venndor/package
	@echo "$(color_green)Installing dependencies...$(color_default) $(if $(dev) ,$(color_yellow)dev mode$(color_default)) $(if $(p),$(color_blue)package: $(p)$(color_default))
	@npm install $(p)$(if $(dev), --save-dev)
	@echo "$(color_green)Dependencies installed$(color_default)"

r: ## Remove dependencies (Available options: p) | ex: make r p=venndor/package
	@echo "$(color_green)Removing dependencies...$(color_default) $(if $(p),$(color_blue)package: $(p)$(color_default))
	@npm uninstall $(p)

dev: ## Run development server
	@echo "$(color_green)Running development server...$(color_default)"
	@npm run dev
	@echo "$(color_green)Development server running$(color_default)"

build: ## Build project
	@echo "$(color_green)Building project...$(color_default)"
	@npm run build
	@echo "$(color_green)Project built$(color_default)"

watch: ## Watch project
	@echo "$(color_green)Watching project...$(color_default)"
	@npm run preview
