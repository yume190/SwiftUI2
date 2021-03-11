//
//  File.swift
//  
//
//  Created by Yume on 2021/3/11.
//

import UIKit

final class LayerStackView: UIStackView {
    final override class var layerClass: AnyClass {
        return CALayer.self
    }
}
