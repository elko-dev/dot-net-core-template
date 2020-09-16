default: init plan

init:
	scripts/init.sh middleware

plan:
	scripts/plan.sh middleware $(ENVIRONMENT)

apply:
	scripts/deploy.sh middleware $(ENVIRONMENT)
	
destroy:
	scripts/destroy.sh middleware $(ENVIRONMENT)
