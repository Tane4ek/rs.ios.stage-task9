//
// 📰 🐸
// Project: RSSchool_T9
//
// Author: Татьяна Лузанова
// On: 28.07.2021
//
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit


class ItemVC: UIViewController, UIScrollViewDelegate {
    
    lazy var scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.translatesAutoresizingMaskIntoConstraints = false
        scroll.delegate = self
        scroll.contentSize = CGSize(width: self.view.frame.size.width, height: 1550)
        return scroll
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
//        story1
        let st1View = UIView()
        st1View.layer.cornerRadius = 18
        st1View.layer.borderWidth = 2
        st1View.layer.borderColor = UIColor.black.cgColor
        st1View.backgroundColor = .white
        st1View.translatesAutoresizingMaskIntoConstraints = false

        let im1 = UIImage(named: "story-1")
        let imView1 = UIImageView(image: im1!)
        imView1.layer.cornerRadius = 10
        imView1.layer.borderWidth = 2
        imView1.layer.borderColor = UIColor.black.cgColor
        imView1.clipsToBounds = true
        imView1.translatesAutoresizingMaskIntoConstraints = false
        
        let textView1 = UITextView()
        textView1.text = "Man's best friend"
        textView1.textColor = UIColor.white
        textView1.backgroundColor = UIColor.clear
        textView1.font = UIFont(name: "Rockwell", size: 16)
        textView1.translatesAutoresizingMaskIntoConstraints = false
        
        let textView2 = UITextView()
        textView2.text = "Story"
        textView2.textColor = UIColor.white
        textView2.backgroundColor = UIColor.clear
        textView2.font = UIFont(name: "Rockwell", size: 12)
        textView2.translatesAutoresizingMaskIntoConstraints = false
        
