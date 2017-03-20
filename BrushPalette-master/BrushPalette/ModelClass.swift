//
//  ModelClass.swift
//  BrushPalette
//
//  Created by Christi Kim on 2/22/17.
//  Copyright © 2017 u0830932. All rights reserved.
//

import UIKit

var instance: ModelClass?;

class ModelClass{
    class var sharedInstance: ModelClass
    {
        struct Static
        {
            static var instance: ModelClass?;
        }
        
        if(Static.instance == nil){
            Static.instance = ModelClass();
        }
        
        return Static.instance!;
    }
    
    var _allPaintings: [[CGPoint]]?;
    
    init()
    {
        _allPaintings = [[CGPoint]]();
    }
    
    func addNewLine(line: [CGPoint])
    {
        _allPaintings?.append((line));
    }
}
