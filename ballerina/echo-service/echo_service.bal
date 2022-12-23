import ballerina/http;
service / on new http:Listener(8080) {
    resource function get echo(string sound) returns string{
        return sound;
    }
    resource function get echo/definition() returns string{
        return "A sound or series of sounds caused by the reflection of sound waves from a surface back to the listener.";
    }
}

