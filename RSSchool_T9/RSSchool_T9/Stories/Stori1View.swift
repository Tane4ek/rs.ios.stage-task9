//
// 📰 🐸
// Project: RSSchool_T9
//
// Author: Татьяна Лузанова
// On: 29.07.2021
//
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit

class Stories1: UIViewController, UIScrollViewDelegate {
    
    lazy var storyScroll: UIScrollView = {
        let storyScroll = UIScrollView()
        storyScroll.translatesAutoresizingMaskIntoConstraints = false
        storyScroll.delegate = self
        storyScroll.contentSize = CGSize(width: self.view.frame.size.width, height: 2280)
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

        let image1 = UIImage(named: "story-1")
        let imageView1 = UIImageView(image: image1!)
        imageView1.layer.cornerRadius = 10
        imageView1.layer.borderWidth = 1
        imageView1.layer.borderColor = UIColor.white.cgColor
        imageView1.clipsToBounds = true
        imageView1.translatesAutoresizingMaskIntoConstraints = false

        let textView1 = UITextView()
        textView1.text = "Man's best friend"
        textView1.textColor = UIColor.white
        textView1.backgroundColor = UIColor.clear
        textView1.font = UIFont(name: "Rockwell", size: 48)
        textView1.translatesAutoresizingMaskIntoConstraints = false

        let textView2 = UITextView()
        textView2.text = "Story"
        textView2.textColor = UIColor.white
        textView2.backgroundColor = UIColor.black
        textView2.font = UIFont(name: "Rockwell", size: 24)
        textView2.layer.cornerRadius = 8
        textView2.layer.borderWidth = 1
        textView2.layer.borderColor = UIColor.white.cgColor
        textView2.textAlignment = .center
        textView2.textContainerInset = UIEdgeInsets(top: 8, left: 25, bottom: 3, right: 25)
        textView2.translatesAutoresizingMaskIntoConstraints = false
        
        let line = UIView()
        line.layer.borderWidth = 1
        line.layer.borderColor = UIColor.white.cgColor
        line.translatesAutoresizingMaskIntoConstraints = false

        
            let storyView = UITextView()
            storyView.backgroundColor = UIColor.black
            storyView.layer.borderColor = UIColor.white.cgColor
            storyView.layer.borderWidth = 1
            storyView.layer.cornerRadius = 8
            storyView.text = "A man had a little dog, and he was very fond of it. He would pat its head, and take it on his knee, and talk to it. Then he would give it little bits of food from his own plate. \nA donkey looked in at the window and saw the man and the dog.\n \"Why does he not make a pet of me?\" said the donkey.\n\"It is not fair. I work hard, and the dog only wags its tail, and barks, and jumps on its master's knee. It is not fair.\"\nThen the donkey said to himself, \"If I do what the dog does, he may make a pet of me.\" \nSo the donkey ran into the room. It brayed as loudly as it could. It wagged its tail so hard that it knocked over a jar on the table. Then it tried to jump on to its master's knee. \nThe master thought the donkey was mad, and he shouted, \"Help! Help!\" Men came running in with sticks, and they beat the donkey till it ran out of the house, and they drove it back to the field. \n\"I only did what the dog does,\" said the donkey,\" and yet they make a pet of the dog, and they beat me with sticks. It is not fair.\""
            storyView.textColor = UIColor.white
            storyView.isUserInteractionEnabled = false
            storyView.textContainerInset = UIEdgeInsets(top: 30, left: 30, bottom: 30, right: 40)
            storyView.font = UIFont(name: "Rockwell", size: 24)
        storyView.translatesAutoresizingMaskIntoConstraints = false
    
        view.addSubview(storyScroll)
        storyScroll.addSubview(exitButton)
        storyScroll.addSubview(imageView1)
        imageView1.addSubview(textView1)
        storyScroll.addSubview(textView2)
        storyScroll.addSubview(line)
        storyScroll.addSubview(storyView)
        
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
            textView2.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 146),
            textView2.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -146),
            textView2.heightAnchor.constraint(equalToConstant: 40),
            
            line.topAnchor.constraint(equalTo: storyScroll.topAnchor, constant: 658),
            line.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 100),
            line.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -100),
            line.heightAnchor.constraint(equalToConstant: 1),
            
            storyView.topAnchor.constraint(equalTo: storyScroll.topAnchor, constant: 838),
            storyView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            storyView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            storyView.heightAnchor.constraint(equalToConstant: 1420)
            
            
        ])
    }
    
    @objc func buttonHandler(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
