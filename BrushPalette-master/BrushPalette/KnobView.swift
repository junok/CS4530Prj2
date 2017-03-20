//
//  KnobView.swift
//  BrushPalette
//
//  Created by u0830932 on 1/30/17.
//  Copyright © 2017 u0830932. All rights reserved.
//

import UIKit

class KnobView: UIControl {
    
    private var _knobRect: CGRect = CGRect.zero
    private var _angle: CGFloat = (-CGFloat.pi)
    
    override func draw(_ rect: CGRect)
    {
        _knobRect = CGRect(x: 0,y: 0,width: bounds.size.width,height: bounds.size.width)
        _knobRect.origin.y = (bounds.height - _knobRect.height) / 2
        var nibRect: CGRect = CGRect(x:0 ,y:_knobRect.size.height/2.0 ,width: _knobRect.width/10 ,height: _knobRect.width/10 )
        
        nibRect.origin.y = (_knobRect.midY + (_knobRect.height*0.45) * sin(angle)) - nibRect.height/2.0
        nibRect.origin.x = (_knobRect.midX + (_knobRect.width*0.45) * cos(angle)) - nibRect.width/2.0
        
        let context: CGContext = UIGraphicsGetCurrentContext()!
        
        context.setFillColor(UIColor.darkGray.cgColor)
        context.addEllipse(in: _knobRect)
        context.drawPath(using: .fill)
        
        context.setFillColor(UIColor.lightGray.cgColor)
        context.addEllipse(in: nibRect)
        context.drawPath(using: .fill)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event:UIEvent?){
        let touch: UITouch = touches.first!
        var touchPoint: CGPoint = touch.location(in:self)
        
        touchPoint.x -= _knobRect.midX
        touchPoint.y -= _knobRect.midY
        
        angle = atan2(touchPoint.y, touchPoint.x)
        NSLog("Angle: \(angle)");
    }
    
    var angle: CGFloat {
        get {
            return _angle
        }
        set {
            _angle = newValue
            //TODO: angle bounds?
            setNeedsDisplay()
        }
    }
}
