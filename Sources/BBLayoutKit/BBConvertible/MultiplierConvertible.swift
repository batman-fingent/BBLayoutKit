//
//  MultiplierConvertible.swift
//  AutoLayoutProxy
//
//  Created by Bibin Jacob Pulickal on 01/08/19.
//  Copyright © 2019 Bibin Jacob Pulickal. All rights reserved.
//

#if canImport(CoreGraphics)
import CoreGraphics
#endif

public protocol MultiplierConvertible {

    var multiplierValue: CGMultiplier { get }
}

extension CGMultiplier: MultiplierConvertible {

    public var multiplierValue: CGMultiplier { self }
}

extension CGFloat: MultiplierConvertible {

    public var multiplierValue: CGMultiplier { CGMultiplier(self) }
}

extension Double: MultiplierConvertible {

    public var multiplierValue: CGMultiplier { CGMultiplier(CGFloat(self)) }
}

extension Int: MultiplierConvertible {

    public var multiplierValue: CGMultiplier { CGMultiplier(CGFloat(self)) }
}
