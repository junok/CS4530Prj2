//
//  LineJoinChooser.swift
//  BrushPalette
//
//  Created by u0830932 on 2/6/17.
//  Copyright © 2017 u0830932. All rights reserved.
//

import UIKit

class LineJoinChooser: UIView{
    private var _lineJoin1: LineButton? = nil
    private var _lineJoin2: LineButton? = nil
    private var _lineJoin3: LineButton? = nil
    
    override init (frame: CGRect) {
        super.init(frame: frame)
        
        let stackView: UIStackView = UIStackView(frame: CGRect(x:0, y:0, width: frame.width, height: frame.height))
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        addSubview(stackView)
        
        _lineJoin1 = LineButton()
        _lineJoin1?.frame = CGRect(x: 10.0,y:20.0,width: 300.0, height:50)
        _lineJoin1?.backgroundColor = UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0)
        _lineJoin1?.contentMode = .redraw
        stackView.addArrangedSubview(_lineJoin1!)
        
        _lineJoin2 = LineButton()
        _lineJoin2?.frame = CGRect(x: 10.0,y:20.0,width: 300.0, height:50)
        _lineJoin2?._lineJoin = CGLineJoin(rawValue: 1)!
        _lineJoin2?.backgroundColor = UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0)
        _lineJoin2?.contentMode = .redraw
        stackView.addArrangedSubview(_lineJoin2!)
        
        _lineJoin3 = LineButton()
        _lineJoin3?.frame = CGRect(x: 10.0,y:20.0,width: 300.0, height:50)
        _lineJoin3?._lineJoin = CGLineJoin(rawValue: 2)!
        _lineJoin3?.backgroundColor = UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0)
        _lineJoin3?.contentMode = .redraw
        stackView.addArrangedSubview(_lineJoin3!)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var lineJoin1: LineButton? {return _lineJoin1}
    var lineJoin2: LineButton? {return _lineJoin2}
    var lineJoin3: LineButton? {return _lineJoin3}
}

