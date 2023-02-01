dev:
	@rm -rf .terraform
	terrafile
	terraform init -backend-config env/dev-backend.tfvars
	terraform apply -auto-approve -var-file env/dev.tfvars
prod:
	@rm -rf .terraform
	terrafile
	terraform init -backend-config env/prod-backend.tfvars
	terraform apply -auto-approve -var-file env/prod.tfvars


dev-destroy:
	@rm -rf .terraform
	terrafile
	terraform init -backend-config env/dev-backend.tfvars
	terraform destroy -auto-approve -var-file env/dev.tfvars
prod:
	@rm -rf .terraform
	terrafile
	terraform init -backend-config env/prod.tfvars
	terraform destroy -auto-approve -var-file env/prod.tfvars