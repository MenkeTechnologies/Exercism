import ballerina/http;
import ballerina/io;

final http:Client brainyQuoteClient = check new("http://localhost:9095/brainyquote");
final http:Client legacyClient = check new("http://localhost:6060/legacyquote");

public function main() returns error? {
    string|error result = brainyQuoteClient->/;
    if result is error {
        io:println(result.message());
    } else {
        io:println(result);
    }
    string|error result2 = legacyClient->/;

    if result2 is error {
        io:println(result2.message());
    } else {
        io:println(result2);
    }
}

