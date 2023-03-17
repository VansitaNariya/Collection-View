//
//  ViewController.swift
//  Collection View
//
//  Created by R92 on 19/02/35.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var arr = Array<String>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 1...30
        {
            arr.append(i.description)
        }
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let abc = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        abc.backgroundColor = .systemBlue
        return abc
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 200)
    }
}

