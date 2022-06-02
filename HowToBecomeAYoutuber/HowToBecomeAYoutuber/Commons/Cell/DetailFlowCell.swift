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
        cellViewFirst.layer.cornerRadius = 10
        
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
