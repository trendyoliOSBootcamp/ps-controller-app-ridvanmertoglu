//
//  ViewController.swift
//  ps5ControllerApp
//
//  Created by Rıdvan Mertoğlu on 2.05.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet private weak var controllerTabView: UIView!
    @IBOutlet private weak var devicesTabView: UIView!
    @IBOutlet private weak var mousesTabView: UIView!
    
    let products: [Product] = [.init(image:UIImage(named: "blackPsController")),.init(image: UIImage(named: "whitePsController"))]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bg.png")
        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        collectionView.dataSource = self
        collectionView.delegate = self
        
        collectionView.register(.init(UINib(nibName: "ControllerCollectionViewCell", bundle: .main)), forCellWithReuseIdentifier: "psControllerIdentifier")
    }
    
    @IBAction private func basketButtonTapped(_ sender: Any) {
        print("basket ")
    }
}

extension ViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "psControllerIdentifier", for: indexPath) as? ControllerCollectionViewCell else {return .init()}
        let product = products[indexPath.item]
        cell.configure(image: product.image)
        return cell
    }
}

extension UIViewController: UICollectionViewDelegateFlowLayout {
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = (collectionView.frame.width - 52) / 1.382
        return .init(width: cellWidth, height: cellWidth / 0.7938)
    }
}

extension UIViewController: UICollectionViewDelegate {
    
}

