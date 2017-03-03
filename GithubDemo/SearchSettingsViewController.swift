//
//  SearchSettingsViewController.swift
//  GithubDemo
//
//  Created by Apple on 3/2/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit
protocol SettingsPresentingViewControllerDelegate: class {
    func didSaveSettings(settings: GithubRepoSearchSettings)
    func didCancelSettings()
}
class SearchSettingsViewController: UIViewController {
    var settings: GithubRepoSearchSettings!{
        didSet{
            self.minStarLebl?.text = String(settings.minStars)
            self.slider?.value = Float(settings.minStars)
        }
    }
    
    @IBOutlet weak var minStarLebl: UILabel!{
        didSet{
            self.minStarLebl.text = String(settings.minStars)
        }
    }
    
    var minStars: Int?
    weak var delegate: SettingsPresentingViewControllerDelegate?
    
    @IBOutlet weak var slider: UISlider!{
        didSet{
            self.slider?.value = Float(settings.minStars)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onSlider(_ sender: Any) {
        minStars = Int(slider.value)
        settings.minStars = self.minStars!
        self.minStarLebl.text = String(settings.minStars)
        
    }
    @IBAction func onCancel(_ sender: Any) {
         self.delegate?.didCancelSettings()
        self.dismiss(animated: true, completion: nil)

    }
    
    @IBAction func onSave(_ sender: Any) {
        self.delegate?.didSaveSettings(settings: settings)
        self.dismiss(animated: true, completion: nil)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation

    
}
    


