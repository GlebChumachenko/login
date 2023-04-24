//
//  ViewController.swift
//  loginTest
//
//  Created by Gleb Chumachenko on 24.04.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var statusText: UILabel!
    @IBOutlet weak var confirmBtn: UIButton!
    @IBOutlet weak var textField: UITextField!
    @IBAction func confirmPressed(_ sender: Any) {
        viewModel.confirmPressed(login: (textField.text ?? "" ))
    }
    
    
    
    var viewModel = ViewModel()
     
    override func viewDidLoad() {
        super.viewDidLoad()
        tuneUI()
        bindViewModel()
    }
    
    func tuneUI(){
        statusText.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        statusText.text = ""
    }

    func bindViewModel() {
        viewModel.status.bind(listener: { status in
            DispatchQueue.main.async {
                self.statusText.text = status
            }
        })
        
        viewModel.statusColor.bind(listener: {status in
            DispatchQueue.main.async {
                self.statusText.textColor = status
            }
        })
    }
    
   
}

