//
//  Mentor.swift
//  MentorBook
//
//  Created by Yamamoto Miu on 2020/09/12.
//  Copyright © 2020 Yamamoto Miu. All rights reserved.
//

import UIKit

class Mentor {
    var name : String!
    var course : String!
    var imageName : String! //顔写真の名前
    
    //初期化
    init (name:String ,course: String, imageName: String){
        self.name = name
        self.course = course
        self.imageName = imageName
    }
    
    func getImage() -> UIImage{
        return UIImage(named : imageName)!
    }
    
}
