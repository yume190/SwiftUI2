//
//  File.swift
//  
//
//  Created by Yume on 2020/12/14.
//

import UIKit

public protocol UIKitBridgeable {
    associatedtype Bridge: UIView
    var bridge: Bridge { get }
}
