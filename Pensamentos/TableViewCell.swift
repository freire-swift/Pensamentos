//
//  TableViewCell.swift
//  Pensamentos
//
//  Created by Pedro Henrique Freire de Oliveira on 08/12/24.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var textViewCelula: UITextView!
    func setupCelula(text: String) {
        textViewCelula.text = text
    }
}
