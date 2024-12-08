//
//  ViewController + TextView.swift
//  Pensamentos
//
//  Created by Pedro Henrique Freire de Oliveira on 08/12/24.
//
import UIKit

extension ViewController: UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.text == "Como está se sentindo hoje?" {
            textView.text = ""
            textView.textColor = .black
        }
    }
    
}
