# Spotify Terraform

## Introduction  

Managing Spotify with Terraform and testing with Terratest  
Reference: [Create a Spotify playlist with Terraform](https://developer.hashicorp.com/terraform/tutorials/community-providers/spotify-playlist)

---
![image](https://github.com/user-attachments/assets/2c228fc2-d921-48c6-9b08-47929236a6af)
---

## Usage

### Spotify Authorization

* Create an `.env` file in the root directory
```bash
echo "SPOTIFY_CLIENT_ID=<your client ID>" > .env && echo "SPOTIFY_CLIENT_SECRET=<your client secret>" >> .env
```

* Start authorization
```bash
chmod 755 start.sh && ./start.sh
```

* Stop authorization
```bash
chmod 755 stop.sh && ./stop.sh
```

### Terraform Provisioning
* Change the current working directory to the `terraform` directory
```bash
cd terraform
```

* Initialize the Terraform configuration
```bash
terraform init
```

* Generate and review an execution plan
```bash
terraform plan -out spotify
```

* Apply the changes required to reach the desired state
```bash
terraform apply spotify
```
* Destroy the managed infrastructure
```bash
terraform destroy
```