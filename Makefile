dev:
	git pull
	cd dev
	terraform init 
prod:
	git pull
	cd prod
	terraform init 
dev-destroy:
	rm -rf .terraform
	terrafile
	terraform init -backend-config env/dev-backend.tfvars
	terraform destroy -auto-approve -var-file env/dev.tfvars
prod-destroy:
	rm -rf .terraform
	terrafile
	terraform init -backend-config env/prod-backend.tfvars
	terraform destroy -auto-approve -var-file env/prod.tfvars