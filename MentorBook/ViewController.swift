//
//  ViewController.swift
//  MentorBook
//
//  Created by Yamamoto Miu on 2020/09/12.
//  Copyright © 2020 Yamamoto Miu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorArray : [Mentor] = []
    
    @IBOutlet var imageView : UIImageView!
    @IBOutlet var courseLabel : UILabel!
    @IBOutlet var nameLabel : UILabel!
    
    var index : Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mentorArray.append(Mentor(name:"ながた",course:"iphone",imageName:"nagata.jpg"))
        mentorArray.append(Mentor(name:"りょう",course:"Unity",imageName:"ryo.jpg"))
        mentorArray.append(Mentor(name:"たいてぃ",course:"WebD,WebS",imageName:"taithi.jpg"))

        setUI()
    }
    
    func setUI(){
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
    }
    
    @IBAction func pre(){
        index = index - 1
        if index < 0 {
            index = mentorArray.count - 1
        }
        setUI()
    }
    @IBAction func next(){
        index = index + 1
        if index >= mentorArray.count{
            index = 0
        }
        setUI()
        
    }


}

