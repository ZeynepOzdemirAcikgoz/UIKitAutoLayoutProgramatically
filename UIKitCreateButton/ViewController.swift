//
//  ViewController.swift
//  UIKitCreateButton
//
//  Created by Zeynep Özdemir Açıkgöz on 10.11.2022.
//

import UIKit

class ViewController: UIViewController {

    
    let label = UILabel()
    let button = UIButton(type: .system)
    
    
    let imageView1 = UIImageView()
    let imageView2 = UIImageView()
    let imageView3 = UIImageView()
    
    let stackView1 = UIStackView()
    let stackView2 = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        createButton()
        createLabel()
        createimageView()
        stackViewVertical()
        stackViewHorizontal()
        
    }
    
    func createimageView(){
        
        
        imageView1.backgroundColor = .red
        imageView1.translatesAutoresizingMaskIntoConstraints = false
        imageView1.heightAnchor.constraint(equalToConstant: self.view.frame.width/3).isActive = true
        //imageView1.centerYAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
        
        imageView2.backgroundColor = .blue
        imageView2.translatesAutoresizingMaskIntoConstraints = false
        imageView2.heightAnchor.constraint(equalToConstant: self.view.frame.width/3).isActive = true
        //imageView2.centerYAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
        imageView3.backgroundColor = .green
        imageView3.translatesAutoresizingMaskIntoConstraints = false
        imageView3.heightAnchor.constraint(equalToConstant: self.view.frame.width/3).isActive = true
        //imageView3.centerYAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
    }
    
    
    func createLabel(){
        label.frame = CGRect(x: 200, y: 200, width: 100, height: 50)
        label.text = "0"
        label.backgroundColor = .orange
        label.textColor = UIColor.black
        label.textAlignment = .center
        
        self.view.addSubview(label)

    }

    func createButton(){
        
        button.frame = CGRect(x: 100, y: 100, width: 100, height: 50)
        button.backgroundColor = .yellow
        button.setTitle("Press Me", for: .normal)
        
        
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        self.view.addSubview(button)
    }
    
    @objc func buttonAction(button: UIButton){
        var value = Int(label.text!)
        value = value! + 2
        label.text = String(value!)
        
        //print("button pressed")
    }
    
    func stackViewVertical(){
        
        stackView1.axis = NSLayoutConstraint.Axis.vertical
        stackView1.distribution = .fillEqually
        stackView1.alignment = .center
        stackView1.spacing = 10.0
        
        stackView1.addArrangedSubview(button)
        stackView1.addArrangedSubview(label)
        
        self.view.addSubview(stackView1)
        
        stackView1.translatesAutoresizingMaskIntoConstraints = false
        
        stackView1.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        stackView1.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 10).isActive = true
        stackView1.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        stackView1.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func stackViewHorizontal(){
        
        stackView2.axis = NSLayoutConstraint.Axis.horizontal
        stackView2.distribution = .fillEqually
        stackView2.alignment = .center
        stackView2.spacing = 10.0
        
        stackView2.addArrangedSubview(imageView1)
        stackView2.addArrangedSubview(imageView2)
        stackView2.addArrangedSubview(imageView3)
        
        self.view.addSubview(stackView2)
        
        stackView2.translatesAutoresizingMaskIntoConstraints = false
        
        stackView2.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        stackView2.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 10).isActive = true
       // stackView2.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        stackView2.heightAnchor.constraint(equalToConstant: 50).isActive = true
        stackView2.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    }
   
}

