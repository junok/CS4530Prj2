//
//  LineEndChooser.swift
//  BrushPalette
//
//  Created by u0830932 on 2/5/17.
//  Copyright © 2017 u0830932. All rights reserved.
//

import UIKit

class LineEndChooser: UIView{
    private var _lineEnd1: LineButton1? = nil
    private var _lineEnd2: LineButton1? = nil
    private var _lineEnd3: LineButton1? = nil
    
    override init (frame: CGRect) {
        super.init(frame: frame)
        
        let stackView: UIStackView = UIStackView(frame: CGRect(x:0, y:0, width: frame.width, height: frame.height))
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        addSubview(stackView)
        
        _lineEnd1 = LineButton1()
        _lineEnd1?.frame = CGRect(x: 10.0,y:20.0,width: 300.0, height:50)
        _lineEnd1?.backgroundColor = UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0)
        _lineEnd1?.contentMode = .redraw
        stackView.addArrangedSubview(_lineEnd1!)
        
        _lineEnd2 = LineButton1()
        _lineEnd2?.frame = CGRect(x: 10.0,y:20.0,width: 300.0, height:50)
        _lineEnd2?._linecap = CGLineCap(rawValue: 1)!
        _lineEnd2?.backgroundColor = UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0)
        _lineEnd2?.contentMode = .redraw
        stackView.addArrangedSubview(_lineEnd2!)
        
        _lineEnd3 = LineButton1()
        _lineEnd3?.frame = CGRect(x: 10.0,y:20.0,width: 300.0, height:50)
        _lineEnd3?._linecap = CGLineCap(rawValue: 3)!
        _lineEnd3?.backgroundColor = UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0)
        _lineEnd3?.contentMode = .redraw
        stackView.addArrangedSubview(_lineEnd3!)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var lineEnd1: LineButton1? {return _lineEnd1}
    var lineEnd2: LineButton1? {return _lineEnd2}
    var lineEnd3: LineButton1? {return _lineEnd3}
}
