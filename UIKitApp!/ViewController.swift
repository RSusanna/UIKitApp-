//
//  ViewController.swift
//  UIKitApp!
//
//  Created by Susanna R on 06.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var segmentedControll: UISegmentedControl!
    @IBOutlet var mainLabel: UILabel!
    
    
    //MARK: Segmented Controll
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        segmentedControll.insertSegment(withTitle: "Third", at: 2, animated: false)
        
        //MARK: Label
        
        mainLabel.text = "" //изначальный текст
        mainLabel.font.withSize(36) //размер шрифта
        mainLabel.textAlignment = .center //текст посередке
        // mainLabel.numberOfLines = 0 если написать так то строчек будет бесконечно кол-во
        mainLabel.numberOfLines =  2
    }
    
    
    
    @IBAction func segmentedControllAction(_ sender: Any) {
        
        switch segmentedControll.selectedSegmentIndex {
        case 0:
            mainLabel.text = "выбран с индексом 0"
            mainLabel.textColor = .brown
        case 1:
            mainLabel.text = "выбран с индексом 1"
            mainLabel.textColor = .green
        case 2:
            mainLabel.text = "выбран с индексом 2"
            mainLabel.textColor = .red
        default: break
        }
        
    }
    
}
