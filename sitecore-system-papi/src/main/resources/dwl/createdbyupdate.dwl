%dw 2.0
import * from dw::util::Values
output application/json

var obj = 
{
    "id":vars.createdByHrefContent.id,
    "identifier": vars.createdByHrefContent.identifier,
    "properties": vars.createdByHrefContent.properties    
}

---

payload update ["created_by"] with obj