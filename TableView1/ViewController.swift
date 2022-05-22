//
//  ViewController.swift
//  TableView1
//
//  Created by 今橋浩樹 on 2022/05/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableview: UITableView!
    // 配列を追加
    var languages: [String] = ["Swift", "Java", "Ruby", "Javascript", "PHP"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableview.delegate = self
        tableview.dataSource = self
    }
    
    // TableViewに表示するセルの数(ここでは配列の個数を参照している)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return languages.count
    }
    
    // Cellに表示するのは配列の中身で、indexPath.rowを要素数にして引き出した値をCellに当てはめている
    // Cellは入れ物で、配列とindexPathが紐付いている(ので、選択時のindexPath.rowがわかれば、そのデータが取れる)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Testcell", for: indexPath)
        cell.textLabel?.text = languages[indexPath.row]
        return cell
    }
    


}

