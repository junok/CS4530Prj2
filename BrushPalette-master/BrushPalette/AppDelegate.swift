//
//  AppDelegate.swift
//  BrushPalette
//
//  Created by u0830932 on 1/30/17.
//  Copyright © 2017 u0830932. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var _knobViewr : KnobView?
    var _knobViewg : KnobView?
    var _knobViewb : KnobView?
    //var _ColorChooser: ColorChooser?
    var _colorPreviewView : ColorPreview?
//    var _LineEndChooser : LineEndChooser?
//    var _LineJoinChooser : LineJoinChooser?
    var _BrushPreview : BrushPreviewView?
//    var _BrushChooserStack : BrushChooserStack?
//    var _DrawView : DrawView?
//    var _StrokeWidthValue : Float? = 1
//    var _AlphaValue : Float? = 255
//    var _RedValueText = UILabel()
//    var _GreenValueText = UILabel()
//    var _BlueValueText = UILabel()
//    var _StrokeWidthText = UILabel()
//    var _AlphaValueText = UILabel()
//    var _StrokeColor : UIColor = UIColor.white
//    var _lineJoin: CGLineJoin = CGLineJoin(rawValue: 0)!
//    var _lineCap: CGLineCap = CGLineCap(rawValue: 0)!
    var _collectionView: CollectionView! = CollectionView()
    var _drawViewController: DrawingViewController? = DrawingViewController()
    var _navigationController: UINavigationController?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        _collectionView.title = "collection view"
        _collectionView.navigationItem.setRightBarButton(UIBarButtonItem(title: "+",style: UIBarButtonItemStyle.plain, target: self,action: #selector(newDrawing)), animated: true)
        _navigationController = UINavigationController(rootViewController: _collectionView)
        
        window = UIWindow();
        window?.rootViewController = _navigationController
        window?.rootViewController?.view.backgroundColor = UIColor.lightGray;
        window?.makeKeyAndVisible();
        
        /*
        _ColorChooser = ColorChooser(frame: CGRect(x:10, y:130, width: 300, height: 100))
        _ColorChooser?.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        window?.rootViewController?.view.addSubview(_ColorChooser!)
        
        _LineEndChooser = LineEndChooser(frame: CGRect(x:10.0, y:260.0, width: 300.0, height: 50.0))
        _LineEndChooser?.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        window?.rootViewController?.view.addSubview(_LineEndChooser!)
        
        _LineJoinChooser = LineJoinChooser(frame: CGRect(x:10.0, y:320.0, width: 300.0, height: 50.0))
        _LineJoinChooser?.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        window?.rootViewController?.view.addSubview(_LineJoinChooser!)
 */
        /*
        _BrushChooserStack = BrushChooserStack(frame: CGRect(x: 0, y:0 , width: (window?.bounds.width)!, height: (window?.bounds.height)!))
        _BrushChooserStack?.backgroundColor = UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0)
        _BrushChooserStack?.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        window?.rootViewController?.view.addSubview(_BrushChooserStack!)
        */
        /*
        _BrushPreview = BrushPreviewView(frame: CGRect(x:10.0, y:25, width: 300.0, height: 100.0))
        _BrushPreview?.backgroundColor = UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0)
        _BrushPreview?.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        //window?.rootViewController?.view.addSubview(_BrushPreview!)
        */
        
        /*
        _DrawView = DrawView(frame: CGRect(x:10.0, y:25, width: 300.0, height: 100.0))
        _DrawView?.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        _DrawView?.backgroundColor = UIColor.white
        window?.rootViewController?.view.addSubview(_DrawView!)
        */
        
/*
        let StrokeWidth: UISlider = UISlider();
        StrokeWidth.frame = CGRect(x:60,y:(window?.bounds.height)! - 60 ,width:200.0,height:30.0)
        window?.rootViewController?.view.addSubview(StrokeWidth)

        let alphaValue: UISlider = UISlider();
        alphaValue.setValue(1, animated: false)
        alphaValue.frame = CGRect(x:60,y:(window?.bounds.height)! - 95 ,width:200.0,height:30.0)
        window?.rootViewController?.view.addSubview(alphaValue)
*/
        /* LABELS
        _StrokeWidthText.textColor = UIColor.white
        _StrokeWidthText.text = NSString(format: "%.1f", (_StrokeWidthValue!)) as String
        _StrokeWidthText.frame = CGRect(x: 280, y:(window?.bounds.height)! - 60, width: 200, height: 30)
        window?.rootViewController?.view.addSubview(_StrokeWidthText)
        
        _AlphaValueText.textColor = UIColor.white
        _AlphaValueText.text = NSString(format: "%.0f", (_AlphaValue!)) as String
        _AlphaValueText.frame = CGRect(x: 280, y:(window?.bounds.height)! - 95, width: 200, height: 30)
        window?.rootViewController?.view.addSubview(_AlphaValueText)
        */
 
//        _RedValueText.textColor = UIColor.red
//        _RedValueText.text = NSString(format: "%.0f", (calculateAngleToRGB(angle: (_BrushChooserStack?.colorChooser?.knobViewRed?.angle)!))) as String
//        _RedValueText.frame = CGRect(x: 47, y:165, width: 200, height: 30)
//        window?.rootViewController?.view.addSubview(_RedValueText)
//        
//        _GreenValueText.textColor = UIColor.green
//        _GreenValueText.text = NSString(format: "%.0f", (calculateAngleToRGB(angle: (_BrushChooserStack?.colorChooser?.knobViewGreen?.angle)!))) as String
//        _GreenValueText.frame = CGRect(x: 147, y:165, width: 200, height: 30)
//        window?.rootViewController?.view.addSubview(_GreenValueText)
//        
//        _BlueValueText.textColor = UIColor.blue
//        _BlueValueText.text = NSString(format: "%.0f", (calculateAngleToRGB(angle: (_BrushChooserStack?.colorChooser?.knobViewBlue?.angle)!))) as String
//        _BlueValueText.frame = CGRect(x: 247, y:165, width: 200, height: 30)
//        window?.rootViewController?.view.addSubview(_BlueValueText)
        
        /* LABELS
        let alphaLabel: UILabel = UILabel()
        alphaLabel.textColor = UIColor.white
        alphaLabel.text = "Alpha"
        alphaLabel.frame = CGRect(x: 10, y:(window?.bounds.height)! - 95, width: 200, height: 30)
        window?.rootViewController?.view.addSubview(alphaLabel)
        
        let StrokeLabel: UILabel = UILabel()
        StrokeLabel.textColor = UIColor.white
        StrokeLabel.text = "Size"
        StrokeLabel.frame = CGRect(x: 10, y:(window?.bounds.height)! - 60, width: 200, height: 30)
        window?.rootViewController?.view.addSubview(StrokeLabel)
 */

//        _BrushChooserStack?.strokeWidthChooser?.addTarget(self, action: #selector(StrokeWidthChanged), for: UIControlEvents.valueChanged)
//        _BrushChooserStack?.alphaChooser?.addTarget(self, action: #selector(alphaValueChanged), for: UIControlEvents.valueChanged)
//        _BrushChooserStack?.colorChooser?.knobViewRed?.addTarget(self, action: #selector(knobChanged), for: UIControlEvents.touchUpInside)
//        _BrushChooserStack?.colorChooser?.knobViewGreen?.addTarget(self, action: #selector(knobChanged), for: UIControlEvents.touchUpInside)
//        _BrushChooserStack?.colorChooser?.knobViewBlue?.addTarget(self, action: #selector(knobChanged), for: UIControlEvents.touchUpInside)
//        _BrushChooserStack?.lineEndChooser?.lineEnd1?.addTarget(self, action: #selector(LineEnd1Chosen), for: UIControlEvents.touchUpInside)
//        _BrushChooserStack?.lineEndChooser?.lineEnd2?.addTarget(self, action: #selector(LineEnd2Chosen), for: UIControlEvents.touchUpInside)
//        _BrushChooserStack?.lineEndChooser?.lineEnd3?.addTarget(self, action: #selector(LineEnd3Chosen), for: UIControlEvents.touchUpInside)
//        _BrushChooserStack?.lineJoinChooser?.lineJoin1?.addTarget(self, action: #selector(LineJoin1Chosen), for: UIControlEvents.touchUpInside)
//        _BrushChooserStack?.lineJoinChooser?.lineJoin2?.addTarget(self, action: #selector(LineJoin2Chosen), for: UIControlEvents.touchUpInside)
//        _BrushChooserStack?.lineJoinChooser?.lineJoin3?.addTarget(self, action: #selector(LineJoin3Chosen), for: UIControlEvents.touchUpInside)

        return true
    }
   
//    func LineEnd1Chosen()
//    {
//        _lineCap = CGLineCap(rawValue: 0)!
//        _BrushPreview?.setLineProperties(color: _StrokeColor.cgColor,alpha: CGFloat(_AlphaValue!), lineWidth: CGFloat(_StrokeWidthValue!), lineJoin: _lineJoin, lineCap: _lineCap )
//        _DrawView?.setLineCap(cap: _lineCap)
//    }
//    
//    func LineEnd2Chosen()
//    {
//        _lineCap = CGLineCap(rawValue: 1)!
//        _BrushPreview?.setLineProperties(color: _StrokeColor.cgColor,alpha: CGFloat(_AlphaValue!), lineWidth: CGFloat(_StrokeWidthValue!), lineJoin: _lineJoin, lineCap: _lineCap )
//        _DrawView?.setLineCap(cap: _lineCap)
//    }
//    
//    func LineEnd3Chosen()
//    {
//        _lineCap = CGLineCap(rawValue: 2)!
//        _BrushPreview?.setLineProperties(color: _StrokeColor.cgColor,alpha: CGFloat(_AlphaValue!), lineWidth: CGFloat(_StrokeWidthValue!), lineJoin: _lineJoin, lineCap: _lineCap )
//        _DrawView?.setLineCap(cap: _lineCap)
//    }
//    
//    func LineJoin1Chosen(){
//        _lineJoin = CGLineJoin(rawValue: 0)!
//        _BrushPreview?.setLineProperties(color: _StrokeColor.cgColor,alpha: CGFloat(_AlphaValue!), lineWidth: CGFloat(_StrokeWidthValue!), lineJoin: _lineJoin, lineCap: _lineCap )
//        _DrawView?.setLineJoin(join: _lineJoin)
//    }
//    
//    func LineJoin2Chosen(){
//        _lineJoin = CGLineJoin(rawValue: 1)!
//        _BrushPreview?.setLineProperties(color: _StrokeColor.cgColor,alpha: CGFloat(_AlphaValue!), lineWidth: CGFloat(_StrokeWidthValue!), lineJoin: _lineJoin, lineCap: _lineCap )
//        _DrawView?.setLineJoin(join: _lineJoin)
//    }
//    
//    func LineJoin3Chosen(){
//        _lineJoin = CGLineJoin(rawValue: 2)!
//        _BrushPreview?.setLineProperties(color: _StrokeColor.cgColor,alpha: CGFloat(_AlphaValue!), lineWidth: CGFloat(_StrokeWidthValue!), lineJoin: _lineJoin, lineCap: _lineCap )
//        _DrawView?.setLineJoin(join: _lineJoin)
//    }
//    
//    
//    func StrokeWidthChanged(slider : UISlider)
//    {
//        _StrokeWidthValue = slider.value * 50;
//        //_StrokeWidthText.text = NSString(format: "%.1f", _StrokeWidthValue!) as String
//        _BrushPreview?.setLineProperties(color: _StrokeColor.cgColor,alpha: CGFloat(_AlphaValue!), lineWidth: CGFloat(_StrokeWidthValue!), lineJoin: _lineJoin, lineCap: _lineCap )
//        _DrawView?.setStrokeWidth(width: CGFloat(_StrokeWidthValue!))
//    }
//    
//    func alphaValueChanged(slider : UISlider)
//    {
//        _AlphaValue = slider.value * 255;
//        //_AlphaValueText.text = NSString(format: "%.0f", _AlphaValue!) as String
//        _BrushPreview?.setLineProperties(color: _StrokeColor.cgColor,alpha: CGFloat(_AlphaValue!), lineWidth: CGFloat(_StrokeWidthValue!), lineJoin: _lineJoin, lineCap: _lineCap )
//        _DrawView?.setColor(color: _StrokeColor)
//    }
//    
//    func knobChanged()
//    {
//        _StrokeColor = UIColor(displayP3Red: calculateAngleToRGB(angle: (_BrushChooserStack?.colorChooser?.knobViewRed?.angle)!), green: calculateAngleToRGB(angle: (_BrushChooserStack?.colorChooser?.knobViewGreen?.angle)!), blue: calculateAngleToRGB(angle: (_BrushChooserStack?.colorChooser?.knobViewBlue?.angle)!), alpha: 255)//CGFloat(_AlphaValue!))
//        _RedValueText.text = NSString(format: "%.0f", (calculateAngleToRGB(angle: (_BrushChooserStack?.colorChooser?.knobViewRed?.angle)!)*255)) as String
//        _RedValueText.textColor = UIColor(displayP3Red: calculateAngleToRGB(angle: (_BrushChooserStack?.colorChooser?.knobViewRed?.angle)!), green: 0, blue: 0, alpha: 255)
//        _GreenValueText.text = NSString(format: "%.0f", (calculateAngleToRGB(angle: (_BrushChooserStack?.colorChooser?.knobViewGreen?.angle)!)*255)) as String
//        _GreenValueText.textColor = UIColor(displayP3Red: 0, green: calculateAngleToRGB(angle: (_BrushChooserStack?.colorChooser?.knobViewGreen?.angle)!), blue: 0, alpha: 255)
//        _BlueValueText.text = NSString(format: "%.0f", (calculateAngleToRGB(angle: (_BrushChooserStack?.colorChooser?.knobViewBlue?.angle)!)*255)) as String
//        _BlueValueText.textColor = UIColor(displayP3Red: 0, green: 0, blue: calculateAngleToRGB(angle: (_BrushChooserStack?.colorChooser?.knobViewBlue?.angle)!), alpha: 255)
//        _BrushPreview?.setLineProperties(color: _StrokeColor.cgColor,alpha: CGFloat(_AlphaValue!), lineWidth: CGFloat(_StrokeWidthValue!), lineJoin: _lineJoin, lineCap: _lineCap )
//        _DrawView?.setColor(color: _StrokeColor)
//    }
//    
//    func calculateAngleToRGB(angle : CGFloat) -> CGFloat
//    {
//        //let RGBvalue : CGFloat = (angle + ((CGFloat.pi))) * 255 / (2*(CGFloat.pi))
//        let RGBvalue : CGFloat = (angle + ((CGFloat.pi))) / (2*(CGFloat.pi))
//        return RGBvalue
//    }
    
    func newDrawing(){
        _navigationController?.pushViewController(_drawViewController!, animated: true)
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
}

