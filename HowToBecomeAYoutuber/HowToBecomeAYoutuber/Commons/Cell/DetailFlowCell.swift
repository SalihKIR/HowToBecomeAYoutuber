//
//  DetailFlowCell.swift
//  HowToBecomeAYoutuber
//
//  Created by Salih KIR on 19.05.2022.
//

import UIKit

class DetailFlowCell: UITableViewCell {
    
    @IBOutlet weak var emptyView: UIView!
    @IBOutlet weak var cellViewFirst: UIView!
    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var cellİmageView: UIImageView!
    
    @IBOutlet weak var stackViewNear: UIStackView!
    @IBOutlet weak var labelViewcell: UIView!
    @IBOutlet weak var imageViewcell: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
//        stackViewNear.layer.cornerRadius = 10
//        imageViewcell.layer.cornerRadius = 10
//        labelViewcell.layer.cornerRadius = 10
        imageViewcell.layer.cornerRadius = 30
        //labelViewcell.roundCorners(with: .layerMinXMinYCorner, radius: 10)
        labelViewcell.layer.cornerRadius = 30
        labelViewcell.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMaxXMaxYCorner]
        imageViewcell.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
       // labelViewcell.roundCornerss(with: .layerMinXMaxYCorner, radius: 10)
        //labelViewcell.layer.cornerRadius = 10
        //labelViewcell.roundCorners(with: .layerMaxXMinYCorner, radius: 10)
        //labelViewcell.roundCorners(corners: .topLeft , radius: 10)
        //labelViewcell.roundCorners(corners: .bottomLeft, radius: 10)
        //labelViewcell.round(corners: .topLeft, radius: 10)
//        labelViewcell.round(corners: .bottomLeft, .topLeft , radius: 10 , radius2: 10)
        //labelViewcell.roundCorners(corners: .topRight, radius: 10)
       // imageViewcell.roundCorners(with: .layerMinXMaxYCorner, radius: 10)
        //labelViewcell.roundCorners(corners: [.topLeft, .topRight], radius: 30)
        
        // Configure the view for the selected state
    }
    
    
    func setData(data: Datum) {
        self.cellLabel.text = data.baslik
        
    }
}
extension DetailFlowCell {
    static var identifier: String {
        return String(describing: self)
    }
    
    static var nibName: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
}
extension UIView {
    func roundCornerss(with CACornerMask: CACornerMask, radius: CGFloat){
        self.layer.cornerRadius = radius
        self.layer.maskedCorners = [CACornerMask]
    }

}
extension UIView {
    func roundCorners(with CACornerMask: CACornerMask, radius: CGFloat){
        self.layer.cornerRadius = radius
        self.layer.maskedCorners = [CACornerMask]
    }

}


//extension UIView {
//   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
//        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
//        let mask = CAShapeLayer()
//        mask.path = path.cgPath
//        layer.mask = mask
//    }
//}

//extension UIView {
//    func round(corners: UIRectCorner ,corners2: UIRectCorner , radius: CGFloat , radius2: CGFloat) {
//    let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
//    let mask = CAShapeLayer()
//    mask.path = path.cgPath
//    self.layer.mask = mask
//  }
//}

