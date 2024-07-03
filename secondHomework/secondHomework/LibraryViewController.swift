//
//  LibraryViewController.swift
//  secondHomework
//
//  Created by Damir Rakhmatullin on 3.07.24.
//

import UIKit

class Book {
    var name: String
    var author: String
    var description: String
    var image: UIImage
    
    init(name: String, author: String, image: UIImage) {
        self.name = name
        self.author = author
        self.description = "Подробнее"
        self.image = image
    }
}

class LibraryViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var background: UIView!
    var myBook: Book?
    var dataSource: [Book] = [Book(name: "Противостояние", author: "Стивен Кинг", image: UIImage(resource: .image2)), Book(name: "Портрет Дориана Грея", author: "Оскар Уайлд", image: UIImage(resource: .image)), Book(name: "Великий Гэтсби", author: "Фрэнсис Скотт Фицдджеральд", image: UIImage(resource: .image1)),Book(name: "Противостояние", author: "Стивен Кинг", image: UIImage(resource: .image2)), Book(name: "Портрет Дориана Грея", author: "Оскар Уайлд", image: UIImage(resource: .image)), Book(name: "Великий Гэтсби", author: "Фрэнсис Скотт Фицдджеральд", image: UIImage(resource: .image1))]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        background.layer.cornerRadius = 32
        
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "about" {
            if let destVC = segue.destination as? AboutBookViewController {
                destVC.author = myBook?.author
                destVC.name = myBook?.name
                destVC.imageAbout = myBook?.image            }
        }
    }
   
}

extension LibraryViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "LibraryTableViewCell") as? LibraryTableViewCell else {return UITableViewCell()}
        cell.config(book: dataSource[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        151
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myBook = dataSource[indexPath.row]
        performSegue(withIdentifier: "about", sender: self)
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

