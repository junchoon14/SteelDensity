//
//  ViewController.swift
//  SteelDensity
//
//  Created by Jason Hsu on 2018/7/27.
//  Copyright © 2018 junchoon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var cVolumeLabel: UILabel!
    @IBOutlet weak var tVolumeLabel: UILabel!
    @IBOutlet weak var rVolumeLabel: UILabel!
    @IBOutlet weak var cRadius: UITextField!
    @IBOutlet weak var cHeight: UITextField!
    @IBOutlet weak var t1Radius: UITextField!
    @IBOutlet weak var t2Radius: UITextField!
    @IBOutlet weak var tLength: UITextField!
    @IBOutlet weak var rLength: UITextField!
    @IBOutlet weak var rWidth: UITextField!
    @IBOutlet weak var rHeight: UITextField!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label7: UILabel!
    @IBOutlet weak var label8: UILabel!
    @IBOutlet weak var label9: UILabel!
    @IBOutlet weak var label10: UILabel!
    
    @IBAction func cCalButton(_ sender: Any) {
        let cRText = cRadius.text
        let cHText = cHeight.text
        
        if let cRText = cRText, let cHText = cHText {
            let cVolume = Double.pi * Double(cRText)! * Double(cRText)! * Double(cHText)!
            t1Radius.text = ""
            t2Radius.text = ""
            tLength.text = ""
            rWidth.text = ""
            rHeight.text = ""
            rLength.text = ""
            tVolumeLabel.text = ""
            rVolumeLabel.text = ""
            cVolumeLabel.text = String(format:"%.1f", cVolume)
            label1.text = String(format:"%.1f", 2.70 * cVolume)
            label2.text = String(format:"%.1f", 2.80 * cVolume)
            label3.text = String(format:"%.1f", 8.94 * cVolume)
            label4.text = String(format:"%.1f", 7.20 * cVolume)
            label5.text = String(format:"%.1f", 7.85 * cVolume)
            label6.text = String(format:"%.1f", 7.93 * cVolume)
            label7.text = String(format:"%.1f", 7.98 * cVolume)
            label8.text = String(format:"%.1f", 7.85 * cVolume)
            label9.text = String(format:"%.1f", 1.70 * cVolume)
            label10.text = String(format:"%.1f", 1.18 * cVolume)
            view.endEditing(true)
        }
    }
    
    @IBAction func tCalButton(_ sender: Any) {
        let t1RText = t1Radius.text
        let t2RText = t2Radius.text
        let tLText = tLength.text
        
        if let t1RText = t1RText, let t2RText = t2RText, let tLText = tLText {
            let tVolume = fabs((Double.pi * Double(t1RText)! * Double(t1RText)!) - (Double.pi * Double(t2RText)! * Double(t2RText)!)) * Double(tLText)!
            rWidth.text = ""
            rHeight.text = ""
            rLength.text = ""
            cRadius.text = ""
            cHeight.text = ""
            rVolumeLabel.text = ""
            cVolumeLabel.text = ""
            tVolumeLabel.text = String(format:"%.1f", tVolume)
            label1.text = String(format:"%.1f", 2.70 * tVolume)
            label2.text = String(format:"%.1f", 2.80 * tVolume)
            label3.text = String(format:"%.1f", 8.94 * tVolume)
            label4.text = String(format:"%.1f", 7.20 * tVolume)
            label5.text = String(format:"%.1f", 7.85 * tVolume)
            label6.text = String(format:"%.1f", 7.93 * tVolume)
            label7.text = String(format:"%.1f", 7.98 * tVolume)
            label8.text = String(format:"%.1f", 7.85 * tVolume)
            label9.text = String(format:"%.1f", 1.70 * tVolume)
            label10.text = String(format:"%.1f", 1.18 * tVolume)
            view.endEditing(true)
        }
    }
    
    @IBAction func rCalButton(_ sender: Any) {
        let rWText = rWidth.text
        let rHText = rHeight.text
        let rLText = rLength.text
        
        if let rWText = rWText, let rHText = rHText, let rLText = rLText {
            let rVolume:Double = Double(rWText)! * Double(rHText)! * Double(rLText)!
            cRadius.text = ""
            cHeight.text = ""
            t1Radius.text = ""
            t2Radius.text = ""
            tLength.text = ""
            cVolumeLabel.text = ""
            tVolumeLabel.text = ""
            rVolumeLabel.text = String(format:"%.1f", rVolume)
            label1.text = String(format:"%.1f", 2.70 * rVolume)
            label2.text = String(format:"%.1f", 2.80 * rVolume)
            label3.text = String(format:"%.1f", 8.94 * rVolume)
            label4.text = String(format:"%.1f", 7.20 * rVolume)
            label5.text = String(format:"%.1f", 7.85 * rVolume)
            label6.text = String(format:"%.1f", 7.93 * rVolume)
            label7.text = String(format:"%.1f", 7.98 * rVolume)
            label8.text = String(format:"%.1f", 7.85 * rVolume)
            label9.text = String(format:"%.1f", 1.70 * rVolume)
            label10.text = String(format:"%.1f", 1.18 * rVolume)
            view.endEditing(true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

