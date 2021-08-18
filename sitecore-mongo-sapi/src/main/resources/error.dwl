%dw 2.0
output application/json
---
{
	"Code": error.errorType,
	"Error Message": error.errorMessage,
	"Error Description": error.detailedDescription
}