//
//  BusinessCell.swift
//  Yelp
//
//  Created by Tim Barnard on 2/20/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var thumbView: UIImageView!
    @IBOutlet weak var ratingImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var reviewLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var categoriesLabel: UILabel!
    
    var business: Business!
        {
            didSet{
                nameLabel.text = business.name
                distanceLabel.text = business.distance
                reviewLabel.text = "\(business.reviewCount!) Reviews"
                addressLabel.text = business.address
                categoriesLabel.text = business.categories
                thumbView.setImageWithURL(business.imageURL!)
                ratingImageView.setImageWithURL(business.ratingImageURL!)
            }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        thumbView.layer.cornerRadius = 3
        thumbView.clipsToBounds = true
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
        
        // Initialization code
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
