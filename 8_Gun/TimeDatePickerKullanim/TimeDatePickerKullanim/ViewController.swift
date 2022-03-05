//
//  ViewController.swift
//  TimeDatePickerKullanim
//
//  Created by osmanyesil on 3/2/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfTarih: UITextField!
    @IBOutlet weak var tfSaat: UITextField!
    
    var datePicker:UIDatePicker?
    var timePicker:UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        tfTarih.inputView = datePicker
        if #available(iOS 13.4, *){
            datePicker?.preferredDatePickerStyle = .wheels
        }
        
        timePicker = UIDatePicker()
        timePicker?.datePickerMode = .time
        tfSaat.inputView = timePicker
        if #available(iOS 13.4, *){
            timePicker?.preferredDatePickerStyle = .wheels
        }
        
        let dokunmaAlgilama = UITapGestureRecognizer(target: self, action:#selector(dokunmaAlgilamaMetod))
        view.addGestureRecognizer(dokunmaAlgilama)
        
        //Datepicker değiştiğinde değerini al
        datePicker?.addTarget(self, action: #selector(self.tarihGoster(uiDatePicker:)), for: .valueChanged)
        timePicker?.addTarget(self, action: #selector(self.saatGoster(uiDatePicker:)), for: .valueChanged)
    }

    @objc func dokunmaAlgilamaMetod(){
        print("Ekrana dokunuldu.")
        view.endEditing(true) //view üzerindeki editleme işlemlerini bitirir. Keyboard gizleme
    }
    
    @objc func tarihGoster(uiDatePicker:UIDatePicker){
        let tarihFormati = DateFormatter()
        tarihFormati.dateFormat = "MM/dd/yyyy"
        let alinanTarih = tarihFormati.string(from: uiDatePicker.date)
        tfTarih.text = alinanTarih
    }
    
    @objc func saatGoster(uiDatePicker:UIDatePicker){
        let saatFormati = DateFormatter()
        saatFormati.dateFormat = "hh:mm"
        let alinanSaat = saatFormati.string(from: uiDatePicker.date)
        tfSaat.text = alinanSaat
    }

}

