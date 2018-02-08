//
//  Mentorswift.swift
//  Mentor Book
//
//  Created by 曽根大輔 on 2018/02/05.
//  Copyright © 2018年 曽根大輔. All rights reserved.
//

import UIKit

class Mentor {
    
    var name: String! //名前
    
    var course: String! //コース
    
    var imageName: String! //顔写真(画像の名前)
    
    
    init(name: String, imageName: String, course: String){
        self.course = course
        self.name = name
        self.imageName = imageName
        
    func getImage() ->UIImage{
        return UIImage(named: imageName)!
            
    }
        
        
    }

    
    
}
