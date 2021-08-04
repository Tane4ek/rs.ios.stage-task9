//
// 📰 🐸
// Project: RSSchool_T9
//
// Author: Татьяна Лузанова
// On: 03.08.2021
//
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit

class Gallery5: UIViewController, UIScrollViewDelegate {
    
    lazy var storyScroll: UIScrollView = {
        let storyScroll = UIScrollView()
        storyScroll.translatesAutoresizingMaskIntoConstraints = false
        storyScroll.delegate = self
        storyScroll.contentSize = CGSize(width: self.view.frame.size.width, height: 3400)
        return storyScroll
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black
        let exitButton = UIButton()
        exitButton.layer.cornerRadius = 20
        exitButton.layer.borderColor = UIColor.white.cgColor
        exitButton.layer.borderWidth = 2
        exitButton.setImage(UIImage(systemName: "multiply"), for: .normal)
        exitButton.contentEdgeInsets = UIEdgeInsets(top: 9, left: 9, bottom: 9, right: 9)
        exitButton .addTarget(self, action: #selector(buttonHandler(_:)), for: .touchUpInside)
        exitButton.tintColor = .white
        exitButton.translatesAutoresizingMaskIntoConstraints = false

        let image1 = UIImage(named: "flower-0")
        let imageView1 = UIImageView(image: image1!)
        imageView1.layer.cornerRadius = 10
        imageView1.layer.borderWidth = 1
        imageView1.layer.borderColor = UIColor.white.cgColor
        imageView1.clipsToBounds = true
        imageView1.translatesAutoresizingMaskIntoConstraints = false

        let textView1 = UITextView()
        textView1.text = "Flowers"
        textView1.textColor = UIColor.white
        textView1.backgroundColor = UIColor.clear
        textView1.font = UIFont(name: "Rockwell", size: 48)
        textView1.translatesAutoresizingMaskIntoConstraints = false

        let textView2 = UITextView()
        textView2.text = "Gallery"
        textView2.textColor = UIColor.white
        textView2.backgroundColor = UIColor.black
        textView2.font = UIFont(name: "Rockwell", size: 24)
        textView2.layer.cornerRadius = 8
        textView2.layer.borderWidth = 1
        textView2.layer.borderColor = UIColor.white.cgColor
        textView2.textAlignment = .center
        textView2.textContainerInset = UIEdgeInsets(top: 10, left: 15, bottom: 3, right: 15)
        textView2.translatesAutoresizingMaskIntoConstraints = false
        
        let line = UIView()
        line.layer.borderWidth = 1
        line.layer.borderColor = UIColor.white.cgColor
        line.translatesAutoresizingMaskIntoConstraints = false

        let firstImage = UIView()
        firstImage.layer.cornerRadius = 18
        firstImage.layer.borderWidth = 1
        firstImage.layer.borderColor = UIColor.white.cgColor
        firstImage.backgroundColor = .black
        firstImage.translatesAutoresizingMaskIntoConstraints = false
       
        let im1 = UIImage(named: "flower-1")
        let imView1 = UIImageView(image: im1!)
        imView1.layer.cornerRadius = 10
        imView1.clipsToBounds = true
        imView1.translatesAutoresizingMaskIntoConstraints = false

        let button1 = UIButton()
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.backgroundColor = .clear
        button1.addTarget(self, action: #selector(firstImageTap(_:)), for: .touchUpInside)
        
        let secondImage = UIView()
        secondImage.layer.cornerRadius = 18
        secondImage.layer.borderWidth = 1
        secondImage.layer.borderColor = UIColor.white.cgColor
        secondImage.backgroundColor = .black
        secondImage.translatesAutoresizingMaskIntoConstraints = false
       
        let im2 = UIImage(named: "flower-2")
        let imView2 = UIImageView(image: im2!)
        imView2.layer.cornerRadius = 10
        imView2.clipsToBounds = true
        imView2.translatesAutoresizingMaskIntoConstraints = false

        let button2 = UIButton()
        button2.translatesAutoresizingMaskIntoConstraints = false
        button2.backgroundColor = .clear
        button2.addTarget(self, action: #selector(secondImageTap(_:)), for: .touchUpInside)
        
        let threeImage = UIView()
        threeImage.layer.cornerRadius = 18
        threeImage.layer.borderWidth = 1
        threeImage.layer.borderColor = UIColor.white.cgColor
        threeImage.backgroundColor = .black
        threeImage.translatesAutoresizingMaskIntoConstraints = false
       
        let im3 = UIImage(named: "flower-3")
        let imView3 = UIImageView(image: im3!)
        imView3.layer.cornerRadius = 10
        imView3.clipsToBounds = true
        imView3.translatesAutoresizingMaskIntoConstraints = false

        let button3 = UIButton()
        button3.translatesAutoresizingMaskIntoConstraints = false
        button3.backgroundColor = .clear
        button3.addTarget(self, action: #selector(threeImageTap(_:)), for: .touchUpInside)
        
        let fourImage = UIView()
        fourImage.layer.cornerRadius = 18
        fourImage.layer.borderWidth = 1
        fourImage.layer.borderColor = UIColor.white.cgColor
        fourImage.backgroundColor = .black
        fourImage.translatesAutoresizingMaskIntoConstraints = false
       
        let im4 = UIImage(named: "flower-4")
        let imView4 = UIImageView(image: im4!)
        imView4.layer.cornerRadius = 10
        imView4.clipsToBounds = true
        imView4.translatesAutoresizingMaskIntoConstraints = false

        let button4 = UIButton()
        button4.translatesAutoresizingMaskIntoConstraints = false
        button4.backgroundColor = .clear
        button4.addTarget(self, action: #selector(fourImageTap(_:)), for: .touchUpInside)
        
        let fiveImage = UIView()
        fiveImage.layer.cornerRadius = 18
        fiveImage.layer.borderWidth = 1
        fiveImage.layer.borderColor = UIColor.white.cgColor
        fiveImage.backgroundColor = .black
        fiveImage.translatesAutoresizingMaskIntoConstraints = false
       
        let im5 = UIImage(named: "flower-5")
        let imView5 = UIImageView(image: im5!)
        imView5.layer.cornerRadius = 10
        imView5.clipsToBounds = true
        imView5.translatesAutoresizingMaskIntoConstraints = false

        let button5 = UIButton()
        button5.translatesAutoresizingMaskIntoConstraints = false
        button5.backgroundColor = .clear
        button5.addTarget(self, action: #selector(fiveImageTap(_:)), for: .touchUpInside)
    
        view.addSubview(storyScroll)
        storyScroll.addSubview(exitButton)
        storyScroll.addSubview(imageView1)
        imageView1.addSubview(textView1)
        storyScroll.addSubview(textView2)
        storyScroll.addSubview(line)
        storyScroll.addSubview(firstImage)
        firstImage.addSubview(imView1)
        firstImage.addSubview(button1)
        storyScroll.addSubview(secondImage)
        secondImage.addSubview(imView2)
        secondImage.addSubview(button2)
        storyScroll.addSubview(threeImage)
        threeImage.addSubview(imView3)
        threeImage.addSubview(button3)
        storyScroll.addSubview(fourImage)
        fourImage.addSubview(imView4)
        fourImage.addSubview(button4)
        storyScroll.addSubview(fiveImage)
        fiveImage.addSubview(imView5)
        fiveImage.addSubview(button5)
        
        NSLayoutConstraint.activate([
            storyScroll.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            storyScroll.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            storyScroll.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            storyScroll.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor),
            storyScroll.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor),
            
            exitButton.topAnchor.constraint(equalTo: storyScroll.topAnchor, constant: 30),
            exitButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -25),
            exitButton.widthAnchor.constraint(equalToConstant: 40),
            exitButton.heightAnchor.constraint(equalToConstant: 40),
            
            imageView1.topAnchor.constraint(equalTo: storyScroll.topAnchor, constant: 100),
            imageView1.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            imageView1.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            imageView1.heightAnchor.constraint(equalToConstant: 500),
            
            textView1.topAnchor.constraint(equalTo: imageView1.topAnchor, constant: 329),
            textView1.leadingAnchor.constraint(equalTo: imageView1.leadingAnchor, constant: 30),
            textView1.bottomAnchor.constraint(equalTo: imageView1.bottomAnchor, constant: -55),
            textView1.trailingAnchor.constraint(equalTo: imageView1.trailingAnchor, constant: -30),

            textView2.topAnchor.constraint(equalTo: storyScroll.topAnchor, constant: 579),
            textView2.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 131),
            textView2.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -131),
            textView2.heightAnchor.constraint(equalToConstant: 40),
            
            line.topAnchor.constraint(equalTo: storyScroll.topAnchor, constant: 658),
            line.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 100),
            line.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -100),
            line.heightAnchor.constraint(equalToConstant: 1),
            
            firstImage.topAnchor.constraint(equalTo: storyScroll.topAnchor, constant: 698),
            firstImage.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            firstImage.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            firstImage.heightAnchor.constraint(equalToConstant: 511),
            
            imView1.topAnchor.constraint(equalTo: firstImage.topAnchor, constant: 10),
            imView1.leadingAnchor.constraint(equalTo: firstImage.leadingAnchor, constant: 10),
            imView1.trailingAnchor.constraint(equalTo: firstImage.trailingAnchor, constant: -10),
            imView1.bottomAnchor.constraint(equalTo: firstImage.bottomAnchor, constant: -10),
            
            button1.topAnchor.constraint(equalTo: firstImage.topAnchor),
            button1.leadingAnchor.constraint(equalTo: firstImage.leadingAnchor),
            button1.trailingAnchor.constraint(equalTo: firstImage.trailingAnchor),
            button1.bottomAnchor.constraint(equalTo: firstImage.bottomAnchor),
            
            secondImage.topAnchor.constraint(equalTo: storyScroll.topAnchor, constant: 1229),
            secondImage.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            secondImage.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            secondImage.heightAnchor.constraint(equalToConstant: 511),
            
            imView2.topAnchor.constraint(equalTo: secondImage.topAnchor, constant: 10),
            imView2.leadingAnchor.constraint(equalTo: secondImage.leadingAnchor, constant: 10),
            imView2.trailingAnchor.constraint(equalTo: secondImage.trailingAnchor, constant: -10),
            imView2.bottomAnchor.constraint(equalTo: secondImage.bottomAnchor, constant: -10),
            
            button2.topAnchor.constraint(equalTo: secondImage.topAnchor),
            button2.leadingAnchor.constraint(equalTo: secondImage.leadingAnchor),
            button2.trailingAnchor.constraint(equalTo: secondImage.trailingAnchor),
            button2.bottomAnchor.constraint(equalTo: secondImage.bottomAnchor),
            
            threeImage.topAnchor.constraint(equalTo: storyScroll.topAnchor, constant: 1760),
            threeImage.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            threeImage.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            threeImage.heightAnchor.constraint(equalToConstant: 511),
            
            imView3.topAnchor.constraint(equalTo: threeImage.topAnchor, constant: 10),
            imView3.leadingAnchor.constraint(equalTo: threeImage.leadingAnchor, constant: 10),
            imView3.trailingAnchor.constraint(equalTo: threeImage.trailingAnchor, constant: -10),
            imView3.bottomAnchor.constraint(equalTo: threeImage.bottomAnchor, constant: -10),
            
            button3.topAnchor.constraint(equalTo: threeImage.topAnchor),
            button3.leadingAnchor.constraint(equalTo: threeImage.leadingAnchor),
            button3.trailingAnchor.constraint(equalTo: threeImage.trailingAnchor),
            button3.bottomAnchor.constraint(equalTo: threeImage.bottomAnchor),
            
            fourImage.topAnchor.constraint(equalTo: storyScroll.topAnchor, constant: 2291),
            fourImage.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            fourImage.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            fourImage.heightAnchor.constraint(equalToConstant: 511),
            
            imView4.topAnchor.constraint(equalTo: fourImage.topAnchor, constant: 10),
            imView4.leadingAnchor.constraint(equalTo: fourImage.leadingAnchor, constant: 10),
            imView4.trailingAnchor.constraint(equalTo: fourImage.trailingAnchor, constant: -10),
            imView4.bottomAnchor.constraint(equalTo: fourImage.bottomAnchor, constant: -10),
            
            button4.topAnchor.constraint(equalTo: fourImage.topAnchor),
            button4.leadingAnchor.constraint(equalTo: fourImage.leadingAnchor),
            button4.trailingAnchor.constraint(equalTo: fourImage.trailingAnchor),
            button4.bottomAnchor.constraint(equalTo: fourImage.bottomAnchor),
            
            fiveImage.topAnchor.constraint(equalTo: storyScroll.topAnchor, constant: 2822),
            fiveImage.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            fiveImage.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            fiveImage.heightAnchor.constraint(equalToConstant: 511),
            
            imView5.topAnchor.constraint(equalTo: fiveImage.topAnchor, constant: 10),
            imView5.leadingAnchor.constraint(equalTo: fiveImage.leadingAnchor, constant: 10),
            imView5.trailingAnchor.constraint(equalTo: fiveImage.trailingAnchor, constant: -10),
            imView5.bottomAnchor.constraint(equalTo: fiveImage.bottomAnchor, constant: -10),
            
            button5.topAnchor.constraint(equalTo: fiveImage.topAnchor),
            button5.leadingAnchor.constraint(equalTo: fiveImage.leadingAnchor),
            button5.trailingAnchor.constraint(equalTo: fiveImage.trailingAnchor),
            button5.bottomAnchor.constraint(equalTo: fiveImage.bottomAnchor)
        ])
    }
    
    @objc func buttonHandler(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    @objc func firstImageTap(_ sender: UIButton) {
        print("tap")
//        let subView = UIView()
//        subView.backgroundColor = UIColor.black
//
//        let imFirst = UIImage(named: "minsk-1")
//        let imViewFirst = UIImageView(image: imFirst!)
//        imViewFirst.layer.cornerRadius = 10
//        imViewFirst.clipsToBounds = true
//        imViewFirst.translatesAutoresizingMaskIntoConstraints = false
//
//
//        view.addSubview(subView)
//        subView.addSubview(imViewFirst)
//
//        NSLayoutConstraint.activate([
//            subView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
//            subView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
//            subView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
//            subView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
//
//            imViewFirst.topAnchor.constraint(equalTo: subView.topAnchor, constant: 172),
//            imViewFirst.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
//            imViewFirst.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
//            imViewFirst.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -172)
//        ])
        
    }
    
    @objc func secondImageTap(_ sender: UIButton) {
        print("tap")
    }
    
    @objc func threeImageTap(_ sender: UIButton) {
        print("tap")
    }
    
    @objc func fourImageTap(_ sender: UIButton) {
        print("tap")
    }
    
    @objc func fiveImageTap(_ sender: UIButton) {
        print("tap")
    }
    
}
