//
//  JsonTableViewCell.swift
//  GithubDemo
//
//  Created by Apple on 2017/2/16.
//  Copyright © 2017年 codepath. All rights reserved.
//

import UIKit

class JsonTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var starsLabel: UILabel!
    @IBOutlet weak var forksLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    var repos: GithubRepo! {
        didSet{
            self.nameLabel.text = repos.name!
            self.ownerLabel.text = "by "+repos.ownerHandle!
            self.starsLabel.text = "\(repos.stars!)"
            self.forksLabel.text = "\(repos.forks!)"
            self.descriptionLabel.text = repos.descriptionJson
            self.avatarImageView.setImageWith(URL(string:repos.ownerAvatarURL!)!)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
