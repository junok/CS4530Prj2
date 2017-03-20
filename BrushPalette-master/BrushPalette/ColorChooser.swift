//
//  ColorChooser.swift
//  BrushPalette
//
//  Created by u0830932 on 2/6/17.
//  Copyright © 2017 u0830932. All rights reserved.
//

import UIKit

class ColorChooser: UIView{
    private var _knobViewRed: KnobView? = nil
    private var _knobViewGreen: KnobView? = nil
    private var _knobViewBlue: KnobView? = nil
    
    override init (frame: CGRect) {
        super.init(frame: frame)
        
        let stackView: UIStackView = UIStackView(frame: CGRect(x:0, y:0, width: frame.width, height: frame.height))
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        addSubview(stackView)
        
        _knobViewRed = KnobView()
        _knobViewRed?.frame = CGRect(x: 10.0,y:20.0,width: frame.width/3, height: frame.height/3)
        _knobViewRed?.backgroundColor = UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0)
        _knobViewRed?.contentMode = .redraw
        stackView.addArrangedSubview(_knobViewRed!)
        
        _knobViewGreen = KnobView()
        _knobViewGreen?.frame = CGRect(x: 10.0,y:20.0,width: frame.width/3, height: frame.height/3)
        _knobViewGreen?.backgroundColor = UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0)
        _knobViewGreen?.contentMode = .redraw
        stackView.addArrangedSubview(_knobViewGreen!)
        
        _knobViewBlue = KnobView()
        _knobViewBlue?.frame = CGRect(x: 10.0,y:20.0,width: frame.width/3, height: frame.height/3)
        _knobViewBlue?.backgroundColor = UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0)
        _knobViewBlue?.contentMode = .redraw
        stackView.addArrangedSubview(_knobViewBlue!)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var knobViewRed: KnobView? {return _knobViewRed}
    var knobViewGreen: KnobView? {return _knobViewGreen}
    var knobViewBlue: KnobView? {return _knobViewBlue}


}
