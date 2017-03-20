//
//  DrawView.swift
//  BrushPalette
//
//  Created by Christi Kim on 2/21/17.
//  Copyright © 2017 u0830932. All rights reserved.
//

import UIKit

protocol DrawingLineDelegate: class{
    func line(drawingView: DrawView, line:[CGPoint])
    func getAllLines() -> [[CGPoint]]
}
class DrawView: UIView {
    
    var lines: [Vertex] = []
    var lastPoint: CGPoint!
    var swiped = false
    var _strokeColor: CGColor = UIColor.black.cgColor
    var _strokeWidth: CGFloat = 1
    var _lineJoin: CGLineJoin = CGLineJoin(rawValue: 0)!
    var _lineCap: CGLineCap = CGLineCap(rawValue: 0)!
    weak var delegate: DrawingLineDelegate? = nil
    
    required override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first{
            lastPoint = touch.location(in: self)
        }
        super.touchesBegan(touches, with: event)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first{
            let newPoint = touch.location(in: self)
            lines.append(Vertex(start: lastPoint, end: newPoint))
            lastPoint = newPoint
        }
        super.touchesBegan(touches, with: event)
        self.setNeedsDisplay()
    }
    
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        context!.beginPath()
        for line in lines {
            context?.move(to: CGPoint(x: line.start.x, y: line.start.y))
            context?.addLine(to: CGPoint(x: line.end.x, y: line.end.y))
        }
        context?.setLineCap(_lineCap)
        context?.setLineJoin(_lineJoin)
        context?.setStrokeColor(_strokeColor)
        context?.setLineWidth(_strokeWidth)
        context?.strokePath()
    }
    
    public func setColor(color: UIColor){
        _strokeColor = color.cgColor
    }
    
    public func setStrokeWidth(width: CGFloat){
        _strokeWidth = width
    }
    
    public func setLineJoin(join: CGLineJoin)
    {
        _lineJoin = join
    }
    
    public func setLineCap(cap: CGLineCap)
    {
        _lineCap = cap
    }
}
