//
//  FinallyLessonVC.swift
//  HowToBecomeAYoutuber
//
//  Created by Salih KIR on 8.06.2022.
//

import Foundation
import UIKit

class FinallyLessonVC: UIViewController ,UITableViewDelegate , UITableViewDataSource, FinallyFlowDelegateOutputs {
   
    
  
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
        let data = viewModel.data[indexPath.row]
        youtubecell.cellLabel.text = data.baslik
        youtubecell.cellİmageView.downloaded(from: data.icon)
        return youtubecell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        AppRouter.shared.showExpalationPage(self.navigationController, data: viewModel.data[indexPath.row])
    }
    func reloadData() {
        tabelViewFinallyLesson.reloadData()
    }

}

