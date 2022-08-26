//
//  ViewController.swift
//  FuniApp
//
//  Created by Surya on 22/08/22.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var academyTableView: UITableView!
  override func viewDidLoad() {
    super.viewDidLoad()
    
    academyTableView.dataSource = self
    
    academyTableView.register(
      UINib(nibName: "AcademyTableViewCell", bundle: nil),
      forCellReuseIdentifier: "AcademyCell"
    )
  }
}

extension ViewController: UITableViewDataSource {
  
  // Digunakan untuk mengatur jumlah item/cell yang muncul dalam TableView
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return dummyAcademyData.count
  }
  
  // Digunakan untuk mengatur tampilan setap item/cell dalam TableView
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    if let cell = tableView.dequeueReusableCell(
      withIdentifier: "AcademyCell",
      for: indexPath
    ) as? AcademyTableViewCell { // Mencari UITableViewCell berdasarkan Identifier.
      
      // MARK: Menetapkan nilai gambar dan nama untuk setiap cell/item
      let academy = dummyAcademyData[indexPath.row]
      cell.academyLabel.text = academy.name
      cell.academyImageView.image = academy.image
      
      // MARK: Mengembalikan cell agar bisa ditampilkan dalam TableView
      return cell
      
    } else {
      
      // MARK: Mengembalikan UITableViewCell ketika cell bernilai nil/null
      return UITableViewCell()
    }
  }
  
}

