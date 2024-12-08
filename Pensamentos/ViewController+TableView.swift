//
//  File.swift
//  Pensamentos
//
//  Created by Pedro Henrique Freire de Oliveira on 08/12/24.
//
import UIKit

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        pensamentos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let celula = tableView.dequeueReusableCell(withIdentifier: "celula", for: indexPath) as? TableViewCell else {
            return UITableViewCell()
        }
        celula.setupCelula(text: pensamentos[indexPath.row])
        return celula
    }
}