        let button1 = UIButton()
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.backgroundColor = .clear
        button1.addTarget(self, action: #selector(st1ViewTap(_:)), for: .touchUpInside)
        let gradientLayer:CAGradientLayer = CAGradientLayer()
            gradientLayer.frame.size = st1View.frame.size
            gradientLayer.colors =
                [UIColor.black.cgColor,UIColor.green.withAlphaComponent(1).cgColor]
            //Use diffrent colors
            st1View.layer.addSublayer(gradientLayer)
        
//        gallery1
        let gal1View = UIView()
        gal1View.layer.cornerRadius = 18
        gal1View.layer.borderWidth = 2
        gal1View.layer.borderColor = UIColor.black.cgColor
        gal1View.backgroundColor = .white
        gal1View.translatesAutoresizingMaskIntoConstraints = false

        let im2 = UIImage(named: "minsk-0")
        let imView2 = UIImageView(image: im2!)
        imView2.layer.cornerRadius = 10
        imView2.layer.borderWidth = 2
        imView2.layer.borderColor = UIColor.black.cgColor
        imView2.clipsToBounds = true
        imView2.translatesAutoresizingMaskIntoConstraints = false
        
        let textView3 = UITextView()
        textView3.text = "Minsk"
        textView3.textColor = UIColor.white
        textView3.backgroundColor = UIColor.clear
        textView3.font = UIFont(name: "Rockwell", size: 16)
        textView3.translatesAutoresizingMaskIntoConstraints = false
        
        let textView4 = UITextView()
        textView4.text = "Gallery"
        textView4.textColor = UIColor.white
        textView4.backgroundColor = UIColor.clear
        textView4.font = UIFont(name: "Rockwell", size: 12)
        textView4.translatesAutoresizingMaskIntoConstraints = false
        
        let button2 = UIButton()
        button2.translatesAutoresizingMaskIntoConstraints = false
        button2.backgroundColor = .clear
        button2.addTarget(self, action: #selector(gal1ViewTap(_:)), for: .touchUpInside)
//        story2
        let st2View = UIView()
        st2View.layer.cornerRadius = 18
        st2View.layer.borderWidth = 2
        st2View.layer.borderColor = UIColor.black.cgColor
        st2View.backgroundColor = .white
        st2View.translatesAutoresizingMaskIntoConstraints = false
        
        let im3 = UIImage(named: "story-2")
        let imView3 = UIImageView(image: im3!)
        imView3.layer.cornerRadius = 10
        imView3.layer.borderWidth = 2
        imView3.layer.borderColor = UIColor.black.cgColor
        imView3.clipsToBounds = true
        imView3.translatesAutoresizingMaskIntoConstraints = false
        
        let textView5 = UITextView()
        textView5.text = "The small little bird"
        textView5.textColor = UIColor.white
        textView5.backgroundColor = UIColor.clear
        textView5.font = UIFont(name: "Rockwell", size: 16)
        textView5.translatesAutoresizingMaskIntoConstraints = false
        
        let textView6 = UITextView()
        textView6.text = "Story"
        textView6.textColor = UIColor.white
        textView6.backgroundColor = UIColor.clear
        textView6.font = UIFont(name: "Rockwell", size: 12)
        textView6.translatesAutoresizingMaskIntoConstraints = false
        
        let button3 = UIButton()
        button3.translatesAutoresizingMaskIntoConstraints = false
        button3.backgroundColor = .clear
        button3.addTarget(self, action: #selector(st2ViewTap(_:)), for: .touchUpInside)
//          gallery2
        let gal2View = UIView(frame: CGRect(x: 215, y: 290, width: 179, height: 220))
        gal2View.layer.cornerRadius = 18
        gal2View.layer.borderWidth = 2
        gal2View.layer.borderColor = UIColor.black.cgColor
        gal2View.backgroundColor = .white
        gal2View.translatesAutoresizingMaskIntoConstraints = false
        
        let im4 = UIImage(named: "apple-0")
        let imView4 = UIImageView(image: im4!)
        imView4.layer.cornerRadius = 10
        imView4.layer.borderWidth = 2
        imView4.layer.borderColor = UIColor.black.cgColor
        imView4.clipsToBounds = true
        imView4.translatesAutoresizingMaskIntoConstraints = false
        
        let textView7 = UITextView()
        textView7.text = "Apple"
        textView7.textColor = UIColor.white
        textView7.backgroundColor = UIColor.clear
        textView7.font = UIFont(name: "Rockwell", size: 16)
        textView7.translatesAutoresizingMaskIntoConstraints = false
        
        let textView8 = UITextView()
        textView8.text = "Gallery"
        textView8.textColor = UIColor.white
        textView8.backgroundColor = UIColor.clear
        textView8.font = UIFont(name: "Rockwell", size: 12)
        textView8.translatesAutoresizingMaskIntoConstraints = false
        
        let button4 = UIButton()
        button4.translatesAutoresizingMaskIntoConstraints = false
        button4.backgroundColor = .clear
        button4.addTarget(self, action: #selector(gal2ViewTap(_:)), for: .touchUpInside)
//        story3
        let st3View = UIView()
        st3View.backgroundColor = .white
        st3View.layer.cornerRadius = 18
        st3View.layer.borderWidth = 2
        st3View.layer.borderColor = UIColor.black.cgColor
        st3View.backgroundColor = .white
        st3View.translatesAutoresizingMaskIntoConstraints = false
        
        let im5 = UIImage(named: "story-3")
        let imView5 = UIImageView(image: im5!)
        imView5.layer.cornerRadius = 10
        imView5.layer.borderWidth = 2
        imView5.layer.borderColor = UIColor.black.cgColor
        imView5.clipsToBounds = true
        imView5.translatesAutoresizingMaskIntoConstraints = false
        
        let textView9 = UITextView()
        textView9.text = "Steven Paul Jobs"
        textView9.textColor = UIColor.white
        textView9.backgroundColor = UIColor.clear
        textView9.font = UIFont(name: "Rockwell", size: 16)
        textView9.translatesAutoresizingMaskIntoConstraints = false
        
        let textView10 = UITextView()
        textView10.text = "Story"
        textView10.textColor = UIColor.white
        textView10.backgroundColor = UIColor.clear
        textView10.font = UIFont(name: "Rockwell", size: 12)
        textView10.translatesAutoresizingMaskIntoConstraints = false

        let button5 = UIButton()
        button5.translatesAutoresizingMaskIntoConstraints = false
        button5.backgroundColor = .clear
        button5.addTarget(self, action: #selector(st3ViewTap(_:)), for: .touchUpInside)
//       gallery3
        let gal3View = UIView()
        gal3View.layer.cornerRadius = 18
        gal3View.layer.borderWidth = 2
        gal3View.layer.borderColor = UIColor.black.cgColor
        gal3View.backgroundColor = .white
        gal3View.translatesAutoresizingMaskIntoConstraints = false
        
        let im6 = UIImage(named: "code-0")
        let imView6 = UIImageView(image: im6!)
        imView6.layer.cornerRadius = 10
        imView6.layer.borderWidth = 2
        imView6.layer.borderColor = UIColor.black.cgColor
        imView6.clipsToBounds = true
        imView6.translatesAutoresizingMaskIntoConstraints = false
        
        let textView11 = UITextView()
        textView11.text = "Code"
        textView11.textColor = UIColor.white
        textView11.backgroundColor = UIColor.clear
        textView11.font = UIFont(name: "Rockwell", size: 16)
        textView11.translatesAutoresizingMaskIntoConstraints = false
        
        let textView12 = UITextView()
        textView12.text = "Gallery"
        textView12.textColor = UIColor.white
        textView12.backgroundColor = UIColor.clear
        textView12.font = UIFont(name: "Rockwell", size: 12)
        textView12.translatesAutoresizingMaskIntoConstraints = false
        
        let button6 = UIButton()
        button6.translatesAutoresizingMaskIntoConstraints = false
        button6.backgroundColor = .clear
        button6.addTarget(self, action: #selector(gal3ViewTap(_:)), for: .touchUpInside)

//      story4
        let st4View = UIView()
        st4View.backgroundColor = .white
        st4View.layer.cornerRadius = 18
        st4View.layer.borderWidth = 2
        st4View.layer.borderColor = UIColor.black.cgColor
        st4View.backgroundColor = .white
        st4View.translatesAutoresizingMaskIntoConstraints = false

        let im7 = UIImage(named: "story-4")
        let imView7 = UIImageView(image: im7!)
        imView7.layer.cornerRadius = 10
        imView7.layer.borderWidth = 2
        imView7.layer.borderColor = UIColor.black.cgColor
        imView7.clipsToBounds = true
        imView7.translatesAutoresizingMaskIntoConstraints = false
        
        let textView13 = UITextView()
        textView13.text = "Coffee"
        textView13.textColor = UIColor.white
        textView13.backgroundColor = UIColor.clear
        textView13.font = UIFont(name: "Rockwell", size: 16)
        textView13.translatesAutoresizingMaskIntoConstraints = false
        
        let textView14 = UITextView()
        textView14.text = "Story"
        textView14.textColor = UIColor.white
        textView14.backgroundColor = UIColor.clear
        textView14.font = UIFont(name: "Rockwell", size: 12)
        textView14.translatesAutoresizingMaskIntoConstraints = false
    
        let button7 = UIButton()
        button7.translatesAutoresizingMaskIntoConstraints = false
        button7.backgroundColor = .clear
        button7.addTarget(self, action: #selector(st4ViewTap(_:)), for: .touchUpInside)
//      gallery4
        let gal4View = UIView()
        gal4View.layer.cornerRadius = 18
        gal4View.layer.borderWidth = 2
        gal4View.layer.borderColor = UIColor.black.cgColor
        gal4View.backgroundColor = .white
        gal4View.translatesAutoresizingMaskIntoConstraints = false
        
        let im8 = UIImage(named: "tesla-0")
        let imView8 = UIImageView(image: im8!)
        imView8.layer.cornerRadius = 10
        imView8.layer.borderWidth = 2
        imView8.layer.borderColor = UIColor.black.cgColor
        imView8.clipsToBounds = true
        imView8.translatesAutoresizingMaskIntoConstraints = false
        
        let textView15 = UITextView()
        textView15.text = "Tesla"
        textView15.textColor = UIColor.white
        textView15.backgroundColor = UIColor.clear
        textView15.font = UIFont(name: "Rockwell", size: 16)
        textView15.translatesAutoresizingMaskIntoConstraints = false
        
        let textView16 = UITextView()
        textView16.text = "Gallery"
        textView16.textColor = UIColor.white
        textView16.backgroundColor = UIColor.clear
        textView16.font = UIFont(name: "Rockwell", size: 12)
        textView16.translatesAutoresizingMaskIntoConstraints = false
        
        let button8 = UIButton()
        button8.translatesAutoresizingMaskIntoConstraints = false
        button8.backgroundColor = .clear
        button8.addTarget(self, action: #selector(gal4ViewTap(_:)), for: .touchUpInside)
//        story5
        let st5View = UIView()
        st5View.backgroundColor = .white
        st5View.layer.cornerRadius = 18
        st5View.layer.borderWidth = 2
        st5View.layer.borderColor = UIColor.black.cgColor
        st5View.backgroundColor = .white
        st5View.translatesAutoresizingMaskIntoConstraints = false

        let im9 = UIImage(named: "story-5")
        let imView9 = UIImageView(image: im9!)
        imView9.layer.cornerRadius = 10
        imView9.layer.borderWidth = 2
        imView9.layer.borderColor = UIColor.black.cgColor
        imView9.clipsToBounds = true
        imView9.translatesAutoresizingMaskIntoConstraints = false
        
        let textView17 = UITextView()
        textView17.text = "Winnie the Pooh"
        textView17.textColor = UIColor.white
        textView17.backgroundColor = UIColor.clear
        textView17.font = UIFont(name: "Rockwell", size: 16)
        textView17.translatesAutoresizingMaskIntoConstraints = false
        
        let textView18 = UITextView()
        textView18.text = "Story"
        textView18.textColor = UIColor.white
        textView18.backgroundColor = UIColor.clear
        textView18.font = UIFont(name: "Rockwell", size: 12)
        textView18.translatesAutoresizingMaskIntoConstraints = false
    
        let button9 = UIButton()
        button9.translatesAutoresizingMaskIntoConstraints = false
        button9.backgroundColor = .clear
        button9.addTarget(self, action: #selector(st5ViewTap(_:)), for: .touchUpInside)
//      gallery5
        let gal5View = UIView()
        gal5View.layer.cornerRadius = 18
        gal5View.layer.borderWidth = 2
        gal5View.layer.borderColor = UIColor.black.cgColor
        gal5View.backgroundColor = .white
        gal5View.translatesAutoresizingMaskIntoConstraints = false
        
        let im10 = UIImage(named: "flower-0")
        let imView10 = UIImageView(image: im10!)
        imView10.layer.cornerRadius = 10
        imView10.layer.borderWidth = 2
        imView10.layer.borderColor = UIColor.black.cgColor
        imView10.clipsToBounds = true
        imView10.translatesAutoresizingMaskIntoConstraints = false
        
        let textView19 = UITextView()
        textView19.text = "Flowers"
        textView19.textColor = UIColor.white
        textView19.backgroundColor = UIColor.clear
        textView19.font = UIFont(name: "Rockwell", size: 16)
        textView19.translatesAutoresizingMaskIntoConstraints = false
        
        let textView20 = UITextView()
        textView20.text = "Gallery"
        textView20.textColor = UIColor.white
        textView20.backgroundColor = UIColor.clear
        textView20.font = UIFont(name: "Rockwell", size: 12)
        textView20.translatesAutoresizingMaskIntoConstraints = false
        
        let button10 = UIButton()
        button10.translatesAutoresizingMaskIntoConstraints = false
        button10.backgroundColor = .clear
        button10.addTarget(self, action: #selector(gal5ViewTap(_:)), for: .touchUpInside)
//        story6
        let st6View = UIView()
        st6View.backgroundColor = .white
        st6View.layer.cornerRadius = 18
        st6View.layer.borderWidth = 2
        st6View.layer.borderColor = UIColor.black.cgColor
        st6View.backgroundColor = .white
        st6View.translatesAutoresizingMaskIntoConstraints = false

        let im11 = UIImage(named: "story-6")
        let imView11 = UIImageView(image: im11!)
        imView11.layer.cornerRadius = 10
        imView11.layer.borderWidth = 2
        imView11.layer.borderColor = UIColor.black.cgColor
        imView11.clipsToBounds = true
        imView11.translatesAutoresizingMaskIntoConstraints = false
        
        let textView21 = UITextView()
        textView21.text = "Lightning McQueen"
        textView21.textColor = UIColor.white
        textView21.backgroundColor = UIColor.clear
        textView21.font = UIFont(name: "Rockwell", size: 16)
        textView21.translatesAutoresizingMaskIntoConstraints = false
        
        let textView22 = UITextView()
        textView22.text = "Story"
        textView22.textColor = UIColor.white
        textView22.backgroundColor = UIColor.clear
        textView22.font = UIFont(name: "Rockwell", size: 12)
        textView22.translatesAutoresizingMaskIntoConstraints = false
    
        let button11 = UIButton()
        button11.translatesAutoresizingMaskIntoConstraints = false
        button11.backgroundColor = .clear
        button11.addTarget(self, action: #selector(st6ViewTap(_:)), for: .touchUpInside)
//        gallery6
        let gal6View = UIView()
        gal6View.layer.cornerRadius = 18
        gal6View.layer.borderWidth = 2
        gal6View.layer.borderColor = UIColor.black.cgColor
        gal6View.backgroundColor = .white
        gal6View.translatesAutoresizingMaskIntoConstraints = false
        
        let im12 = UIImage(named: "doughnut-0")
        let imView12 = UIImageView(image: im12!)
        imView12.layer.cornerRadius = 10
        imView12.layer.borderWidth = 2
        imView12.layer.borderColor = UIColor.black.cgColor
        imView12.clipsToBounds = true
        imView12.translatesAutoresizingMaskIntoConstraints = false
        
        let textView23 = UITextView()
        textView23.text = "Doughnuts"
        textView23.textColor = UIColor.white
        textView23.backgroundColor = UIColor.clear
        textView23.font = UIFont(name: "Rockwell", size: 16)
        textView23.translatesAutoresizingMaskIntoConstraints = false
        
        let textView24 = UITextView()
        textView24.text = "Gallery"
        textView24.textColor = UIColor.white
        textView24.backgroundColor = UIColor.clear
        textView24.font = UIFont(name: "Rockwell", size: 12)
        textView24.translatesAutoresizingMaskIntoConstraints = false
        
        let button12 = UIButton()
        button12.translatesAutoresizingMaskIntoConstraints = false
        button12.backgroundColor = .clear
        button12.addTarget(self, action: #selector(gal6ViewTap(_:)), for: .touchUpInside)
        
        
        
        view.addSubview(scrollView)
        
        scrollView.addSubview(st1View)
        st1View.addSubview(imView1)
        imView1.addSubview(textView1)
        imView1.addSubview(textView2)
        st1View.addSubview(button1)
        
        scrollView.addSubview(gal1View)
        gal1View.addSubview(imView2)
        imView2.addSubview(textView3)
        imView2.addSubview(textView4)
        gal1View.addSubview(button2)
        
        scrollView.addSubview(st2View)
        st2View.addSubview(imView3)
        imView3.addSubview(textView5)
        imView3.addSubview(textView6)
        st2View.addSubview(button3)
        
        scrollView.addSubview(gal2View)
        gal2View.addSubview(imView4)
        imView4.addSubview(textView7)
        imView4.addSubview(textView8)
        gal2View.addSubview(button4)
        
        scrollView.addSubview(st3View)
        st3View.addSubview(imView5)
        imView5.addSubview(textView9)
        imView5.addSubview(textView10)
        st3View.addSubview(button5)

        scrollView.addSubview(gal3View)
        gal3View.addSubview(imView6)
        imView6.addSubview(textView11)
        imView6.addSubview(textView12)
        gal3View.addSubview(button6)
        
        scrollView.addSubview(st4View)
        st4View.addSubview(imView7)
        imView7.addSubview(textView13)
        imView7.addSubview(textView14)
        st4View.addSubview(button7)

        scrollView.addSubview(gal4View)
        gal4View.addSubview(imView8)
        imView8.addSubview(textView15)
        imView8.addSubview(textView16)
        gal4View.addSubview(button8)
        
        scrollView.addSubview(st5View)
        st5View.addSubview(imView9)
        imView9.addSubview(textView17)
        imView9.addSubview(textView18)
        st5View.addSubview(button9)

        scrollView.addSubview(gal5View)
        gal5View.addSubview(imView10)
        imView10.addSubview(textView19)
        imView10.addSubview(textView20)
        gal5View.addSubview(button10)
        
        scrollView.addSubview(st6View)
        st6View.addSubview(imView11)
        imView11.addSubview(textView21)
        imView11.addSubview(textView22)
        st6View.addSubview(button11)

        scrollView.addSubview(gal6View)
        gal6View.addSubview(imView12)
        imView12.addSubview(textView23)
        imView12.addSubview(textView24)
        gal6View.addSubview(button12)
        
        NSLayoutConstraint.activate([
//            scrollView
            scrollView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            scrollView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            scrollView.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor),
            scrollView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor),
//          story1
            st1View.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 40),
            st1View.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            st1View.heightAnchor.constraint(equalToConstant: 220),
            st1View.widthAnchor.constraint(equalToConstant: 179),
            
            imView1.topAnchor.constraint(equalTo: st1View.topAnchor, constant: 10),
            imView1.leadingAnchor.constraint(equalTo: st1View.leadingAnchor, constant: 8),
            imView1.trailingAnchor.constraint(equalTo: st1View.trailingAnchor, constant: -8),
            imView1.bottomAnchor.constraint(equalTo: st1View.bottomAnchor, constant: -10),
            
            textView1.topAnchor.constraint(equalTo: imView1.topAnchor, constant: 151),
            textView1.leadingAnchor.constraint(equalTo: imView1.leadingAnchor, constant: 10),
            textView1.trailingAnchor.constraint(equalTo: imView1.trailingAnchor),
            textView1.bottomAnchor.constraint(equalTo: imView1.bottomAnchor, constant: -25),
            
            textView2.topAnchor.constraint(equalTo: imView1.topAnchor, constant: 173),
            textView2.leadingAnchor.constraint(equalTo: imView1.leadingAnchor, constant: 10),
            textView2.trailingAnchor.constraint(equalTo: imView1.trailingAnchor, constant: -10),
            textView2.bottomAnchor.constraint(equalTo: imView1.bottomAnchor, constant: -8),
            
            button1.topAnchor.constraint(equalTo: st1View.topAnchor),
            button1.leadingAnchor.constraint(equalTo: st1View.leadingAnchor),
            button1.trailingAnchor.constraint(equalTo: st1View.trailingAnchor),
            button1.bottomAnchor.constraint(equalTo: st1View.bottomAnchor),
//            gallery1
            gal1View.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 40),
            gal1View.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            gal1View.heightAnchor.constraint(equalToConstant: 220),
            gal1View.widthAnchor.constraint(equalToConstant: 179),
            
            imView2.topAnchor.constraint(equalTo: gal1View.topAnchor, constant: 10),
            imView2.leadingAnchor.constraint(equalTo: gal1View.leadingAnchor, constant: 8),
            imView2.trailingAnchor.constraint(equalTo: gal1View.trailingAnchor, constant: -8),
            imView2.bottomAnchor.constraint(equalTo: gal1View.bottomAnchor, constant: -10),
            
            textView3.topAnchor.constraint(equalTo: imView2.topAnchor, constant: 151),
            textView3.leadingAnchor.constraint(equalTo: imView2.leadingAnchor, constant: 10),
            textView3.trailingAnchor.constraint(equalTo: imView2.trailingAnchor),
            textView3.bottomAnchor.constraint(equalTo: imView2.bottomAnchor, constant: -25),
            
            textView4.topAnchor.constraint(equalTo: imView2.topAnchor, constant: 173),
            textView4.leadingAnchor.constraint(equalTo: imView2.leadingAnchor, constant: 10),
            textView4.trailingAnchor.constraint(equalTo: imView2.trailingAnchor, constant: -10),
            textView4.bottomAnchor.constraint(equalTo: imView2.bottomAnchor, constant: -8),
            
            button2.topAnchor.constraint(equalTo: gal1View.topAnchor),
            button2.leadingAnchor.constraint(equalTo: gal1View.leadingAnchor),
            button2.trailingAnchor.constraint(equalTo: gal1View.trailingAnchor),
            button2.bottomAnchor.constraint(equalTo: gal1View.bottomAnchor),
//            story2
            st2View.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 290),
            st2View.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            st2View.heightAnchor.constraint(equalToConstant: 220),
            st2View.widthAnchor.constraint(equalToConstant: 179),
            
            imView3.topAnchor.constraint(equalTo: st2View.topAnchor, constant: 10),
            imView3.leadingAnchor.constraint(equalTo: st2View.leadingAnchor, constant: 8),
            imView3.trailingAnchor.constraint(equalTo: st2View.trailingAnchor, constant: -8),
            imView3.bottomAnchor.constraint(equalTo: st2View.bottomAnchor, constant: -10),
            
            textView5.topAnchor.constraint(equalTo: imView3.topAnchor, constant: 151),
            textView5.leadingAnchor.constraint(equalTo: imView3.leadingAnchor, constant: 10),
            textView5.trailingAnchor.constraint(equalTo: imView3.trailingAnchor),
            textView5.bottomAnchor.constraint(equalTo: imView3.bottomAnchor, constant: -25),
            
            textView6.topAnchor.constraint(equalTo: imView3.topAnchor, constant: 173),
            textView6.leadingAnchor.constraint(equalTo: imView3.leadingAnchor, constant: 10),
            textView6.trailingAnchor.constraint(equalTo: imView3.trailingAnchor, constant: -10),
            textView6.bottomAnchor.constraint(equalTo: imView3.bottomAnchor, constant: -8),
            
            button3.topAnchor.constraint(equalTo: st2View.topAnchor),
            button3.leadingAnchor.constraint(equalTo: st2View.leadingAnchor),
            button3.trailingAnchor.constraint(equalTo: st2View.trailingAnchor),
            button3.bottomAnchor.constraint(equalTo: st2View.bottomAnchor),
//            gallery2
            gal2View.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 290),
            gal2View.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            gal2View.heightAnchor.constraint(equalToConstant: 220),
            gal2View.widthAnchor.constraint(equalToConstant: 179),
            
            imView4.topAnchor.constraint(equalTo: gal2View.topAnchor, constant: 10),
            imView4.leadingAnchor.constraint(equalTo: gal2View.leadingAnchor, constant: 8),
            imView4.trailingAnchor.constraint(equalTo: gal2View.trailingAnchor, constant: -8),
            imView4.bottomAnchor.constraint(equalTo: gal2View.bottomAnchor, constant: -10),
            
            textView7.topAnchor.constraint(equalTo: imView4.topAnchor, constant: 151),
            textView7.leadingAnchor.constraint(equalTo: imView4.leadingAnchor, constant: 10),
            textView7.trailingAnchor.constraint(equalTo: imView4.trailingAnchor),
            textView7.bottomAnchor.constraint(equalTo: imView4.bottomAnchor, constant: -25),
            
            textView8.topAnchor.constraint(equalTo: imView4.topAnchor, constant: 173),
            textView8.leadingAnchor.constraint(equalTo: imView4.leadingAnchor, constant: 10),
            textView8.trailingAnchor.constraint(equalTo: imView4.trailingAnchor, constant: -10),
            textView8.bottomAnchor.constraint(equalTo: imView4.bottomAnchor, constant: -8),
            
            button4.topAnchor.constraint(equalTo: gal2View.topAnchor),
            button4.leadingAnchor.constraint(equalTo: gal2View.leadingAnchor),
            button4.trailingAnchor.constraint(equalTo: gal2View.trailingAnchor),
            button4.bottomAnchor.constraint(equalTo: gal2View.bottomAnchor),
//            story3
            st3View.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 540),
            st3View.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            st3View.heightAnchor.constraint(equalToConstant: 220),
            st3View.widthAnchor.constraint(equalToConstant: 179),

            imView5.topAnchor.constraint(equalTo: st3View.topAnchor, constant: 10),
            imView5.leadingAnchor.constraint(equalTo: st3View.leadingAnchor, constant: 8),
            imView5.trailingAnchor.constraint(equalTo: st3View.trailingAnchor, constant: -8),
            imView5.bottomAnchor.constraint(equalTo: st3View.bottomAnchor, constant: -10),
            
            textView9.topAnchor.constraint(equalTo: imView5.topAnchor, constant: 151),
            textView9.leadingAnchor.constraint(equalTo: imView5.leadingAnchor, constant: 10),
            textView9.trailingAnchor.constraint(equalTo: imView5.trailingAnchor),
            textView9.bottomAnchor.constraint(equalTo: imView5.bottomAnchor, constant: -25),
            
            textView10.topAnchor.constraint(equalTo: imView5.topAnchor, constant: 173),
            textView10.leadingAnchor.constraint(equalTo: imView5.leadingAnchor, constant: 10),
            textView10.trailingAnchor.constraint(equalTo: imView5.trailingAnchor, constant: -10),
            textView10.bottomAnchor.constraint(equalTo: imView5.bottomAnchor, constant: -8),
            
            button5.topAnchor.constraint(equalTo: st3View.topAnchor),
            button5.leadingAnchor.constraint(equalTo: st3View.leadingAnchor),
            button5.trailingAnchor.constraint(equalTo: st3View.trailingAnchor),
            button5.bottomAnchor.constraint(equalTo: st3View.bottomAnchor),
//            gallery3
            gal3View.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 540),
            gal3View.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            gal3View.heightAnchor.constraint(equalToConstant: 220),
            gal3View.widthAnchor.constraint(equalToConstant: 179),

            imView6.topAnchor.constraint(equalTo: gal3View.topAnchor, constant: 10),
            imView6.leadingAnchor.constraint(equalTo: gal3View.leadingAnchor, constant: 8),
            imView6.trailingAnchor.constraint(equalTo: gal3View.trailingAnchor, constant: -8),
            imView6.bottomAnchor.constraint(equalTo: gal3View.bottomAnchor, constant: -10),
            
            textView11.topAnchor.constraint(equalTo: imView6.topAnchor, constant: 151),
            textView11.leadingAnchor.constraint(equalTo: imView6.leadingAnchor, constant: 10),
            textView11.trailingAnchor.constraint(equalTo: imView6.trailingAnchor),
            textView11.bottomAnchor.constraint(equalTo: imView6.bottomAnchor, constant: -25),
            
            textView12.topAnchor.constraint(equalTo: imView6.topAnchor, constant: 173),
            textView12.leadingAnchor.constraint(equalTo: imView6.leadingAnchor, constant: 10),
            textView12.trailingAnchor.constraint(equalTo: imView6.trailingAnchor, constant: -10),
            textView12.bottomAnchor.constraint(equalTo: imView6.bottomAnchor, constant: -8),
            
            button6.topAnchor.constraint(equalTo: gal3View.topAnchor),
            button6.leadingAnchor.constraint(equalTo: gal3View.leadingAnchor),
            button6.trailingAnchor.constraint(equalTo: gal3View.trailingAnchor),
            button6.bottomAnchor.constraint(equalTo: gal3View.bottomAnchor),
//            story4
            st4View.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 790),
            st4View.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            st4View.heightAnchor.constraint(equalToConstant: 220),
            st4View.widthAnchor.constraint(equalToConstant: 179),

            imView7.topAnchor.constraint(equalTo: st4View.topAnchor, constant: 10),
            imView7.leadingAnchor.constraint(equalTo: st4View.leadingAnchor, constant: 8),
            imView7.trailingAnchor.constraint(equalTo: st4View.trailingAnchor, constant: -8),
            imView7.bottomAnchor.constraint(equalTo: st4View.bottomAnchor, constant: -10),
            
            textView13.topAnchor.constraint(equalTo: imView7.topAnchor, constant: 151),
            textView13.leadingAnchor.constraint(equalTo: imView7.leadingAnchor, constant: 10),
            textView13.trailingAnchor.constraint(equalTo: imView7.trailingAnchor),
            textView13.bottomAnchor.constraint(equalTo: imView7.bottomAnchor, constant: -25),
            
            textView14.topAnchor.constraint(equalTo: imView7.topAnchor, constant: 173),
            textView14.leadingAnchor.constraint(equalTo: imView7.leadingAnchor, constant: 10),
            textView14.trailingAnchor.constraint(equalTo: imView7.trailingAnchor, constant: -10),
            textView14.bottomAnchor.constraint(equalTo: imView7.bottomAnchor, constant: -8),
            
            button7.topAnchor.constraint(equalTo: st4View.topAnchor),
            button7.leadingAnchor.constraint(equalTo: st4View.leadingAnchor),
            button7.trailingAnchor.constraint(equalTo: st4View.trailingAnchor),
            button7.bottomAnchor.constraint(equalTo: st4View.bottomAnchor),
//            gallery4
            gal4View.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 790),
            gal4View.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            gal4View.heightAnchor.constraint(equalToConstant: 220),
            gal4View.widthAnchor.constraint(equalToConstant: 179),

            imView8.topAnchor.constraint(equalTo: gal4View.topAnchor, constant: 10),
            imView8.leadingAnchor.constraint(equalTo: gal4View.leadingAnchor, constant: 8),
            imView8.trailingAnchor.constraint(equalTo: gal4View.trailingAnchor, constant: -8),
            imView8.bottomAnchor.constraint(equalTo: gal4View.bottomAnchor, constant: -10),
            
            textView15.topAnchor.constraint(equalTo: imView8.topAnchor, constant: 151),
            textView15.leadingAnchor.constraint(equalTo: imView8.leadingAnchor, constant: 10),
            textView15.trailingAnchor.constraint(equalTo: imView8.trailingAnchor),
            textView15.bottomAnchor.constraint(equalTo: imView8.bottomAnchor, constant: -25),
            
            textView16.topAnchor.constraint(equalTo: imView8.topAnchor, constant: 173),
            textView16.leadingAnchor.constraint(equalTo: imView8.leadingAnchor, constant: 10),
            textView16.trailingAnchor.constraint(equalTo: imView8.trailingAnchor, constant: -10),
            textView16.bottomAnchor.constraint(equalTo: imView8.bottomAnchor, constant: -8),
            
            button8.topAnchor.constraint(equalTo: gal4View.topAnchor),
            button8.leadingAnchor.constraint(equalTo: gal4View.leadingAnchor),
            button8.trailingAnchor.constraint(equalTo: gal4View.trailingAnchor),
            button8.bottomAnchor.constraint(equalTo: gal4View.bottomAnchor),
//            story5
            st5View.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 1040),
            st5View.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            st5View.heightAnchor.constraint(equalToConstant: 220),
            st5View.widthAnchor.constraint(equalToConstant: 179),

            imView9.topAnchor.constraint(equalTo: st5View.topAnchor, constant: 10),
            imView9.leadingAnchor.constraint(equalTo: st5View.leadingAnchor, constant: 8),
            imView9.trailingAnchor.constraint(equalTo: st5View.trailingAnchor, constant: -8),
            imView9.bottomAnchor.constraint(equalTo: st5View.bottomAnchor, constant: -10),
            
            textView17.topAnchor.constraint(equalTo: imView9.topAnchor, constant: 151),
            textView17.leadingAnchor.constraint(equalTo: imView9.leadingAnchor, constant: 10),
            textView17.trailingAnchor.constraint(equalTo: imView9.trailingAnchor),
            textView17.bottomAnchor.constraint(equalTo: imView9.bottomAnchor, constant: -25),
            
            textView18.topAnchor.constraint(equalTo: imView9.topAnchor, constant: 173),
            textView18.leadingAnchor.constraint(equalTo: imView9.leadingAnchor, constant: 10),
            textView18.trailingAnchor.constraint(equalTo: imView9.trailingAnchor, constant: -10),
            textView18.bottomAnchor.constraint(equalTo: imView9.bottomAnchor, constant: -8),
            
            button9.topAnchor.constraint(equalTo: st5View.topAnchor),
            button9.leadingAnchor.constraint(equalTo: st5View.leadingAnchor),
            button9.trailingAnchor.constraint(equalTo: st5View.trailingAnchor),
            button9.bottomAnchor.constraint(equalTo: st5View.bottomAnchor),
//            gallery5
            gal5View.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 1040),
            gal5View.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            gal5View.heightAnchor.constraint(equalToConstant: 220),
            gal5View.widthAnchor.constraint(equalToConstant: 179),

            imView10.topAnchor.constraint(equalTo: gal5View.topAnchor, constant: 10),
            imView10.leadingAnchor.constraint(equalTo: gal5View.leadingAnchor, constant: 8),
            imView10.trailingAnchor.constraint(equalTo: gal5View.trailingAnchor, constant: -8),
            imView10.bottomAnchor.constraint(equalTo: gal5View.bottomAnchor, constant: -10),
            
            textView19.topAnchor.constraint(equalTo: imView10.topAnchor, constant: 151),
            textView19.leadingAnchor.constraint(equalTo: imView10.leadingAnchor, constant: 10),
            textView19.trailingAnchor.constraint(equalTo: imView10.trailingAnchor),
            textView19.bottomAnchor.constraint(equalTo: imView10.bottomAnchor, constant: -25),
            
            textView20.topAnchor.constraint(equalTo: imView10.topAnchor, constant: 173),
            textView20.leadingAnchor.constraint(equalTo: imView10.leadingAnchor, constant: 10),
            textView20.trailingAnchor.constraint(equalTo: imView10.trailingAnchor, constant: -10),
            textView20.bottomAnchor.constraint(equalTo: imView10.bottomAnchor, constant: -8),
            
            button10.topAnchor.constraint(equalTo: gal5View.topAnchor),
            button10.leadingAnchor.constraint(equalTo: gal5View.leadingAnchor),
            button10.trailingAnchor.constraint(equalTo: gal5View.trailingAnchor),
            button10.bottomAnchor.constraint(equalTo: gal5View.bottomAnchor),
//            story6
            st6View.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 1290),
            st6View.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            st6View.heightAnchor.constraint(equalToConstant: 220),
            st6View.widthAnchor.constraint(equalToConstant: 179),

            imView11.topAnchor.constraint(equalTo: st6View.topAnchor, constant: 10),
            imView11.leadingAnchor.constraint(equalTo: st6View.leadingAnchor, constant: 8),
            imView11.trailingAnchor.constraint(equalTo: st6View.trailingAnchor, constant: -8),
            imView11.bottomAnchor.constraint(equalTo: st6View.bottomAnchor, constant: -10),
            
            textView21.topAnchor.constraint(equalTo: imView11.topAnchor, constant: 151),
            textView21.leadingAnchor.constraint(equalTo: imView11.leadingAnchor, constant: 10),
            textView21.trailingAnchor.constraint(equalTo: imView11.trailingAnchor),
            textView21.bottomAnchor.constraint(equalTo: imView11.bottomAnchor, constant: -25),
            
            textView22.topAnchor.constraint(equalTo: imView11.topAnchor, constant: 173),
            textView22.leadingAnchor.constraint(equalTo: imView11.leadingAnchor, constant: 10),
            textView22.trailingAnchor.constraint(equalTo: imView11.trailingAnchor, constant: -10),
            textView22.bottomAnchor.constraint(equalTo: imView11.bottomAnchor, constant: -8),
            
            button11.topAnchor.constraint(equalTo: st6View.topAnchor),
            button11.leadingAnchor.constraint(equalTo: st6View.leadingAnchor),
            button11.trailingAnchor.constraint(equalTo: st6View.trailingAnchor),
            button11.bottomAnchor.constraint(equalTo: st6View.bottomAnchor),
//            gallery6
            gal6View.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 1290),
            gal6View.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            gal6View.heightAnchor.constraint(equalToConstant: 220),
            gal6View.widthAnchor.constraint(equalToConstant: 179),

