//
//  CollectionView.swift
//  BrushPalette
//
//  Created by Christi Kim on 2/22/17.
//  Copyright © 2017 u0830932. All rights reserved.
//

import UIKit

class CollectionView: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{
    @available(iOS 6.0, *)
    @available(iOS 6.0, *)
    
    private var imageListView: UICollectionView{ return view as! UICollectionView}
    var _model: ModelClass = ModelClass.sharedInstance;
    var _picture: DrawView?
    
    override func loadView() {
        let imageLayout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        view = UICollectionView(frame: CGRect.zero, collectionViewLayout: imageLayout)
    }
    
    override func viewDidLoad() {
        imageListView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: NSStringFromClass(UICollectionViewCell.self))
        imageListView.dataSource = self
        imageListView.delegate = self
    }
    
    func getNumberOfImages(collectionView: UICollectionView) -> Int {
        return (_model._allPaintings?.count)!
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: NSStringFromClass(UICollectionViewCell.self), for: indexPath as IndexPath)
        cell.backgroundColor = UIColor.clear
        cell.contentView.addSubview(_picture!)
        
        return cell
    }
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (_model._allPaintings?.count)!
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let drawingViewController: DrawingViewController = DrawingViewController();
        drawingViewController.view = _picture
        
        navigationController?.pushViewController(drawingViewController, animated: true)
    }
    
}
