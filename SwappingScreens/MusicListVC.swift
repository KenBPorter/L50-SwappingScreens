//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by Ken Porter on 2016-11-18.
//  Copyright © 2016 Ken Porter. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    @IBOutlet weak var songTitleEntry: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.darkGray
    }

    @IBAction func BackButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func ShowThirdScreenPressed(_ sender: Any) {
        // programatically seque to the third screen
        /*
        let songTitle = "Heart of Glass"
         */
        let songTitle = songTitleEntry.text
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC {
            if let song = sender as? String {
                destination.selectedSong = song
            }
        }
    }
    
}
