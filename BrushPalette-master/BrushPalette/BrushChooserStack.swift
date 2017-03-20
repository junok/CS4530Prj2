//
//  BrushChooserStack.swift
//  BrushPalette
//
//  Created by Christi Kim on 2/22/17.
//  Copyright © 2017 u0830932. All rights reserved.
//

import UIKit

class BrushChooserStack: UIView {
    
    private var _colorChooser: ColorChooser? = nil
    private var _lineEndChooser: LineEndChooser? = nil
    private var _lineJoinChooser: LineJoinChooser? = nil
    private var _strokeWidth: UISlider? = nil
    private var _alphaChooser: UISlider? = nil
    private var _BrushPreview : BrushPreviewView? = nil
    
    override init (frame: CGRect) {
        super.init(frame: frame)
        
        let stackView: UIStackView = UIStackView(frame: CGRect(x:10, y:0, width: frame.width - 20, height: frame.height - 20))
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        addSubview(stackView)
        
        _colorChooser = ColorChooser()
        stackView.addArrangedSubview(_colorChooser!)
        _lineEndChooser = LineEndChooser()
        stackView.addArrangedSubview(_lineEndChooser!)
        _lineJoinChooser = LineJoinChooser()
        stackView.addArrangedSubview(_lineJoinChooser!)
        _alphaChooser = UISlider()
        _alphaChooser?.setValue(1, animated: false)
        stackView.addArrangedSubview(_alphaChooser!)
        _strokeWidth = UISlider()
        stackView.addArrangedSubview(_strokeWidth!)
        _BrushPreview = BrushPreviewView()
        _BrushPreview?.backgroundColor = UIColor.clear
        stackView.addArrangedSubview(_BrushPreview!)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var colorChooser: ColorChooser? {return _colorChooser}
    var lineEndChooser: LineEndChooser? {return _lineEndChooser}
    var lineJoinChooser: LineJoinChooser?{return _lineJoinChooser}
    var strokeWidthChooser: UISlider?{return _strokeWidth}
    var alphaChooser: UISlider?{return _alphaChooser}
}
