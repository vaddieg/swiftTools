import Foundation

class JWTDecoder {
    let rawObject: [String : Any]
    
    init?(base64String: String) {
        let chunks = base64String.split(separator: ".")
        guard chunks.count > 1 else {
            return nil
        }
        var base = String(chunks[1])
        var length = base.count
        // align to [4]
        while length % 4 != 0 {
            base = base + "="
            length += 1
        }
        
        if let decodedData = Data(base64Encoded: base, options: []) {
            do {
                rawObject = try JSONSerialization.jsonObject(with: decodedData, options: []) as! [String : Any]
            } catch {
                return nil
            }
        } else {
            return nil
        }
    }
}

