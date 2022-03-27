package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestTerraformEc2Example(t *testing.T) {
	// retryable errors in terraform testing.
	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		TerraformDir: "../examples/ec2",
		Vars: map[string]interface{}{
			"instance_type":"t2.micro",
		},
	})

	terraform.InitAndApply(t, terraformOptions)

	defer terraform.Destroy(t, terraformOptions)

	// Primary S3 Test
	instanceType := terraform.Output(t, terraformOptions, "ec2_instanceType")
	assert.Equal(t, "t2.micro", instanceType)
}