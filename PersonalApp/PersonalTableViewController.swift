//
//  PersonalTableViewController.swift
//  PersonalApp
//
//  Created by Noura Saeed on 3/27/20.
//  Copyright © 2020 Noura Saeed. All rights reserved.
//

import UIKit

class PersonalTableViewController: UITableViewController {
        @IBOutlet weak var result: UILabel!
        @IBOutlet weak var personalNum: UITextField!
        @IBOutlet weak var personalErrorWidth: NSLayoutConstraint!
        @IBOutlet weak var dagarNum: UITextField!
        @IBOutlet weak var dagarErrorWidth: NSLayoutConstraint!
        @IBOutlet weak var Salary: UITextField!
        @IBOutlet weak var salaryErrorWidth: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personalErrorWidth.constant = 0
        dagarErrorWidth.constant = 0
        salaryErrorWidth.constant = 0
    }

    @IBAction func GöromTapped(_ sender: Any) {
        tableView.endEditing(true)
        if personalNum.text == "" {
            personalErrorWidth.constant = 40

        }else
        {
             personalErrorWidth.constant = 0
        }
        if dagarNum.text == ""
        {
            dagarErrorWidth.constant = 40

        }else
        {
            dagarErrorWidth.constant = 0

        }
         if Salary.text == ""
        {
            salaryErrorWidth.constant = 40

        }
         
        else
        {

            personalErrorWidth.constant = 0
            dagarErrorWidth.constant = 0
            salaryErrorWidth.constant = 0
                        
            let  x = calc(personalNum: Double(personalNum.text!)!, dagarNum: Double(dagarNum.text!)!, Salary: Double(Salary.text!)!)
            result.text = x
            
        }
    
    }
    
    
    
    
    func calc(personalNum:Double ,dagarNum : Double ,  Salary : Double) -> String
    {
        let cal = Calendar(identifier: .gregorian)
        let monthRange = cal.range(of: .day, in: .month, for: Date())!
        let daysInMonth = monthRange.count
        let total = personalNum * ((Salary / Double(daysInMonth)) * dagarNum)
        return "\(Float(total))"
    }
    
}

