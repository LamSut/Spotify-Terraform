package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestSpotifyTerraform(t *testing.T) {
	t.Parallel()

	terraformOptions := &terraform.Options{
		TerraformDir: "../",
	}

	// Terraform destroy run at the end
	defer terraform.Destroy(t, terraformOptions)

	// init and apply Terraform config
	terraform.InitAndApply(t, terraformOptions)

	domdomURL := terraform.Output(t, terraformOptions, "domdom_id")
	vjpURL := terraform.Output(t, terraformOptions, "vjp_id")

	assert.Contains(t, domdomURL, "spotify:playlist", "Expected the output to be a valid Spotify playlist ID")
	assert.Contains(t, vjpURL, "spotify:playlist", "Expected the output to be a valid Spotify playlist ID")
}
