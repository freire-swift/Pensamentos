//
//  ViewController.swift
//  Pensamentos
//
//  Created by Pedro Henrique Freire de Oliveira on 08/12/24.
//

import UIKit

class ViewController: UIViewController{
    
    var pensamentos: [String] = []
    
    @IBAction func pensarBotao(_ sender: Any) {
        pensamentosLabel.isHidden = false
        pensamentos.append(pensamentosTexto.text)
        tableViewPensamentos.reloadData()
    }
    @IBOutlet weak var pensamentosLabel: UILabel!
    @IBOutlet weak var pensamentosTexto: UITextView!
    @IBOutlet weak var tableViewPensamentos: UITableView!
    
    private func setup() {
        pensamentosLabel.isHidden = true
        
        //inicializaçao
        tableViewPensamentos.dataSource = self
        pensamentosTexto.delegate = self
        
        //elementos visuais do conteiner de texto do usuário
        pensamentosTexto.layer.cornerRadius = 10
        pensamentosTexto.layer.borderWidth = 1
        pensamentosTexto.layer.borderColor = UIColor.lightGray.cgColor
        pensamentosTexto.textColor = .lightGray
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        // Do any additional setup after loading the view.
    }


}



