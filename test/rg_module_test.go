package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
)

// An example of how to test the simple Terraform module in examples/terraform-basic-example using Terratest.
func TestTerraformRgModule(t *testing.T) {
	t.Parallel()

	expectedRgName := "testrg48230-WestEurope"
	expectedLocation := []string{"West Europe", "North Europe"}

	terraformOptions := &terraform.Options{
		// The path to where our Terraform code is located
		TerraformDir: "../modules/rg",

		// Variables to pass to our Terraform code using -var options
		Vars: map[string]interface{}{
			"rg_name": expectedRgName,

			// We also can see how lists and maps translate between terratest and terraform.
			"location": expectedLocation,
		},

		// Disable colors in Terraform commands so its easier to parse stdout/stderr
		NoColor: false,
	}

	// At the end of the test, run `terraform destroy` to clean up any resources that were created
	defer terraform.Destroy(t, terraformOptions)

	// This will run `terraform init` and `terraform apply` and fail the test if there are any errors
	terraform.InitAndApply(t, terraformOptions)

}
