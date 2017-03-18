//
//  CategoryView.swift
//  Real Quiz Assignment 1
//
//  Created by Leban on 2017-03-13.
//  Copyright © 2017 Leban. All rights reserved.
//

import UIKit

class CategoryView: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var categoryPicker: UIPickerView!
    
    var SelectedCategory = "";

    var Categories = ["American Trivia", "Video Game Trivia", "Canadian Trivia", "Movie Trivia", "All"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryPicker.dataSource = self
        categoryPicker.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func backButton(_ sender: UIButton)
    {
        /*let alert = UIAlertController(title: "Category", message: "Are you you want the  category \(SelectedCategory)", preferredStyle: .alert)
        let ok = UIAlertAction(title: "Of Course!", style: .default, handler: nil)
        let cancel = UIAlertAction(title: "Nah!", style: .cancel, handler: nil)
        alert.addAction(ok)
        alert.addAction(cancel)
        self.present(alert, animated: true, completion: nil)*/
        
        /*let backToMenu = storyboard!.instantiateViewController(withIdentifier: "main") as! ViewController
        backToMenu.selectedCategory = SelectedCategory
        backToMenu.categoryLabel.text = "Hello"
        present(backToMenu, animated: true, completion: nil)
        */
        
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        SelectedCategory = Categories[row]
        return Categories[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Categories.count;
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

}
