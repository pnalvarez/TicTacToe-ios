//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Pedro Neves Alvarez on 3/12/17.
//  Copyright © 2017 Pedro Neves Alvarez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var victoryLabel: UILabel!
    @IBOutlet weak var playButton: UIButton!
    var turn = true
    var finish = false
    var dataMatrix = [["n","n","n"],["n","n","n"],["n","n","n"]]
    
    @IBOutlet weak var bo1: UIButton!
    @IBOutlet weak var bo2: UIButton!
    @IBOutlet weak var bo3: UIButton!
    @IBOutlet weak var bo4: UIButton!
    @IBOutlet weak var bo5: UIButton!
    @IBOutlet weak var bo6: UIButton!
    @IBOutlet weak var bo7: UIButton!
    @IBOutlet weak var bo8: UIButton!
    @IBOutlet weak var bo9: UIButton!
    
    
    
    func desactivateButtons(){
        bo1.isEnabled = false
        bo2.isEnabled = false
        bo3.isEnabled = false
        bo4.isEnabled = false
        bo5.isEnabled = false
        bo6.isEnabled = false
        bo7.isEnabled = false
        bo8.isEnabled = false
        bo9.isEnabled = false
    }
    func activateButtons(){
        bo1.isEnabled = true
        bo2.isEnabled = true
        bo3.isEnabled = true
        bo4.isEnabled = true
        bo5.isEnabled = true
        bo6.isEnabled = true
        bo7.isEnabled = true
        bo8.isEnabled = true
        bo9.isEnabled = true
    }
    @IBAction func b1(_ sender: AnyObject) {
        
        if dataMatrix[0][0] == "n"{
        if turn{
        
        im1.image = UIImage(named: "x.png")
            dataMatrix[0][0] = "x"
            turn = false
            
            if (dataMatrix[0][1] == "x" && dataMatrix[0][2] == "x") || (dataMatrix[1][0]=="x" && dataMatrix[2][0] == "x" ) || (dataMatrix[1][1] == "x" && dataMatrix[2][2] == "x"){
                
                desactivateButtons()
                victoryLabel.text = "X has won!"
                
                UIView.animate(withDuration: 1 ){
                    
                    self.victoryLabel.center = CGPoint(x: self.victoryLabel.center.x+500,y: self.victoryLabel.center.y)
                    self.playButton.center = CGPoint(x: self.playButton.center.x+500,y: self.playButton.center.y)
                }
                
            }
        
        }
        else{
            im1.image = UIImage(named: "playO.png")
            dataMatrix[0][0] = "o"
            //im1.image = nil
            turn = true
            
            if (dataMatrix[0][1] == "o" && dataMatrix[0][2] == "o") || (dataMatrix[1][0]=="o" && dataMatrix[2][0] == "o" ) || (dataMatrix[1][1] == "o" && dataMatrix[2][2] == "o"){
                
                desactivateButtons()
                victoryLabel.text = "O has won!"
                
                UIView.animate(withDuration: 1 ){
                    
                    self.victoryLabel.center = CGPoint(x: self.victoryLabel.center.x+500,y: self.victoryLabel.center.y)
                    self.playButton.center = CGPoint(x: self.playButton.center.x+500,y: self.playButton.center.y)
                }
                
            }

        }
        }
    }
    @IBOutlet weak var im1: UIImageView!
    @IBAction func b2(_ sender: AnyObject) {
         if dataMatrix[0][1] == "n"{
            if turn{
                
                im2.image = UIImage(named: "x.png")
                dataMatrix[0][1] = "x"
                turn = false
            
                if (dataMatrix[0][0] == "x" && dataMatrix[0][2] == "x") || (dataMatrix[1][1]=="x" && dataMatrix[2][1] == "x" ){
                    
                    desactivateButtons()
                    victoryLabel.text = "X has won!"
                    
                    UIView.animate(withDuration: 1 ){
                        
                        self.victoryLabel.center = CGPoint(x: self.victoryLabel.center.x+500,y: self.victoryLabel.center.y)
                        self.playButton.center = CGPoint(x: self.playButton.center.x+500,y: self.playButton.center.y)
                    }
                    
                }
}
            else{
                im2.image = UIImage(named: "playO.png")
                dataMatrix[0][1] = "o"
                //im1.image = nil
                turn = true
                
                if (dataMatrix[0][0] == "o" && dataMatrix[0][2] == "o") || (dataMatrix[1][1]=="o" && dataMatrix[2][1] == "o" ){
                    
                    desactivateButtons()
                    victoryLabel.text = "O has won!"
                    
                    UIView.animate(withDuration: 1 ){
                        
                        self.victoryLabel.center = CGPoint(x: self.victoryLabel.center.x+500,y: self.victoryLabel.center.y)
                        self.playButton.center = CGPoint(x: self.playButton.center.x+500,y: self.playButton.center.y)
                    }
                    
                }
            }
        }
    }
    @IBAction func b3(_ sender: AnyObject) {
        if dataMatrix[0][2] == "n"{
            if turn{
                
                im3.image = UIImage(named: "x.png")
                dataMatrix[0][2] = "x"
                turn = false
            
                if (dataMatrix[0][0] == "x" && dataMatrix[0][1] == "x") || (dataMatrix[1][1]=="x" && dataMatrix[2][0] == "x" ) || (dataMatrix[2][2]=="x" && dataMatrix[1][2]=="x"){
                    
                    desactivateButtons()
                    victoryLabel.text = "X has won!"
                    
                    UIView.animate(withDuration: 1 ){
                        
                        self.victoryLabel.center = CGPoint(x: self.victoryLabel.center.x+500,y: self.victoryLabel.center.y)
                        self.playButton.center = CGPoint(x: self.playButton.center.x+500,y: self.playButton.center.y)
                    }
                    
                }
            }
            else{
                im3.image = UIImage(named: "playO.png")
                dataMatrix[0][2] = "o"
                //im1.image = nil
                turn = true
                
                if (dataMatrix[0][0] == "o" && dataMatrix[0][1] == "o") || (dataMatrix[1][1]=="o" && dataMatrix[2][0] == "o" ) || (dataMatrix[2][2]=="o" && dataMatrix[1][2]=="o"){
                    
                    desactivateButtons()
                    victoryLabel.text = "O has won!"
                    
                    UIView.animate(withDuration: 1 ){
                        
                        self.victoryLabel.center = CGPoint(x: self.victoryLabel.center.x+500,y: self.victoryLabel.center.y)
                        self.playButton.center = CGPoint(x: self.playButton.center.x+500,y: self.playButton.center.y)
                    }
                    
                }
            }
        }
    }
    @IBAction func b4(_ sender: AnyObject) {
        if dataMatrix[1][0] == "n"{
            if turn{
                
                im4.image = UIImage(named: "x.png")
                dataMatrix[1][0] = "x"
                turn = false
            
                if (dataMatrix[0][0] == "x" && dataMatrix[2][0] == "x") || (dataMatrix[1][1]=="x" && dataMatrix[1][2] == "x" ) {
                    
                    desactivateButtons()
                    victoryLabel.text = "X has won!"
                    
                    UIView.animate(withDuration: 1 ){
                        
                        self.victoryLabel.center = CGPoint(x: self.victoryLabel.center.x+500,y: self.victoryLabel.center.y)
                        self.playButton.center = CGPoint(x: self.playButton.center.x+500,y: self.playButton.center.y)
                    }
                    
                }
            }
            else{
                im4.image = UIImage(named: "playO.png")
                dataMatrix[1][0] = "x"
                //im1.image = nil
                turn = true
                
                
                if (dataMatrix[0][0] == "o" && dataMatrix[2][0] == "o") || (dataMatrix[1][1]=="o" && dataMatrix[1][2] == "o" ) {
                    
                    desactivateButtons()
                    victoryLabel.text = "O has won!"
                    
                    UIView.animate(withDuration: 1 ){
                        
                        self.victoryLabel.center = CGPoint(x: self.victoryLabel.center.x+500,y: self.victoryLabel.center.y)
                        self.playButton.center = CGPoint(x: self.playButton.center.x+500,y: self.playButton.center.y)
                    }
                    
                }
            }
        }
    }
    @IBAction func b5(_ sender: AnyObject) {
        if dataMatrix[1][1] == "n"{
            if turn{
                
                im5.image = UIImage(named: "x.png")
                dataMatrix[1][1] = "x"
                turn = false
            
                
                if (dataMatrix[0][0] == "x" && dataMatrix[2][2] == "x") || (dataMatrix[0][1]=="x" && dataMatrix[2][1] == "x" ) || (dataMatrix[0][2] == "x" && dataMatrix[2][0] == "x") || (dataMatrix[1][0] == "x" && dataMatrix[1][2] == "x") {
                    
                    desactivateButtons()
                    victoryLabel.text = "X has won!"
                    
                    UIView.animate(withDuration: 1 ){
                        
                        self.victoryLabel.center = CGPoint(x: self.victoryLabel.center.x+500,y: self.victoryLabel.center.y)
                        self.playButton.center = CGPoint(x: self.playButton.center.x+500,y: self.playButton.center.y)
                    }
                    
                }
            }
            else{
                im5.image = UIImage(named: "playO.png")
                dataMatrix[1][1] = "o"
                //im1.image = nil
                turn = true
                
                if (dataMatrix[0][0] == "o" && dataMatrix[2][2] == "o") || (dataMatrix[0][1]=="o" && dataMatrix[2][1] == "o" ) || (dataMatrix[0][2] == "o" && dataMatrix[2][0] == "o") || (dataMatrix[1][0] == "o" && dataMatrix[1][2] == "o") {
                    
                    desactivateButtons()
                    victoryLabel.text = "O has won!"
                    
                    UIView.animate(withDuration: 1 ){
                        
                        self.victoryLabel.center = CGPoint(x: self.victoryLabel.center.x+500,y: self.victoryLabel.center.y)
                        self.playButton.center = CGPoint(x: self.playButton.center.x+500,y: self.playButton.center.y)
                    }
                    
                }
            }
        }
    }
    @IBAction func b6(_ sender: AnyObject) {
        if dataMatrix[1][2] == "n"{
            if turn{
                
                im6.image = UIImage(named: "x.png")
                dataMatrix[1][2] = "x"
                turn = false
            
                if (dataMatrix[0][2] == "x" && dataMatrix[2][2] == "x") || (dataMatrix[1][0]=="x" && dataMatrix[1][1] == "x" )  {
                    
                    desactivateButtons()
                    victoryLabel.text = "X has won!"
                    
                    UIView.animate(withDuration: 1 ){
                        
                        self.victoryLabel.center = CGPoint(x: self.victoryLabel.center.x+500,y: self.victoryLabel.center.y)
                        self.playButton.center = CGPoint(x: self.playButton.center.x+500,y: self.playButton.center.y)
                    }
                    
                }
            }
            else{
                im6.image = UIImage(named: "playO.png")
                dataMatrix[1][2] = "o"
                //im1.image = nil
                turn = true
                
                if (dataMatrix[0][2] == "o" && dataMatrix[2][2] == "o") || (dataMatrix[1][0]=="o" && dataMatrix[1][1] == "o" )  {
                    
                    desactivateButtons()
                    victoryLabel.text = "O has won!"
                    
                    UIView.animate(withDuration: 1 ){
                        
                        self.victoryLabel.center = CGPoint(x: self.victoryLabel.center.x+500,y: self.victoryLabel.center.y)
                        self.playButton.center = CGPoint(x: self.playButton.center.x+500,y: self.playButton.center.y)
                    }
                    
                }
            }
        }
    }
    @IBAction func b7(_ sender: AnyObject) {
        if dataMatrix[2][0] == "n"{
            if turn{
                
                im7.image = UIImage(named: "x.png")
                dataMatrix[2][0] = "x"
                turn = false
            
                if (dataMatrix[0][0] == "x" && dataMatrix[1][0] == "x") || (dataMatrix[1][1]=="x" && dataMatrix[0][2] == "x" ) || (dataMatrix[2][1]=="x" && dataMatrix[2][2]=="x") {
                    
                    desactivateButtons()
                    victoryLabel.text = "X has won!"
                    
                    UIView.animate(withDuration: 1 ){
                        
                        self.victoryLabel.center = CGPoint(x: self.victoryLabel.center.x+500,y: self.victoryLabel.center.y)
                        self.playButton.center = CGPoint(x: self.playButton.center.x+500,y: self.playButton.center.y)
                    }
                    
                }
            }
            else{
                im7.image = UIImage(named: "playO.png")
                dataMatrix[2][0] = "o"
                //im1.image = nil
                turn = true
                
                if (dataMatrix[0][0] == "o" && dataMatrix[1][0] == "o") || (dataMatrix[1][1]=="o" && dataMatrix[0][2] == "o" ) || (dataMatrix[2][1]=="o" && dataMatrix[2][2]=="o") {
                    
                    desactivateButtons()
                    victoryLabel.text = "O has won!"
                    
                    UIView.animate(withDuration: 1 ){
                        
                        self.victoryLabel.center = CGPoint(x: self.victoryLabel.center.x+500,y: self.victoryLabel.center.y)
                        self.playButton.center = CGPoint(x: self.playButton.center.x+500,y: self.playButton.center.y)
                    }
                    
                }
            }
        }
    }
    @IBAction func b8(_ sender: AnyObject) {
        if dataMatrix[2][1] == "n"{
            if turn{
                
                im8.image = UIImage(named: "x.png")
                dataMatrix[2][1] = "x"
                turn = false
            
                if (dataMatrix[2][0] == "x" && dataMatrix[2][2] == "x") || (dataMatrix[0][1]=="x" && dataMatrix[1][1] == "x" )  {
                    
                    desactivateButtons()
                    victoryLabel.text = "X has won!"
                    
                    UIView.animate(withDuration: 1 ){
                        
                        self.victoryLabel.center = CGPoint(x: self.victoryLabel.center.x+500,y: self.victoryLabel.center.y)
                        self.playButton.center = CGPoint(x: self.playButton.center.x+500,y: self.playButton.center.y)
                    }
                    
                }
            }
            else{
                im8.image = UIImage(named: "playO.png")
                dataMatrix[2][1] = "o"
                //im1.image = nil
                turn = true
                
                if (dataMatrix[2][0] == "o" && dataMatrix[2][2] == "o") || (dataMatrix[0][1]=="o" && dataMatrix[1][1] == "o" )  {
                    
                    desactivateButtons()
                    victoryLabel.text = "O has won!"
                    
                    UIView.animate(withDuration: 1 ){
                        
                        self.victoryLabel.center = CGPoint(x: self.victoryLabel.center.x+500,y: self.victoryLabel.center.y)
                        self.playButton.center = CGPoint(x: self.playButton.center.x+500,y: self.playButton.center.y)
                    }
                    
                }
            }
        }
    }
    @IBAction func b9(_ sender: AnyObject) {
        if dataMatrix[2][2] == "n"{
            if turn{
                
                im9.image = UIImage(named: "x.png")
                dataMatrix[2][2] = "x"
                turn = false
            
                if (dataMatrix[2][0] == "x" && dataMatrix[2][1] == "x") || (dataMatrix[0][0]=="x" && dataMatrix[1][1] == "x" ) || (dataMatrix[0][2]=="x" && dataMatrix[1][2]=="x")  {
                    
                    desactivateButtons()
                    victoryLabel.text = "X has won!"
                    
                    UIView.animate(withDuration: 1 ){
                        
                        self.victoryLabel.center = CGPoint(x: self.victoryLabel.center.x+500,y: self.victoryLabel.center.y)
                        self.playButton.center = CGPoint(x: self.playButton.center.x+500,y: self.playButton.center.y)
                    }
                    
                }
            }
            else{
                im9.image = UIImage(named: "playO.png")
                dataMatrix[2][2] = "o"
                //im1.image = nil
                turn = true
                
                if (dataMatrix[2][0] == "o" && dataMatrix[2][1] == "o") || (dataMatrix[0][0]=="o" && dataMatrix[1][1] == "o" ) || (dataMatrix[0][2]=="o" && dataMatrix[1][2]=="o")  {
                    
                    desactivateButtons()
                    victoryLabel.text = "O has won!"
                    
                    UIView.animate(withDuration: 1 ){
                        
                        self.victoryLabel.center = CGPoint(x: self.victoryLabel.center.x+500,y: self.victoryLabel.center.y)
                        self.playButton.center = CGPoint(x: self.playButton.center.x+500,y: self.playButton.center.y)
                    }
                    
                }
            }
        }
    }
    
    @IBOutlet weak var im2: UIImageView!
    @IBOutlet weak var im3: UIImageView!
    @IBOutlet weak var im4: UIImageView!
    @IBOutlet weak var im5: UIImageView!
    @IBOutlet weak var im6: UIImageView!
    @IBOutlet weak var im7: UIImageView!
    @IBOutlet weak var im8: UIImageView!
    @IBOutlet weak var im9: UIImageView!
   
    @IBAction func playAgain(_ sender: AnyObject) {
        
        dataMatrix = [["n","n","n"],["n","n","n"],["n","n","n"]]
        turn = true
        im1.image = nil
        im2.image = nil
        im3.image = nil
        im4.image = nil
        im5.image = nil
        im6.image = nil
        im7.image = nil
        im8.image = nil
        im9.image = nil
        
        victoryLabel.center = CGPoint(x: victoryLabel.center.x-500,y: victoryLabel.center.y)
        playButton.center = CGPoint(x:playButton.center.x-500,y: playButton.center.y)
        activateButtons()
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        victoryLabel.center = CGPoint(x: victoryLabel.center.x-500,y: victoryLabel.center.y)
        playButton.center = CGPoint(x: playButton.center.x-500,y: playButton.center.y)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

