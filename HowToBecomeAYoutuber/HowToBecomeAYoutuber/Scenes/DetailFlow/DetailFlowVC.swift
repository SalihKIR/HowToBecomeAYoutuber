//
//  DetailFlow.swift
//  HowToBecomeAYoutuber
//
//  Created by Salih KIR on 19.05.2022.
//
import UIKit
public var deneme = "something"

class DetailFlowVC: UIViewController {
    
    
    
    var viewModel: DetailFlowVM!
    
    
    @IBOutlet weak var tableViewYoutube: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.delegate = self
        viewModel.getLessonData()
        
        tableViewYoutube.delegate = self
        tableViewYoutube.dataSource = self
        tableViewYoutube.register(DetailFlowCell.nibName, forCellReuseIdentifier: DetailFlowCell.identifier)
    }
    
    
}

extension DetailFlowVC: DetailFlowVmDelegateOutputs {

    func reloadTableView() {
        self.tableViewYoutube.reloadData()
    }
}

extension DetailFlowVC: UITableViewDelegate , UITableViewDataSource  {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.layer.cornerRadius = 10
        let youtubecell = tableViewYoutube.dequeueReusableCell(withIdentifier: DetailFlowCell.identifier, for: indexPath) as! DetailFlowCell
        youtubecell.setData(data: viewModel.data[indexPath.row])
        //youtubecell.cellLabel.text = viewModel.data[indexPath.row].baslik fonksiyon dışı çalıştırma için kullanılır.
        youtubecell.cellİmageView.downloaded(from: viewModel.data[indexPath.row].icon)
        return youtubecell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let explanation = ExplanationFlowVc.instantiate(storyboard: .explanation)
//        explanation.titleLabel.text = viewModel.data[indexPath.row].baslik
//        explanation.contentsLabel.text = viewModel.data[indexPath.row].icerik
//        navigationController?.pushViewController(explanation, animated: true)
        AppRouter.shared.showExpalationPage(self.navigationController, data: viewModel.data[indexPath.row])
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    func randomselect(){
        
    }
}
//Fotoraf verilerine rahatça ulaştığımız alan
extension UIImageView {
    func downloaded(from url: URL, contentMode mode: ContentMode = .scaleAspectFit) {
        contentMode = mode
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
                else { return }
            DispatchQueue.main.async() { [weak self] in
                self?.image = image
            }
        }.resume()
    }
    func downloaded(from link: String, contentMode mode: ContentMode = .scaleAspectFit) {
        guard let url = URL(string: link) else { return }
        downloaded(from: url, contentMode: mode)
    }
}
