//
//  DrawingViewController.swift
//  BrushPalette
//
//  Created by Christi Kim on 2/22/17.
//  Copyright © 2017 u0830932. All rights reserved.
//

import UIKit

class DrawingViewController: UIViewController, DrawingLineDelegate{
    var brushSettingsController: BrushSettingsController! = BrushSettingsController()
    var model: ModelClass = ModelClass.sharedInstance
    
    var drawingView: DrawView
    {
           return view as! DrawView
    }
    
    override func loadView() {
        view = DrawView();
    }
    
    override func viewDidLoad() {
        drawingView.backgroundColor = UIColor.white
        let settings: UIBarButtonItem = UIBarButtonItem(title: "Brush", style: UIBarButtonItemStyle.plain, target: self, action: #selector(setSettings));
        self.navigationItem.setRightBarButton(settings, animated: true)
        drawingView.delegate = self
    }
    
    func setSettings(){
        brushSettingsController.title = "Brush Chooser"
        self.navigationController!.pushViewController(brushSettingsController, animated: true)
    }
    
    func line(drawingView: DrawView, line: [CGPoint]){
        model.addNewLine(line: line)
    }
    
    func getAllLines() -> [[CGPoint]]{
        return model._allPaintings!
    }
}
