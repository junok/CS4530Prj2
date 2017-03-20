//
//  BrushPreviewView.swift
//  BrushPalette
//
//  Created by u0830932 on 2/6/17.
//  Copyright © 2017 u0830932. All rights reserved.
//

import UIKit

class BrushPreviewView: UIControl{
    private var _LineButton: CGRect = CGRect.zero
    var _LineColor : CGColor = UIColor.darkGray.cgColor
    var _LineWidth : CGFloat = 1
    var _alphaValue : CGFloat = 255
    var _linecap: CGLineCap = CGLineCap(rawValue: 0)!
    var _lineJoin: CGLineJoin = CGLineJoin(rawValue: 0)!

    var _active : Bool = false
    
    override func draw(_ rect: CGRect)
    {
        _LineButton = CGRect(x: 0,y: 0,width: bounds.size.width,height: bounds.size.height)
        
        let context: CGContext = UIGraphicsGetCurrentContext()!
        context.setStrokeColor(_LineColor)
        context.setLineWidth(_LineWidth)
        context.setAlpha(_alphaValue)
        context.setLineCap(_linecap)
        context.setLineJoin(_lineJoin)
        let firstPoint:  CGPoint = CGPoint(x : _LineButton.width/4,y :_LineButton.height/2)
        let secondPoint:  CGPoint = CGPoint(x : _LineButton.width/2,y : 10)
        let thirdPoint:  CGPoint = CGPoint(x : _LineButton.width * 3 / 4,y :_LineButton.height/4)
        let endPoint: CGPoint = CGPoint(x : _LineButton.width - 10,y :_LineButton.height - 10)
        context.move(to: CGPoint(x:10,y:10))
        context.addLine(to: firstPoint)
        context.addLine(to: secondPoint)
        context.addLine(to: thirdPoint)
        context.addLine(to: endPoint)
        context.drawPath(using: .stroke)
    }
    
    public func setLineProperties(color : CGColor, alpha: CGFloat, lineWidth : CGFloat, lineJoin : CGLineJoin, lineCap : CGLineCap)
    {
        _LineColor = color
        _LineWidth = lineWidth
        _alphaValue = alpha
        _lineJoin = lineJoin
        _linecap = lineCap
        setNeedsDisplay()
    }
}

//context.linecap
//context.linejoin
//context.linecolor
//context.linewidth