            imView12.topAnchor.constraint(equalTo: gal6View.topAnchor, constant: 10),
            imView12.leadingAnchor.constraint(equalTo: gal6View.leadingAnchor, constant: 8),
            imView12.trailingAnchor.constraint(equalTo: gal6View.trailingAnchor, constant: -8),
            imView12.bottomAnchor.constraint(equalTo: gal6View.bottomAnchor, constant: -10),
            
            textView23.topAnchor.constraint(equalTo: imView12.topAnchor, constant: 151),
            textView23.leadingAnchor.constraint(equalTo: imView12.leadingAnchor, constant: 10),
            textView23.trailingAnchor.constraint(equalTo: imView12.trailingAnchor),
            textView23.bottomAnchor.constraint(equalTo: imView12.bottomAnchor, constant: -25),
            
            textView24.topAnchor.constraint(equalTo: imView12.topAnchor, constant: 173),
            textView24.leadingAnchor.constraint(equalTo: imView12.leadingAnchor, constant: 10),
            textView24.trailingAnchor.constraint(equalTo: imView12.trailingAnchor, constant: -10),
            textView24.bottomAnchor.constraint(equalTo: imView12.bottomAnchor, constant: -8),
            
            button12.topAnchor.constraint(equalTo: gal6View.topAnchor),
            button12.leadingAnchor.constraint(equalTo: gal6View.leadingAnchor),
            button12.trailingAnchor.constraint(equalTo: gal6View.trailingAnchor),
            button12.bottomAnchor.constraint(equalTo: gal6View.bottomAnchor)
        ])
        
        
    }
    
    @objc func st1ViewTap(_ sender: UIButton) {
        let story1 = Stories1()
        self.present(story1, animated: true, completion: nil)
    }
    @objc func gal1ViewTap(_ sender: UIButton) {
        let gallery1 = Gallery1()
        self.present(gallery1, animated: true)
    }
    @objc func st2ViewTap(_ sender: UIButton) {
        let story2 = Stories2()
        self.present(story2, animated: true)
    }
    @objc func gal2ViewTap(_ sender: UIButton) {
        let gallery2 = Gallery2()
        self.present(gallery2, animated: true)
    }
    @objc func st3ViewTap(_ sender: UIButton) {
        let story3 = Stories3()
        self.present(story3, animated: true)
    }
    @objc func gal3ViewTap(_ sender: UIButton) {
        let gallery3 = Gallery3()
        self.present(gallery3, animated: true)
    }
    @objc func st4ViewTap(_ sender: UIButton) {
        let story4 = Stories4()
        self.present(story4, animated: true)
    }
    
    @objc func gal4ViewTap(_ sender: UIButton) {
        let gallery4 = Gallery4()
        self.present(gallery4, animated: true)
    }
    @objc func st5ViewTap(_ sender: UIButton) {
        let story5 = Stories5()
        self.present(story5, animated: true)
        print("tap")
    }
    
    @objc func gal5ViewTap(_ sender: UIButton) {
        let gallery5 = Gallery5()
        self.present(gallery5, animated: true)
    }
    @objc func st6ViewTap(_ sender: UIButton) {
        let story6 = Stories6()
        self.present(story6, animated: true)
    }
    
    @objc func gal6ViewTap(_ sender: UIButton) {
        let gallery6 = Gallery6()
        self.present(gallery6, animated: true)
    }
}


