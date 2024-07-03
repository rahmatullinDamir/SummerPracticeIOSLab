//
//  FavouritesViewController.swift
//  secondHomework
//
//  Created by Damir Rakhmatullin on 3.07.24.
//

import UIKit

class FavouritesViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    var dataSource: [Book] = [Book(name: "Противостояние", author: "Стивен Кинг", image: UIImage(resource: .image2)), Book(name: "Портрет Дориана Грея", author: "Оскар Уайлд", image: UIImage(resource: .image)), Book(name: "Великий Гэтсби", author: "Фрэнсис Скотт Фицдджеральд", image: UIImage(resource: .image1)),Book(name: "Противостояние", author: "Стивен Кинг", image: UIImage(resource: .image2)), Book(name: "Портрет Дориана Грея", author: "Оскар Уайлд", image: UIImage(resource: .image)), Book(name: "Великий Гэтсби", author: "Фрэнсис Скотт Фицдджеральд", image: UIImage(resource: .image1))]
    var cnt: Int = 0
    
    @IBOutlet weak var background: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        background.layer.cornerRadius = 32
        collectionView.dataSource = self
        collectionView.delegate = self
       
        // Do any additional setup after loading the view.
    }
}
    
extension FavouritesViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        for i in 0..<dataSource.count  {
            if((UserDefaults.standard.value(forKey:dataSource[i].name) ) != nil) {
                cnt += 1
            }
        }
        return cnt / 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell else {return UICollectionViewCell()}
        
        var index: Int = indexPath.row
        while ((UserDefaults.standard.value(forKey: dataSource[index].name) != nil) != true){
            index += 1
        }
        cell.config(book: dataSource[index])
        
        return cell
         
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 350, height: 151)
    }
    
            
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
