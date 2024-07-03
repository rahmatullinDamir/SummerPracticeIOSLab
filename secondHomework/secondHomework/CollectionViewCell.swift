//
//  CollectionViewCell.swift
//  secondHomework
//
//  Created by Damir Rakhmatullin on 3.07.24.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var authorLable: UILabel!
    override func prepareForReuse() {
        super.prepareForReuse()
        nameLable.text = nil
        authorLable.text = nil
        coverImage.image = nil
        
    }
    
    func config(book: Book) {
        nameLable.text = book.name
        authorLable.text = book.author
        coverImage.image = book.image
    }
}
