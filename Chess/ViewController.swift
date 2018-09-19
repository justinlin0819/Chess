//
//  ViewController.swift
//  Chess
//
//  Created by Justin Lin on 2018/9/16.
//  Copyright © 2018年 Justin Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var selection = 1
    var white = 1
    var x1 = 1
    var y1 = 0
    var x2 = 1
    var y2 = 0
    var i = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet var Grid: [UIButton]!
    @IBAction func Grid_Selection(_ sender: UIButton) {
        
        if white == 1 {
            if selection == 1 {
                if sender.currentBackgroundImage == UIImage(named: "w-pawn") {
                    let number = Get_coordinate(sender: sender)
                    x1 = number.0
                    y1 = number.1
                    i = number.2
                    selection = 0
                    sender.backgroundColor = UIColor.yellow
                }
            } else {
                let number = Get_coordinate(sender: sender)
                x2 = number.0
                y2 = number.1
                if x2 == x1 && y2 == y1+1 {
                    if sender.currentBackgroundImage == UIImage(named: "") {
                    sender.setBackgroundImage(UIImage(named: "w-pawn"), for: .normal)
                    Grid[i].setBackgroundImage(UIImage(named: ""), for: .normal)
                    white = 0
                    selection = 1
                    Grid[i].backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
                    } else {
                        selection = 1
                        Grid[i].backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
                    }
                } else if x2 == x1 && y2 == y1+2 {
                    if i == 1 || i == 9 || i == 17 || i == 25 || i == 33 || i == 41 || i == 49 || i == 57 {
                        if sender.currentBackgroundImage == UIImage(named: "") {
                            sender.setBackgroundImage(UIImage(named: "w-pawn"), for: .normal)
                            Grid[i].setBackgroundImage(UIImage(named: ""), for: .normal)
                            white = 0
                            selection = 1
                            Grid[i].backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
                        } else {
                            selection = 1
                            Grid[i].backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
                        }
                    } else {
                        selection = 1
                        Grid[i].backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
                    }
                } else if (x2 == x1+1 && y2 == y1+1) || (x2 == x1-1 && y2 == y1+1) {
                    switch sender.currentBackgroundImage {
                    case UIImage(named: "b-pawn"):
                        sender.setBackgroundImage(UIImage(named: "w-pawn"), for: .normal)
                        Grid[i].setBackgroundImage(UIImage(named: ""), for: .normal)
                        white = 0
                        selection = 1
                        Grid[i].backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
                    default:
                        selection = 1
                        Grid[i].backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
                    }
                } else {
                    selection = 1
                    Grid[i].backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
                }
            }
        } else {
            if selection == 1 {
                if sender.currentBackgroundImage == UIImage(named: "b-pawn") {
                    let number = Get_coordinate(sender: sender)
                    x1 = number.0
                    y1 = number.1
                    i = number.2
                    selection = 0
                    sender.backgroundColor = UIColor.yellow
                }
            } else {
                let number = Get_coordinate(sender: sender)
                x2 = number.0
                y2 = number.1
                if x2 == x1 && y2 == y1-1 {
                    if sender.currentBackgroundImage == UIImage(named: "") {
                    sender.setBackgroundImage(UIImage(named: "b-pawn"), for: .normal)
                    Grid[i].setBackgroundImage(UIImage(named: ""), for: .normal)
                    white = 1
                    selection = 1
                    Grid[i].backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
                    } else {
                        selection = 1
                        Grid[i].backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
                    }
                } else if x2 == x1 && y2 == y1-2 {
                    if i == 6 || i == 14 || i == 22 || i == 30 || i == 38 || i == 46 || i == 54 || i == 62 {
                        if sender.currentBackgroundImage == UIImage(named: "") {
                            sender.setBackgroundImage(UIImage(named: "b-pawn"), for: .normal)
                            Grid[i].setBackgroundImage(UIImage(named: ""), for: .normal)
                            white = 1
                            selection = 1
                            Grid[i].backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
                        } else {
                            selection = 1
                            Grid[i].backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
                        }
                    } else {
                        selection = 1
                        Grid[i].backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
                    }
                } else if (x2 == x1+1 && y2 == y1-1) || (x2 == x1-1 && y2 == y1-1) {
                    switch sender.currentBackgroundImage {
                    case UIImage(named: "w-pawn"):
                        sender.setBackgroundImage(UIImage(named: "b-pawn"), for: .normal)
                        Grid[i].setBackgroundImage(UIImage(named: ""), for: .normal)
                        white = 1
                        selection = 1
                        Grid[i].backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
                    default:
                        selection = 1
                        Grid[i].backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
                    }
                } else {
                    selection = 1
                    Grid[i].backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
                }
            }
        }
    }
    
    func Get_coordinate(sender: UIButton) -> (Int, Int, Int) {
        var x = 0
        var y = 0
        var i = 0
        switch sender {
        case Grid[0]:
            x = 1
            y = 1
            i = 0
        case Grid[1]:
            x = 1
            y = 2
            i = 1
        case Grid[2]:
            x = 1
            y = 3
            i = 2
        case Grid[3]:
            x = 1
            y = 4
            i = 3
        case Grid[4]:
            x = 1
            y = 5
            i = 4
        case Grid[5]:
            x = 1
            y = 6
            i = 5
        case Grid[6]:
            x = 1
            y = 7
            i = 6
        case Grid[7]:
            x = 1
            y = 8
            i = 7
        case Grid[8]:
            x = 2
            y = 1
            i = 8
        case Grid[9]:
            x = 2
            y = 2
            i = 9
        case Grid[10]:
            x = 2
            y = 3
            i = 10
        case Grid[11]:
            x = 2
            y = 4
            i = 11
        case Grid[12]:
            x = 2
            y = 5
            i = 12
        case Grid[13]:
            x = 2
            y = 6
            i = 13
        case Grid[14]:
            x = 2
            y = 7
            i = 14
        case Grid[15]:
            x = 2
            y = 8
            i = 15
        case Grid[16]:
            x = 3
            y = 1
            i = 16
        case Grid[17]:
            x = 3
            y = 2
            i = 17
        case Grid[18]:
            x = 3
            y = 3
            i = 18
        case Grid[19]:
            x = 3
            y = 4
            i = 19
        case Grid[20]:
            x = 3
            y = 5
            i = 20
        case Grid[21]:
            x = 3
            y = 6
            i = 21
        case Grid[22]:
            x = 3
            y = 7
            i = 22
        case Grid[23]:
            x = 3
            y = 8
            i = 23
        case Grid[24]:
            x = 4
            y = 1
            i = 24
        case Grid[25]:
            x = 4
            y = 2
            i = 25
        case Grid[26]:
            x = 4
            y = 3
            i = 26
        case Grid[27]:
            x = 4
            y = 4
            i = 27
        case Grid[28]:
            x = 4
            y = 5
            i = 28
        case Grid[29]:
            x = 4
            y = 6
            i = 29
        case Grid[30]:
            x = 4
            y = 7
            i = 30
        case Grid[31]:
            x = 4
            y = 8
            i = 31
        case Grid[32]:
            x = 5
            y = 1
            i = 32
        case Grid[33]:
            x = 5
            y = 2
            i = 33
        case Grid[34]:
            x = 5
            y = 3
            i = 34
        case Grid[35]:
            x = 5
            y = 4
            i = 35
        case Grid[36]:
            x = 5
            y = 5
            i = 36
        case Grid[37]:
            x = 5
            y = 6
            i = 37
        case Grid[38]:
            x = 5
            y = 7
            i = 38
        case Grid[39]:
            x = 5
            y = 8
            i = 39
        case Grid[40]:
            x = 6
            y = 1
            i = 40
        case Grid[41]:
            x = 6
            y = 2
            i = 41
        case Grid[42]:
            x = 6
            y = 3
            i = 42
        case Grid[43]:
            x = 6
            y = 4
            i = 43
        case Grid[44]:
            x = 6
            y = 5
            i = 44
        case Grid[45]:
            x = 6
            y = 6
            i = 45
        case Grid[46]:
            x = 6
            y = 7
            i = 46
        case Grid[47]:
            x = 6
            y = 8
            i = 47
        case Grid[48]:
            x = 7
            y = 1
            i = 48
        case Grid[49]:
            x = 7
            y = 2
            i = 49
        case Grid[50]:
            x = 7
            y = 3
            i = 50
        case Grid[51]:
            x = 7
            y = 4
            i = 51
        case Grid[52]:
            x = 7
            y = 5
            i = 52
        case Grid[53]:
            x = 7
            y = 6
            i = 53
        case Grid[54]:
            x = 7
            y = 7
            i = 54
        case Grid[55]:
            x = 7
            y = 8
            i = 55
        case Grid[56]:
            x = 8
            y = 1
            i = 56
        case Grid[57]:
            x = 8
            y = 2
            i = 57
        case Grid[58]:
            x = 8
            y = 3
            i = 58
        case Grid[59]:
            x = 8
            y = 4
            i = 59
        case Grid[60]:
            x = 8
            y = 5
            i = 60
        case Grid[61]:
            x = 8
            y = 6
            i = 61
        case Grid[62]:
            x = 8
            y = 7
            i = 62
        case Grid[63]:
            x = 8
            y = 8
            i = 63
        default:
            break
        }
        return (x, y, i)
    }
}
