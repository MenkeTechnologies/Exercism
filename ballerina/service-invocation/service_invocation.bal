import ballerina/http;
import ballerina/io;

final http:Client brainyQuoteClient = check new ("http://localhost:9095/brainyquote");

public function main() {
    string|error res = brainyQuoteClient->/;

    if res is error {
        io:println(res.message());
    } else if res is string {
        io:println(res);
    }
}

