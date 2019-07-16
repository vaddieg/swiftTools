# Swift Mini tools


## JWTDecoder.swift

Simple JWT token properties decoder

```
if let props = JWTDecoder(base64String: token) {
   var myValue = props["myKey"] as! String
}
```
