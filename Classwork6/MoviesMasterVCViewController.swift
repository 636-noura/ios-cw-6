//
//  MoviesMasterVCViewController.swift
//  Classwork6
//
//  Created by apple on 7/3/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit

var selectedMovie: Movie = Movie(movieName: "", movieReleaseDate: 0, actors: [""], rating: 0.0, pgRating: "" )
   
class MoviesMasterVCViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setMarvelImages()
                   setDcImages()

    }
        var marvelImages = MarvelMovieData
        var dcImages = DCMovieData
        
        
        func setMarvelImages(){
            marvelImg0.setImage(UIImage(named:marvelImages[0] . movieName ), for: .normal)
            marvelImg1.setImage(UIImage(named:marvelImages[1] . movieName ), for: .normal)
            marvelImg2.setImage(UIImage(named:marvelImages[2] . movieName ), for: .normal)
            marvelImg3.setImage(UIImage(named:marvelImages[3] . movieName ), for: .normal)
            marvelImg4.setImage(UIImage(named:marvelImages[4] . movieName ), for: .normal)
            marvelImg5.setImage(UIImage(named:marvelImages[5] . movieName ), for: .normal)
            
        }
        
        func setDcImages(){
            dcImg0.setImage(UIImage(named:dcImages[0] . movieName ), for: .normal)
            dcImg1.setImage(UIImage(named:dcImages[1] . movieName ), for: .normal)
            dcImg2.setImage(UIImage(named:dcImages[2] . movieName ), for: .normal)
            dcImg3.setImage(UIImage(named:dcImages[3] . movieName ), for: .normal)
            dcImg4.setImage(UIImage(named:dcImages[4] . movieName ), for: .normal)
            dcImg5.setImage(UIImage(named:dcImages[5] . movieName ), for: .normal)
        }
        
     
      
     
    
    
    
    @IBOutlet weak var marvelImg0 : UIButton!
    @IBOutlet weak var marvelImg1 : UIButton!
    @IBOutlet weak var marvelImg2 : UIButton!
    @IBOutlet weak var marvelImg3 : UIButton!
    @IBOutlet weak var marvelImg4 : UIButton!
    @IBOutlet weak var marvelImg5 : UIButton!
    @IBOutlet weak var dcImg0 : UIButton!
    @IBOutlet weak var dcImg1 : UIButton!
    @IBOutlet weak var dcImg2 : UIButton!
    @IBOutlet weak var dcImg3 : UIButton!
    @IBOutlet weak var dcImg4 : UIButton!
    @IBOutlet weak var dcImg5 : UIButton!
    

    
    @IBAction func marvelBtns(_ sender: UIButton) {
        print("Marvel" ,sender.tag )
        let index = sender.tag
        selectedMovie = MarvelMovieData[index]
         performSegue(withIdentifier: "goToMovieDetail", sender: nil)
    }
    
    @IBAction func dcBtns(_ sender: UIButton) {
        print("DC" ,sender.tag )
          let index = sender.tag
        selectedMovie = DCMovieData[index]
        performSegue(withIdentifier: "goToMovieDetail", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let movieController = segue.description as? MovieDetalisVC else {
            fatalError()
        }
        movieController.movieData = selectedMovie
    }
}
  














