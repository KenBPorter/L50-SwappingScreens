//
//  PlaySongVC.swift
//  SwappingScreens
//
//  Created by Ken Porter on 2016-11-18.
//  Copyright © 2016 Ken Porter. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {

    
    @IBOutlet weak var SongTitleLabel: UILabel!

    // var passed in from VC that seques to this VC
    private var _selectedSong:String!
    
    var selectedSong: String {
        get {
            return _selectedSong
        } set {
            _selectedSong = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        SongTitleLabel.text = _selectedSong
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
  
}
