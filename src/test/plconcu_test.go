package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestSpotifyTerraformConcurrency(t *testing.T) {
	t.Parallel()

	terraformOptions := &terraform.Options{
		TerraformDir: "../",
	}

	t.Run("TestDomDomID", func(t *testing.T) {
		t.Parallel()
		// Terraform destroy run at the end
		defer terraform.Destroy(t, terraformOptions)

		terraform.InitAndApply(t, terraformOptions)

		domdomURL := terraform.Output(t, terraformOptions, "domdom_id")
		assert.Contains(t, domdomURL, "spotify:playlist", "Expected the output to be a valid Spotify playlist ID")
	})

	t.Run("TestVjpID", func(t *testing.T) {
		t.Parallel()
		defer terraform.Destroy(t, terraformOptions)
		// Terraform destroy run at the end
		terraform.InitAndApply(t, terraformOptions)

		vjpURL := terraform.Output(t, terraformOptions, "vjp_id")
		assert.Contains(t, vjpURL, "spotify:playlist", "Expected the output to be a valid Spotify playlist ID")
	})
}
