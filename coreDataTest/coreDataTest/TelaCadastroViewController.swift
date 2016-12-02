//
//  TelaCadastroViewController.swift
//  coreDataTest
//
//  Created by Felipe Malta on 03/10/16.
//  Copyright © 2016 4tap. All rights reserved.
//

import UIKit
import CoreData

class TelaCadastroViewController: UIViewController {

    @IBOutlet var lblCor: UITextField!
    @IBOutlet var lblNome: UITextField!
    @IBOutlet var lblModelo: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnSalvar(_ sender: AnyObject) {
        
        let carroTemp = NSEntityDescription.insertNewObject(forEntityName: "Carro", into: context) as! Carro
        carroTemp.nome = self.lblNome.text
        carroTemp.modelo = self.lblModelo.text
        carroTemp.cor = self.lblCor.text
        
        do {
            try context.save()
            self.performSegue(withIdentifier: "unwindToMenu", sender: self)
        } catch {
            print("Failure to save context: \(error)")
        }
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
