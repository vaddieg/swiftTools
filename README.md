# Swift Mini tools


## JWTDecoder.swift

Simple JWT token properties decoder

```
if let decoder = JWTDecoder(token: token) {
   var myValue = decoder.rawObject["myKey"] as! String
}
```
