//
//  ViewController.swift
//  Project13
//
//  Created by Daniel O'Leary on 3/26/19.
//  Copyright © 2019 Impulse Coupled Dev. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var intensity: UISlider!
    var currentImage: UIImage!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "YACIFP"
    }
    
    @IBAction func importPicture(_ sender: UIBarButtonItem) {
        let picker = UIImagePickerController()
        picker.allowsEditing = true
        picker.delegate = self
        present(picker, animated: true, completion: nil)
    }
    
    
    @IBAction func changeFilter(_ sender: UIButton) {
    }
    
    @IBAction func save(_ sender: UIButton) {
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[.editedImage] as? UIImage else { return }
        
        dismiss(animated: true, completion: nil)
        
        currentImage = image
    }

}

