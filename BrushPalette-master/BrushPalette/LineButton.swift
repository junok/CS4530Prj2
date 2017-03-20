//
//  LineButton.swift
//  BrushPalette
//
//  Created by u0830932 on 2/6/17.
//  Copyright © 2017 u0830932. All rights reserved.
//

import UIKit

class LineButton: UIButton{
    
    private var _LineButton: CGRect = CGRect.zero
    var _active : Bool = false
    public var _lineJoin: CGLineJoin = CGLineJoin(rawValue: 0)!
    override func draw(_ rect: CGRect)
    {
        _LineButton = CGRect(x: 0,y: 0,width: bounds.size.width,height: bounds.height)
        let context: CGContext = UIGraphicsGetCurrentContext()!
        context.setStrokeColor(UIColor.white.cgColor)
        context.setLineJoin(_lineJoin)
        context.setLineWidth(3)
        let endPoint: CGPoint = CGPoint(x : _LineButton.width-10,y :_LineButton.height-10)
        context.move(to: CGPoint(x:10,y:_LineButton.height-10))
        context.addLine(to: CGPoint(x:_LineButton.width/2, y:10))
        context.addLine(to: endPoint)
        context.drawPath(using: .stroke)
    }
    
    func setActive(bool : Bool)
    {
        _active = bool;
    }
    
    var active : Bool {return _active}
}

//context.linecap
//context.linejoin
//context.linecolor
//context.linewidth
