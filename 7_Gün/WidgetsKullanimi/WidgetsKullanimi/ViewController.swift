//
//  ViewController.swift
//  WidgetsKullanimi
//
//  Created by osmanyesil on 2/28/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblSonuc: UILabel!
    @IBOutlet weak var textfieldGirdi: UITextField!
    @IBOutlet weak var mSwitch: UISwitch!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var labelSlider: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    @IBOutlet weak var labelStepper: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelSlider.text = String(Int(slider.value))
        indicator.isHidden = true
    }
    
    @IBAction func buttonYap(_ sender: Any) {
        if let alinanVeri = textfieldGirdi.text {
            lblSonuc.text = alinanVeri
        }
    }
    
    @IBAction func buttonResim1(_ sender: Any) {
        imageView.image = UIImage(named: "resim1")
    }
    
    @IBAction func buttonResim2(_ sender: Any) {
        imageView.image = UIImage(named: "resim2")
    }
    
    @IBAction func switchKonumDegistir(_ sender: UISwitch) {
        if sender.isOn { //Switch Açık
            print("Switch : ON")
        }else { //Switch Kapalı
            print("Switch : OFF")
        }
    }
    @IBAction func segmentedDegisimKontrol(_ sender: UISegmentedControl) {
        let secilenIndeks = sender.selectedSegmentIndex
        print("Seçim : \(sender.titleForSegment(at: secilenIndeks)!)")
    }
    
    @IBAction func sliderDegisimKontrol(_ sender: UISlider) {
        labelSlider.text = String(Int(sender.value))
    }
    @IBAction func stepperDegisimKontrol(_ sender: UIStepper) {
        labelStepper.text = String(Int(sender.value))
    }
    
    @IBAction func buttonBasla(_ sender: Any) {
        indicator.isHidden = false
        indicator.startAnimating()
    }
    
    @IBAction func buttonDur(_ sender: Any) {
        indicator.isHidden = true
        indicator.stopAnimating()
    }
    
    @IBAction func buttonGoster(_ sender: Any) {
        print("Switch durum \(mSwitch.isOn)")
        print("Segmented en son seçim : \(segmentedControl.titleForSegment(at: segmentedControl.selectedSegmentIndex)!)")
        print("Slider değer : \(Int(slider.value))")
        print("Stepper değer : \(Int(stepper.value))")
    }
}

