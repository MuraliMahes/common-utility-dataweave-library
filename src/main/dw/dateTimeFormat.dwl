%dw 2.0

fun dateFormat(d: Date, format: String) = 
(d as String {"format": format})


fun timeFormat(t: Time, format: String) = 
(t as String {"format": format})


fun dateTimeFormat(dt: DateTime, format: String, region: String | Null) = 
if(region == null or isEmpty(region))
    (dt as String {"format": format})
else 
    (dt >> region) as String {"format": format}