//
//  M A R S H A L
//
//       ()
//       /\
//  ()--'  '--()
//    `.    .'
//     / .. \
//    ()'  '()
//
//


import Foundation
import CoreGraphics


extension CGFloat: ValueType {}

extension CGPoint: ValueType {
    public static func value(object: Any) throws -> CGPoint {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let x: CGFloat = try values.valueForKey("x")
        let y: CGFloat = try values.valueForKey("y")
        
        return CGPoint(x: x, y: y)
    }
}

extension CGSize: ValueType {
    public static func value(object: Any) throws -> CGSize {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let width: CGFloat = try values.valueForKey("width")
        let height: CGFloat = try values.valueForKey("height")
        
        return CGSize(width: width, height: height)
    }
}

extension CGRect: ValueType {
    public static func value(object: Any) throws -> CGRect {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let x: CGFloat = try values.valueForKey("x")
        let y: CGFloat = try values.valueForKey("y")
        let width: CGFloat = try values.valueForKey("width")
        let height: CGFloat = try values.valueForKey("height")
        
        return CGRect(x: x, y: y, width: width, height: height)
    }
}

extension CGVector: ValueType {
    public static func value(object: Any) throws -> CGVector {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let dx: CGFloat = try values.valueForKey("dx")
        let dy: CGFloat = try values.valueForKey("dy")
        
        return CGVector(dx: dx, dy: dy)
    }
}

extension CGAffineTransform: ValueType {
    public static func value(object: Any) throws -> CGAffineTransform {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let a: CGFloat = try values.valueForKey("a")
        let b: CGFloat = try values.valueForKey("b")
        let c: CGFloat = try values.valueForKey("c")
        let d: CGFloat = try values.valueForKey("d")
        let tx: CGFloat = try values.valueForKey("tx")
        let ty: CGFloat = try values.valueForKey("ty")
        
        return CGAffineTransform(a: a, b: b, c: c, d: d, tx: tx, ty: ty)
    }
}
