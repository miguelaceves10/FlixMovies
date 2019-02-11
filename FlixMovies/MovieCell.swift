//
//  MovieCell.swift
//  FlixMovies
//
//  Created by Miguel Aceves on 2/3/19.
//  Copyright © 2019 Miguel Aceves. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {

	@IBOutlet var titleLabel: UILabel!
	@IBOutlet var sypnosisLabel: UILabel!
	@IBOutlet var posterView: UIImageView!
	
	
	override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
