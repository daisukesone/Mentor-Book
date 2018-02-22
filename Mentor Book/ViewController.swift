//
//  ViewController.swift
//  Mentor Book
//
//  Created by 曽根大輔 on 2018/02/05.
//  Copyright © 2018年 曽根大輔. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorArray: [Mentor]=[]
    
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var courseLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    
    //表示するメンターの番号
    var Index: Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mentorArray.append(Mentor(name:"ながた", imageName:"nagata.jpg", course:"iphone"))
        mentorArray.append(Mentor(name:"りょう", imageName:"ryo.jpg", course:"Unity"))
        mentorArray.append(Mentor(name:"たいてぃ",imageName:"taithi.JPG", course:"Kamera"))
        
        
        setUI()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUI(){
        imageView.image = mentorArray[0].getImage()
        nameLabel.text = mentorArray[0].name
        courseLabel.text = mentorArray[0].course
        
    }
    
  
    
    @IBAction func mae(){
        Index -= 1
        setUI()
        
    }

    @IBAction func tugi(){
        Index += 1
        setUI()
    }
    
}

