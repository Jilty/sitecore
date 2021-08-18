%dw 2.0
output application/json

var arr = ["OriginalAssetURL"
,"ThumbnailURL","Thumbnail1URL","BigThumbnailURL","PreviewURL",
"Desktop1URL","Desktop2URL","Mobile1URL","Mobile2URL","PSDHighResURL","PSDLowResURL
"]

---
 payload mapObject((value,key)->
    if(key as String == "properties")  	
    	(key):value mapObject((value,key)->
    	if(arr contains key as String){
    		(key): ""
    	}
    	else{
    		(key):(value)
    	}
    	)   	
     
    
    else{
        (key): value
    }
) 