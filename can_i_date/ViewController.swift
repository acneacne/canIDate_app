//
//  ViewController.swift
//  can_i_date
//
//  Created by Michel on 10/20/16.
//  Copyright © 2016 coolnerd. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var bannerView: GADBannerView!
    
    
    @IBOutlet var age_1: UITextField!
    @IBOutlet var age_2: UITextField!
    @IBOutlet var emoji_button: UIButton!
    @IBOutlet var date_textField: UILabel!
    
    let colorProvider = BackgroundColorProvider()
    let messageProvider = ErrorTextProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.age_1.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
        
        let freshRandom = colorProvider.randomColor()
        
        let request = GADRequest();
        request.testDevices = [kGADSimulatorID]
        
        bannerView.adUnitID = "ca-app-pub-6109983088094505/7028649271";
        bannerView.rootViewController = self;
        bannerView.load(request)
        
        view.backgroundColor = freshRandom
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func button_pressed(_ sender: AnyObject) {
        // Compare 2 given ages(int) and tell if people can date.
        
        // changes the background color to random color
        let randomColor = colorProvider.randomColor()
        let randomErrorMessage = messageProvider.randomMessage()
        
        view.backgroundColor = randomColor // Calls the random background color

        
        if age_1.text  == "" || age_2.text == ""{
            date_textField.text = randomErrorMessage
        } else{
        
            let me_age =  Int(age_1.text!)! // Your age in UITextField
            let other_age = Int(age_2.text!)! // Other age in UITextField
            
            
            let me_age_min  = (me_age / 2) + 7
            let me_age_max = (me_age - 7) * 2
            
            if me_age > 18 && other_age < 18{
                //Switch with cases for a older person and younger other person
                switch me_age {
                case 25...29:
                    date_textField.text = "Don't be a creep"
                case 30...39:
                    date_textField.text = "Please no kids, just don't"
                case 40...49:
                    date_textField.text = "Its dangerous. Don't do it"
                case 50...99:
                    date_textField.text = "Bad idea, evil idea"
                default:
                    date_textField.text = "Don't date an under-age"
                }
            
                
            }// Case 2: Person is older and cant´date younger:
            else if me_age < 18 && other_age > 18{
                switch me_age {
                case 7...10:
                    date_textField.text = "You are so cute and so young"
                case 10...14:
                    date_textField.text = "You have feelings but not the age"
                default:
                    date_textField.text = "You are under age"
                }
            }else if me_age == other_age{
                date_textField.text = "You definetly should date"
            }else if other_age < me_age_min {
//<<<<<<< HEAD
                switch other_age{
                case 15...18:
                    date_textField.text = "This is a bad idea"
                case 10...14:
                    date_textField.text = "I think you are not human"
                default:
                    date_textField.text = "Bad idea"
//=======       
                }
                switch other_age {
                case 20...29:
                    date_textField.text = "You are older and the data says: NO!"
                case 30...39:
                    date_textField.text = "This is some kind of fetish right?"
                case 40...60:
                    date_textField.text = "Psycho"
//>>>>>>> 7673a1f4d09c0ce8df2c4b7ad10a3ca125799f63
                default:
                    date_textField.text = "Too young for you"
                }
            } // Case 3: Person is young and can't date older:
            else if other_age > me_age_max {
                print ((me_age - 7) * 2 )
                switch other_age {
                case 40...49:
                    date_textField.text = "You wanna date a really old one"
                case 50...59:
                    date_textField.text = "The data say: RUN!"
                case 60...69:
                    date_textField.text = "Dusty"
                case 70...79:
                    date_textField.text = "So old. So adorable"
                case 80...90:
                    date_textField.text = "Freak"
                default:
                    date_textField.text = "Too old for you"
                }
                
            } // Case 4: Both people are the same age:
            else{
                date_textField.text = "Yes, you can date. "
            }

            
//            if me_age > 18 && other_age < 18{
//                date_textField.text = "Don't date an under-age"
//            }// Case 2: Person is older and cant´date younger:
//            else if me_age < 18 && other_age > 18{
//                date_textField.text = "You are under age"
//            }else if me_age == other_age{
//                date_textField.text = "You definetly should date"
//            }else if other_age < me_age_min {
//                print (me_age_min)
//                date_textField.text = "To young for you"
//            } // Case 3: Person is young and can't date older:
//            else if other_age > me_age_max {
//                print ((me_age - 7) * 2 )
//                date_textField.text = "To old for you"
//            } // Case 4: Both people are the same age:
//            else{
//                date_textField.text = "Yes, you can date. "
//            }
            
            //date_textField.text
            print("Working")
            
        }
        
        self.view.endEditing(true)
        
    }
    
    //: Hide keyboard when user touch outside button
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //: Hide keyboard when user press return button
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return (true)
    }

}


///: END
