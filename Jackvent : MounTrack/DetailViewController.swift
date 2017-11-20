//
//  DetailViewController.swift
//  Jackvent : MounTrack
//
//  Created by Becak Holic on 11/19/17.
//  Copyright © 2017 Sam Pramudana. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imgGambar: UIImageView!
    @IBOutlet weak var labelJudul: UILabel!
    @IBOutlet weak var labelIsi: UILabel!
    
    var passJudulTitle:String?
    var passGambarTitle:String?
    var passIsiTitle:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelJudul.text = passJudulTitle
        imgGambar.image = UIImage(named: passGambarTitle!)
        labelIsi.text = passIsiTitle

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
