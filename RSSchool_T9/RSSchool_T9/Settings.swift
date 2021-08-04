//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Татьяна Лузанова
// On: 31.07.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit

class Settings: UIViewController {
    
    private var data = ["Draw stories", "Stroke color"]
    let table = UITableView.init(frame: CGRect(x: 20, y: 25, width: 300, height: 20))
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let aSwitc = UISwitch(frame: CGRect(x: 290, y: 5, width: 10, height: 5))
        let button = UIButton (frame: CGRect(x: 20, y: 166, width: 374, height: 43))
        button.backgroundColor = .clear
        button.addTarget(self, action: #selector(strokeColorTap(_:)), for: .touchUpInside)
        
        self.navigationItem.title = "Settings"
        view.backgroundColor = .lightGray
        self.table.layer.cornerRadius = 10
        

        view.addSubview(self.table)
        self.table.addSubview(aSwitc)
        view.addSubview(button)
        
        self.table.register(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        self.updateLayout(with: self.view.frame.size)
        self.table.dataSource = self
       
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
       super.viewWillTransition(to: size, with: coordinator)
       coordinator.animate(alongsideTransition: { (contex) in
          self.updateLayout(with: size)
       }, completion: nil)
    }
    private func updateLayout(with size: CGSize) {
        self.table.frame = CGRect.init(x: 20, y: 123, width: 374, height: 86)

    }
    @objc func strokeColorTap(_ sender: UIButton) {
        let colors = Colors()
        self.navigationController?.pushViewController(colors, animated: true)
        print("tap")
    }
    
}

extension Settings: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.table.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.textLabel?.text = self.data[indexPath.row]
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch tableView {
        case self.table:
            return self.data.count
        default:
            return 0
        }
    }
    
}

class TableViewCell: UITableViewCell {
    
}
