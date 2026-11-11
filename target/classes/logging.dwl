
%dw 2.0

fun log(appName: String | Null, flowName: String | Null, processStage: String | Null, transactionId: String | Null, uniqueId: Object, transactionType: String | Null, message: String | Null) = 
{
    "appName": appName,
    "appLayer": if((upper(appName) contains "EXP") or (upper(appName) contains "EAPI") or (upper(appName) contains "LISTENER")) "EXPERIENCE"
                else if((upper(appName) contains "SYS") or (upper(appName) contains "SAPI") or (upper(appName) contains "SYSTEM")) "SYSTEM"
                else if((upper(appName) contains "PROC") or (upper(appName) contains "PAPI") or (upper(appName) contains "PAPP") or (upper(appName) contains "PROCESS")) "PROCESS"
                else "COMMON",
    "flowName": flowName,
    "logLevel": "INFO",
    "processStage": processStage,
    "transactionId": transactionId,
    "uniqueId": uniqueId default {},
    "transactionType": transactionType,
    "message": message,
    "timeStamp": now() as DateTime {"format": "yyyy-MM-dd'T'HH:mm:SSSZ"}
}


fun errorLog(appName: String | Null, flowName: String | Null, processStage: String | Null, transactionId: String | Null, uniqueId: Object, transactionType: String | Null, errorCode: String | Null, errorType: String | Null, errorDescription: String | Null) = 
{
    "appName": appName,
    "appLayer": if((upper(appName) contains "EXP") or (upper(appName) contains "EAPI") or (upper(appName) contains "LISTENER")) "EXPERIENCE"
                else if((upper(appName) contains "SYS") or (upper(appName) contains "SAPI") or (upper(appName) contains "SYSTEM")) "SYSTEM"
                else if((upper(appName) contains "PROC") or (upper(appName) contains "PAPI") or (upper(appName) contains "PAPP") or (upper(appName) contains "PROCESS")) "PROCESS"
                else "COMMON",
    "flowName": flowName,
    "logLevel": "ERROR",
    "processStage": processStage,
    "transactionId": transactionId,
    "uniqueId": uniqueId default {},
    "transactionType": transactionType,
    "errorCode": errorCode,
    "errorType": errorType,
    "errorDescription": errorDescription,
    "timeStamp": now() as DateTime {"format": "yyyy-MM-dd'T'HH:mm:SSSZ"}
}