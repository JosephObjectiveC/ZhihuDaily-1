//
//  StoryCell.swift
//  Zhihu Daily
//
//  Created by kemchenj on 7/23/16.
//  Copyright © 2016 kemchenj. All rights reserved.
//

import UIKit
//import Kingfisher

@IBDesignable
class StoryCell: UITableViewCell {
    
    @IBOutlet weak var thumbNail: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    var story: Story! {
        didSet {
            self.titleLabel.text = story.title
            self.thumbNail.af_setImage(withURL: story.thumbNailURL)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.selectionStyle = .gray
    }

    func configure(for story: Story) {
        self.story = story
    }

}
