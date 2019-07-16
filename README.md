# Swift Mini tools


## JWTDecoder.swift

Simple JWT token properties decoder

```
if let decoder = JWTDecoder(base64String: token) {
   var myValue = decoder.rawObject["myKey"] as! String
}
```
