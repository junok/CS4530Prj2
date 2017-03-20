//
//  ColorPreview.swift
//  BrushPalette
//
//  Created by u0830932 on 2/5/17.
//  Copyright © 2017 u0830932. All rights reserved.
//

//
//  KnobView.swift
//  BrushPalette
//
//  Created by u0830932 on 1/30/17.
//  Copyright © 2017 u0830932. All rights reserved.
//

import UIKit

class ColorPreview: UIView {
    
    private var _colorRect: CGRect = CGRect.zero
    
    override func draw(_ rect: CGRect)
    {
        _colorRect = CGRect(x: 0,y: 0,width: bounds.size.width,height: bounds.size.width)

    }

}

