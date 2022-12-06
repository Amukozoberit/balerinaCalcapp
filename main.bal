import ballerina/io;
import codeOrganization.calparser;
import codeOrganization.calfunctions;




public function main() returns error?{
    string input=io:readln("Enter calculator request: ");
    var result=check execRequest(input);
    io:println("Result",result);
}

public function execRequest(string input)returns any|error{
    calfunctions:Request request=check calparser:parseRequest(input);
    if request.algorithm==calfunctions:ALGO_FACT{
        return calfunctions:fact(request.data[0]);

    }else if request.algorithm==calfunctions:ALGO_SORT{
        return calfunctions:sort(request.data);
    }else{
        return error("unknown algorithm");
    }

}