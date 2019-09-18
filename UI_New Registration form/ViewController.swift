//
//  ViewController.swift
//  UI_New Registration form
//
//  Created by COE-030 on 12/09/19.
//  Copyright © 2019 COe. All rights reserved.
//

import UIKit

class ViewController : UIViewController ,UIImagePickerControllerDelegate,UINavigationControllerDelegate
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController){}
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any])
    {
        let image = info[UIImagePickerControllerOriginalImage] as!UIImage
        imageview.image = image
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var imageview: UIImageView!
    
    var imagepickercontroller:UIImagePickerController!
    
    @IBAction func btnTakeImage(_ sender: Any)
    {
        imagepickercontroller = UIImagePickerController()
        imagepickercontroller.delegate = self
        imagepickercontroller.sourceType = .photoLibrary
        self.present(imagepickercontroller, animated: true, completion: nil)
    }
    
    
    @IBOutlet weak var Username: UITextField!
    @IBOutlet weak var Emailid: UITextField!
    @IBOutlet weak var Password: UITextField!
    @IBOutlet weak var ConformPassword: UITextField!
    
    @IBOutlet weak var Gender: UISegmentedControl!
    @IBAction func signUP(_ sender: Any) {
        
        print(self.Username.text!)
        print(self.Emailid.text!)
        print(self.Password.text!)
        print(self.ConformPassword.text!)
        print(self.Gender.selectedSegmentIndex)
    }
}
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
   
    


