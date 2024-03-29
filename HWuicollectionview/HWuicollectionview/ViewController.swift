//
//  ViewController.swift
//  HWuicollectionview
//
//  Created by Карина Дьячина on 11.01.24.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
//    let watchSFSymbol: UIImageView = UIImageView(image: UIImage(systemName: SFSymbols.watch)?.withRenderingMode(.alwaysTemplate))
//    let airpodsSFSymbol: UIImageView = UIImageView(image: UIImage(systemName: SFSymbols.airpods)?.withRenderingMode(.alwaysTemplate))
//    let mouseSFSymbol: UIImageView = UIImageView(image: UIImage(systemName: SFSymbols.mouse)?.withRenderingMode(.alwaysTemplate))
//    let pencilSFSymbol: UIImageView = UIImageView(image: UIImage(systemName: SFSymbols.pencil)?.withRenderingMode(.alwaysTemplate))
//    let ipadSFSymbol: UIImageView = UIImageView(image: UIImage(systemName: SFSymbols.ipad)?.withRenderingMode(.alwaysTemplate))

    let image = ["applewatch.side.right",
                 "airpods.gen3",
                 "magicmouse",
                 "applepencil.gen1",
                 "ipad.gen2",
                 "homepod",
                 "airpodsmax",
                 "macpro.gen3.fill"]
    override func viewDidLoad() {
        super.viewDidLoad()
    
        setupCollectionView()
        
        //добавление вручную
//        setupWatchSFSymbol()
//        setupAirpodsSFSymbol()
//        setupMouseSFSymbol()
//        setupPencilSFSymbol()
        
    }
    
    func setupCollectionView() {
        collectionView.register(UINib(nibName: "ImageCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ImageCollectionViewCell")
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.reloadData()
        
        let layout = UICollectionViewFlowLayout()
        collectionView.collectionViewLayout = layout
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 100, height: 100)
    }
    
}
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath) as! ImageCollectionViewCell
        cell.configure(with: image[indexPath.item])
        //   let images = image[indexPath.row]
        return cell
    }
    
}
        //добавление вручную
//        private func setupWatchSFSymbol() {
//            watchSFSymbol.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
//            collectionView.addSubview(watchSFSymbol)
//
//        }
//        private func setupAirpodsSFSymbol() {
//            airpodsSFSymbol.frame = CGRect(x: 100, y: 0, width: 100, height: 100)
//            collectionView.addSubview(airpodsSFSymbol)
//
//        }
//        private func setupMouseSFSymbol() {
//            mouseSFSymbol.frame = CGRect(x: 200, y: 0, width: 100, height: 100)
//            collectionView.addSubview(mouseSFSymbol)
//
//        }
//        private func setupPencilSFSymbol() {
//            pencilSFSymbol.frame = CGRect(x: 300, y: 0, width: 100, height: 100)
//            collectionView.addSubview(pencilSFSymbol)

     //   }
    
    

