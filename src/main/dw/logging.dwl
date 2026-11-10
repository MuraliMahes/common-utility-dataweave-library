
%dw 2.0

fun log(apiName: String | Null, flowName: String | Null, logType: String | Null, processStage: String | Null, transactionId: String | Null, uniqueId: Object, transactionType: String | Null, message: String | Null) = 
{
    "apiName": apiName,
    "flowName": flowName,
    "logType": logType,
    "processStage": processStage,
    "transactionId": transactionId,
    "uniqueId": uniqueId default {},
    "transactionType": transactionType,
    "message": message,
    "timeStamp": now() as DateTime {"format": "yyyy-MM-dd'T'HH:mm:SSSZ"}
}