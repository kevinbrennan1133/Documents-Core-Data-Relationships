//
//  documentsRealViewController.swift
//  Documents-Core-Data
//
//  Created by Kevin Brennan on 7/6/18.
//  Copyright © 2018 Kevin Brennan. All rights reserved.
//

import UIKit

class documentsViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var textView: UITextView!
    
    var doc: Document?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let doc = doc {
            textField.text = doc.name
            textView.text = doc.content
            title = "Documents"
        } else {
            title = ""
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func textEdit(_ sender: Any) {
        self.title = textField.text
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
