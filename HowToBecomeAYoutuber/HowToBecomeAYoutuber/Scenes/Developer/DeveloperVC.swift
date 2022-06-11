//
//  DeveloperVC.swift
//  HowToBecomeAYoutuber
//
//  Created by Salih KIR on 1.06.2022.
//
//
import Foundation
import UIKit
class DeveloperVC: UIViewController {
    @IBOutlet weak var imageView: UIView!
    
    @IBOutlet weak var developerImage: UIImageView!
    
    @IBOutlet weak var developerTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        developerTextView.layer.cornerRadius = 10
        developerTextView.text = "Düzce Üniversitessi 4 Sınıf 'Elektrik Elektronik Mühendisliği Öğrencisiyim' 2 senedir iOS üzerine çalışıp uygulama gerçekleştirmekteyim. Bunun ile berabe gelecek hayatımı iOS üzerine yoğunlaşarak geçirmek istiyorum..."
        imageView.layer.cornerRadius = 10
        developerImage.layer.cornerRadius = 10
        developerImage.image = UIImage(named: "Person")
}
    
}
