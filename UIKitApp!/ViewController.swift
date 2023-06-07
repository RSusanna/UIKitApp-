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
    @IBOutlet var slider: UISlider!
    @IBOutlet var textField: UITextField!
    @IBOutlet var mainButton: UIButton!



    //textField
    
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
        //MARK: Slider
        slider.value = 0
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.minimumTrackTintColor = .green //задали цвет полоске слева от бегунка
        slider.maximumTrackTintColor = .gray //задали цвет полоске справа от бегунка
        slider.thumbTintColor = UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1) // задали цвет бегунка
        
        //MARK: TextField
        textField.backgroundColor = .white
        //MARK: MainButton
      //  mainButton.layer.cornerRadius = 10 // скруглили края
        mainButton.setTitle("готово", for: .normal)
    }
    
    
    @IBAction func mainButtonAction(_ sender: Any) {
        guard let text = textField.text, !text.isEmpty  else { return }
        mainLabel.text = text
        }

    
    
    @IBAction func sliderValue(_ sender: Any) {
        mainLabel.text = String(Int(slider.value))
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
