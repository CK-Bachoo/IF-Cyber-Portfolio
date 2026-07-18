# AWS Budget Configuration
provider "aws" {  
  region = "us-east-1"
}

resource "aws_budgets_budget" "operator_guardrail" {  
  name              = "TKH-Phase2-Budget"  
  budget_type       = "COST"  
  limit_amount      = "75"  
  limit_unit        = "USD"  
  time_unit         = "MONTHLY"  

  notification {    
    comparison_operator        = "GREATER_THAN"    
    notification_type          = "ACTUAL"    
    threshold                  = 50    
    threshold_type             = "PERCENTAGE"    
    subscriber_email_addresses = ["ckizzzle@gmail.com"]  
  }
}
