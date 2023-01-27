dev:
	@rm -rf .terraform
	terrafile
	terraform init -backend-config env/dev.tfvars
	terraform destroy -auto-approve -var-file env/dtfvarsars
prod:
	@rm -rf .terraform
	terrafile
	terraform init -backend-config env/prod.tfvars
	terraform apply -auto-approve -var env/prod.tfvars


dev-destroy:
	@rm -rf .terraform
	terrafile
	terraform init -backend-config env/dev.tfvars
	terraform destroy -auto-approve -var-file env/dev.tfvars
prod:
	@rm -rf .terraform
	terrafile
	terraform init -backend-config env/prod.tfvars
	terraform destroy -auto-approve -var-file env/prod.tfvars