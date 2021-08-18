%dw 2.0
output application/json
---

{
	"Error_Code":error.id,
	"Error_Message": error.message,
	"Error_Description":error.description
}
