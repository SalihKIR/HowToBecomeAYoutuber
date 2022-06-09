//
//  FinallyLessonVC.swift
//  HowToBecomeAYoutuber
//
//  Created by Salih KIR on 8.06.2022.
//

import Foundation
import UIKit

class FinallyLessonVC: UIViewController ,UITableViewDelegate , UITableViewDataSource, FinallyFlowDelegateOutputs {
    func reloadData() {
        tabelViewFinallyLesson.reloadData()
    }
    
  
    var viewModel: FinallyFlowVM!
    @IBOutlet weak var tabelViewFinallyLesson: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //viewModel.getLessonData()
        viewModel.delegate = self
        tabelViewFinallyLesson.delegate = self
        tabelViewFinallyLesson.dataSource = self
        tabelViewFinallyLesson.register(DetailFlowCell.nibName, forCellReuseIdentifier: DetailFlowCell.identifier)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tabelViewFinallyLesson.layer.cornerRadius = 10
        let youtubecell = tabelViewFinallyLesson.dequeueReusableCell(withIdentifier: DetailFlowCell.identifier, for: indexPath) as! DetailFlowCell
        youtubecell.cellLabel.text = viewModel.data[indexPath.row].baslik
        return youtubecell
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
    }
    

}

