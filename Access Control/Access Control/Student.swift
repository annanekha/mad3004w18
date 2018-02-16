//
//  Student.swift
//  Access Control
//
//  Created by Anna Nekha Shabu on 2018-02-12.
//  Copyright © 2018 Anna Nekha Shabu. All rights reserved.
//

import Foundation


fileprivate class student{
    
    private var sname : String?
    
    init(){
        self.sname = "Student Name"
    }
    
    func setStudentName(sname : String) //setter
    {
        
        self.sname = sname
    }
    
    func getStudentName() -> String //getter
    {
        return self.sname!
    }
    private func display()
    {
        print("I am a private method of Student class")
    }
    
    fileprivate func display(message : String){
        print("Hello, \(message)")
    }
}

private class fulltime : student{
    
    var  subject :  String?
    override init() {
        self.subject = "Fulltime Subject"
    }
    
    private func setSubject(subject : String)  //private func display
    {
        self.subject = subject
    }
    
    fileprivate func display() {
       //not possible and not inherited
        //super.display()
    
    print("I am a methos of full time class")
       // super.display()
        super.display(message: "File Private")
        
    }
}
