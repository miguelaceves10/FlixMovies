//
//  MovieDetailsViewController.swift
//  FlixMovies
//
//  Created by Miguel Aceves on 2/4/19.
//  Copyright © 2019 Miguel Aceves. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {

	@IBOutlet var backdropView: UIImageView!
	@IBOutlet var posterView: UIImageView!
	@IBOutlet var titleLabel: UILabel!
	@IBOutlet var sypnosisLabel: UILabel!
	
	
	var movie: [String:Any]!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
		
		
		titleLabel.text = movie["title"] as? String
		titleLabel.sizeToFit()
		sypnosisLabel.text = movie["overview"] as? String
		sypnosisLabel.sizeToFit()
		let baseURL = "https://image.tmdb.org/t/p/w185"
		let posterPath = movie["poster_path"] as! String
		let posterUrl = URL(string: baseURL + posterPath)
	
		posterView.af_setImage(withURL: posterUrl!)
		
		
		let backdropPath = movie["backdrop_path"] as! String
		let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
		
		backdropView.af_setImage(withURL: backdropUrl!)
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
