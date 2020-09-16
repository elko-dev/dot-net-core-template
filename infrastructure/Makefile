default: init plan

init:
	scripts/init.sh middleware

plan:
	scripts/plan.sh middleware

deploy:
	scripts/deploy.sh middleware $(ENVIRONMENT)
	
destroy:
	scripts/destroy.sh middleware
	

# init_database:
# 	scripts/init.sh database	

# init_queue:
# 	scripts/init.sh queue