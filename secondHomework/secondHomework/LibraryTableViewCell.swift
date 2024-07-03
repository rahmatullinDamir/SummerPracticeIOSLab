//
//  LibraryTableViewCell.swift
//  secondHomework
//
//  Created by Damir Rakhmatullin on 3.07.24.
//

import UIKit

class LibraryTableViewCell: UITableViewCell {
    
    @IBOutlet weak var descriptionLable: UILabel!
    @IBOutlet weak var authorLable: UILabel!
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var coverImage: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        nameLable.text = nil
        authorLable.text = nil
        descriptionLable.text = nil
        coverImage.image = nil
        
    }
    
    func config(book: Book) {
        nameLable.text = book.name
        authorLable.text = book.author
        descriptionLable.text = book.description
        coverImage.image = book.image
        
        guard let button = UserDefaults.standard.value(forKey: nameLable.text!) else {return}
        if (button) as! Bool {
            likeButton.setImage(UIImage(resource: .likedIcon), for: UIControl.State.normal
            )
           
        }
    }
}
