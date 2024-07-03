//
//  AboutBookViewController.swift
//  secondHomework
//
//  Created by Damir Rakhmatullin on 3.07.24.
//

import UIKit

class AboutBookViewController: UIViewController {
    
    var imageAbout: UIImage?
    var name: String?
    var author: String?
    
    
    @IBOutlet weak var buttonAddToFavourites: UIButton!
    @IBOutlet weak var descriptionLabel: UITextView!
    @IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var authorLable: UILabel!
    
    var descriptionAboutBook: Dictionary<String, String> = ["Портрет Дориана Грея": "Портрет Дориана Грея Оскара Уайльда — это история о молодом человеке, который желает оставаться вечно молодым и красивым. Его желание сбывается благодаря магическому портрету, который стареет и изменяется вместо него, отражая все его грехи и преступления. Дориан ведет жизнь в роскоши и разврате, в то время как его портрет становится все более ужасным. В конце концов, не в силах больше смотреть на свое истинное лицо, Дориан уничтожает портрет, что приводит к его смерти и возвращению портрета к первоначальному виду.","Противостояние": "Противостояние Стивена Кинга — это постапокалиптический роман, в котором почти всё население Земли уничтожено супергриппом. Главные герои, включая Стюарта Редмана, Фрэнни Голдсмит и Гарольда Лаудера, переживают пандемию и сталкиваются с выбором между светом и тьмой, представленными в виде двух противоположных сил, собирающих выживших вокруг себя. Герои объединяются в городе Боулдер, Колорадо, под руководством Матушки Абагейл, старой женщины, которая становится их духовным лидером. Они строят новое общество, борясь с внутренними и внешними угрозами, включая тех, кто следует за Тёмным Человеком, стремящимся уничтожить их.", "Великий Гэтсби": "«Великий Гэтсби» — роман Фрэнсиса Скотта Фицджеральда, опубликованный в 1925 году. Считается основополагающим произведением об ошибочности американской мечты. В романе рассказывается о молодом человеке Джее Гэтсби, который, влюбившись в женщину из социальной элиты, тратит много денег, пытаясь завоевать её любовь. Она выходит замуж за человека из своего социального слоя, и он умирает, разочаровавшись в концепции self-made man."]

    
    func config(name: String, author: String, imageAbout: UIImage) {
        self.name = name
        self.author = author
        self.imageAbout = imageAbout
    }
    
    
    
    @IBAction func addToFavouritesOnClicked(_ sender: Any) {
        switch name {
        case "Портрет Дориана Грея":
            UserDefaults.standard.set(true, forKey: "Портрет Дориана Грея")
        case "Противостояние":
            UserDefaults.standard.set(true, forKey:"Противостояние")
        
        case "Великий Гэтсби":
            UserDefaults.standard.set(true, forKey: "Великий Гэтсби")
        default:
            print("oh")
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLable.text = name
        authorLable.text = author
        coverImage.image = imageAbout
        descriptionLabel.text = descriptionAboutBook[nameLable.text!]
        buttonAddToFavourites.layer.cornerRadius = 8
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
