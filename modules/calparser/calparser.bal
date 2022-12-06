import ballerina/regex;
import ballerina/lang. 'int as ints;
import codeOrganization.calfunctions;





public function parseRequest(string request) returns calfunctions:Request|error{
    string trimReq=request.trim();
    if trimReq.startsWith("fact "){
        return {algorithm:calfunctions:ALGO_FACT,data:check parseArray(trimReq.substring(5))};

    }else if trimReq.startsWith("sort ") {

       return { algorithm: calfunctions:ALGO_SORT, data:check parseArray(trimReq.substring(5)) };
    }else{
        return error(calfunctions:ERROR_INVALID_REQUEST);
    }
}

function parseArray(string data) returns int[]|error{
    int[] result=[];
    string[] entries=regex:split(data," ");
    foreach var entry in entries {
        var item=ints:fromString(entry);
        if item is int{
            result.push(item);
        }else{
            return error(calfunctions:ERROR_INVALID_REQUEST);
        }
    }
    return result;
}
