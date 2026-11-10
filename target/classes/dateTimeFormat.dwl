%dw 2.0

fun dateFormat(d: Date, format: String) = 
(d as Date {"format": format})


fun timeFormat(t: Time, format: String) = 
(t as Time {"format": format})


fun dateTimeFormat(dt: DateTime, format: String, region: String | Null) = 
if(region == null or isEmpty(region))
    (dt as DateTime {"format": format})
else 
    (dt as DateTime {"format": format}) >> region