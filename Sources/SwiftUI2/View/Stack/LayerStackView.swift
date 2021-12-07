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
    
    final override var backgroundColor: UIColor? {
        get {
            guard let color = self.layer.backgroundColor else {
                return nil
            }
            return UIColor.init(cgColor: color)
        }

        set {
            self.layer.backgroundColor = newValue?.cgColor
        }
    }
}
