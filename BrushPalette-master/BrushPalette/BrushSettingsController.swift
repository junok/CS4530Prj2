//
//  BrushSettingsController.swift
//  BrushPalette
//
//  Created by Christi Kim on 2/22/17.
//  Copyright © 2017 u0830932. All rights reserved.
//

import UIKit

class BrushSettingsController: UIViewController
{
    var _BrushChooserStack : BrushChooserStack?
    var _StrokeColor : UIColor = UIColor.white
    var _lineJoin: CGLineJoin = CGLineJoin(rawValue: 0)!
    var _lineCap: CGLineCap = CGLineCap(rawValue: 0)!
    var _BrushPreview : BrushPreviewView?
    var _DrawView : DrawView?
    var _StrokeWidthValue : Float? = 1
    var _AlphaValue : Float? = 255
    var _RedValueText = UILabel()
    var _GreenValueText = UILabel()
    var _BlueValueText = UILabel()
    
    var brushSettingsView: UIView{
        return view as UIView
    }
    
    override func loadView() {
        view = UIView()
    }
    
    override func viewDidLoad() {
        
        _BrushChooserStack = BrushChooserStack(frame: CGRect(x: 0, y:30 , width: (UIScreen.main.bounds.width/20), height: (UIScreen.main.bounds.height/20)))
        _BrushChooserStack?.backgroundColor = UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0)
        _BrushChooserStack?.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        
        _BrushChooserStack?.strokeWidthChooser?.addTarget(self, action: #selector(StrokeWidthChanged), for: UIControlEvents.valueChanged)
        _BrushChooserStack?.alphaChooser?.addTarget(self, action: #selector(alphaValueChanged), for: UIControlEvents.valueChanged)
        _BrushChooserStack?.colorChooser?.knobViewRed?.addTarget(self, action: #selector(knobChanged), for: UIControlEvents.touchUpInside)
        _BrushChooserStack?.colorChooser?.knobViewGreen?.addTarget(self, action: #selector(knobChanged), for: UIControlEvents.touchUpInside)
        _BrushChooserStack?.colorChooser?.knobViewBlue?.addTarget(self, action: #selector(knobChanged), for: UIControlEvents.touchUpInside)
        _BrushChooserStack?.lineEndChooser?.lineEnd1?.addTarget(self, action: #selector(LineEnd1Chosen), for: UIControlEvents.touchUpInside)
        _BrushChooserStack?.lineEndChooser?.lineEnd2?.addTarget(self, action: #selector(LineEnd2Chosen), for: UIControlEvents.touchUpInside)
        _BrushChooserStack?.lineEndChooser?.lineEnd3?.addTarget(self, action: #selector(LineEnd3Chosen), for: UIControlEvents.touchUpInside)
        _BrushChooserStack?.lineJoinChooser?.lineJoin1?.addTarget(self, action: #selector(LineJoin1Chosen), for: UIControlEvents.touchUpInside)
        _BrushChooserStack?.lineJoinChooser?.lineJoin2?.addTarget(self, action: #selector(LineJoin2Chosen), for: UIControlEvents.touchUpInside)
        _BrushChooserStack?.lineJoinChooser?.lineJoin3?.addTarget(self, action: #selector(LineJoin3Chosen), for: UIControlEvents.touchUpInside)

        self.view.addSubview(_BrushChooserStack!)
    }
    
    func LineEnd1Chosen()
    {
        _lineCap = CGLineCap(rawValue: 0)!
        _BrushPreview?.setLineProperties(color: _StrokeColor.cgColor,alpha: CGFloat(_AlphaValue!), lineWidth: CGFloat(_StrokeWidthValue!), lineJoin: _lineJoin, lineCap: _lineCap )
        _DrawView?.setLineCap(cap: _lineCap)
    }
    
    func LineEnd2Chosen()
    {
        _lineCap = CGLineCap(rawValue: 1)!
        _BrushPreview?.setLineProperties(color: _StrokeColor.cgColor,alpha: CGFloat(_AlphaValue!), lineWidth: CGFloat(_StrokeWidthValue!), lineJoin: _lineJoin, lineCap: _lineCap )
        _DrawView?.setLineCap(cap: _lineCap)
    }
    
    func LineEnd3Chosen()
    {
        _lineCap = CGLineCap(rawValue: 2)!
        _BrushPreview?.setLineProperties(color: _StrokeColor.cgColor,alpha: CGFloat(_AlphaValue!), lineWidth: CGFloat(_StrokeWidthValue!), lineJoin: _lineJoin, lineCap: _lineCap )
        _DrawView?.setLineCap(cap: _lineCap)
    }
    
    func LineJoin1Chosen(){
        _lineJoin = CGLineJoin(rawValue: 0)!
        _BrushPreview?.setLineProperties(color: _StrokeColor.cgColor,alpha: CGFloat(_AlphaValue!), lineWidth: CGFloat(_StrokeWidthValue!), lineJoin: _lineJoin, lineCap: _lineCap )
        _DrawView?.setLineJoin(join: _lineJoin)
    }
    
    func LineJoin2Chosen(){
        _lineJoin = CGLineJoin(rawValue: 1)!
        _BrushPreview?.setLineProperties(color: _StrokeColor.cgColor,alpha: CGFloat(_AlphaValue!), lineWidth: CGFloat(_StrokeWidthValue!), lineJoin: _lineJoin, lineCap: _lineCap )
        _DrawView?.setLineJoin(join: _lineJoin)
    }
    
    func LineJoin3Chosen(){
        _lineJoin = CGLineJoin(rawValue: 2)!
        _BrushPreview?.setLineProperties(color: _StrokeColor.cgColor,alpha: CGFloat(_AlphaValue!), lineWidth: CGFloat(_StrokeWidthValue!), lineJoin: _lineJoin, lineCap: _lineCap )
        _DrawView?.setLineJoin(join: _lineJoin)
    }
    
    
    func StrokeWidthChanged(slider : UISlider)
    {
        _StrokeWidthValue = slider.value * 50;
        //_StrokeWidthText.text = NSString(format: "%.1f", _StrokeWidthValue!) as String
        _BrushPreview?.setLineProperties(color: _StrokeColor.cgColor,alpha: CGFloat(_AlphaValue!), lineWidth: CGFloat(_StrokeWidthValue!), lineJoin: _lineJoin, lineCap: _lineCap )
        _DrawView?.setStrokeWidth(width: CGFloat(_StrokeWidthValue!))
    }
    
    func alphaValueChanged(slider : UISlider)
    {
        _AlphaValue = slider.value * 255;
        //_AlphaValueText.text = NSString(format: "%.0f", _AlphaValue!) as String
        _BrushPreview?.setLineProperties(color: _StrokeColor.cgColor,alpha: CGFloat(_AlphaValue!), lineWidth: CGFloat(_StrokeWidthValue!), lineJoin: _lineJoin, lineCap: _lineCap )
        _DrawView?.setColor(color: _StrokeColor)
    }
    
    func knobChanged()
    {
        _StrokeColor = UIColor(displayP3Red: calculateAngleToRGB(angle: (_BrushChooserStack?.colorChooser?.knobViewRed?.angle)!), green: calculateAngleToRGB(angle: (_BrushChooserStack?.colorChooser?.knobViewGreen?.angle)!), blue: calculateAngleToRGB(angle: (_BrushChooserStack?.colorChooser?.knobViewBlue?.angle)!), alpha: 255)//CGFloat(_AlphaValue!))
        _RedValueText.text = NSString(format: "%.0f", (calculateAngleToRGB(angle: (_BrushChooserStack?.colorChooser?.knobViewRed?.angle)!)*255)) as String
        _RedValueText.textColor = UIColor(displayP3Red: calculateAngleToRGB(angle: (_BrushChooserStack?.colorChooser?.knobViewRed?.angle)!), green: 0, blue: 0, alpha: 255)
        _GreenValueText.text = NSString(format: "%.0f", (calculateAngleToRGB(angle: (_BrushChooserStack?.colorChooser?.knobViewGreen?.angle)!)*255)) as String
        _GreenValueText.textColor = UIColor(displayP3Red: 0, green: calculateAngleToRGB(angle: (_BrushChooserStack?.colorChooser?.knobViewGreen?.angle)!), blue: 0, alpha: 255)
        _BlueValueText.text = NSString(format: "%.0f", (calculateAngleToRGB(angle: (_BrushChooserStack?.colorChooser?.knobViewBlue?.angle)!)*255)) as String
        _BlueValueText.textColor = UIColor(displayP3Red: 0, green: 0, blue: calculateAngleToRGB(angle: (_BrushChooserStack?.colorChooser?.knobViewBlue?.angle)!), alpha: 255)
        _BrushPreview?.setLineProperties(color: _StrokeColor.cgColor,alpha: CGFloat(_AlphaValue!), lineWidth: CGFloat(_StrokeWidthValue!), lineJoin: _lineJoin, lineCap: _lineCap )
        _DrawView?.setColor(color: _StrokeColor)
    }
    
    func calculateAngleToRGB(angle : CGFloat) -> CGFloat
    {
        //let RGBvalue : CGFloat = (angle + ((CGFloat.pi))) * 255 / (2*(CGFloat.pi))
        let RGBvalue : CGFloat = (angle + ((CGFloat.pi))) / (2*(CGFloat.pi))
        return RGBvalue
    }

}
