//
//  ViewController.swift
//  Quiz
//
//  Created by Przemek on 20/05/2018.
//  Copyright © 2018 Przemek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var button1: UIButton!
    
    @IBOutlet weak var button2: UIButton!
    
    @IBOutlet weak var button3: UIButton!
    
    @IBOutlet weak var button4: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func randomQuestion(){
        
        var randomNumber = arc4random() % 4
        
        randomNumber+=1
        
        switch (randomNumber){
        case 1:
            
            questionLabel.text="W którym roku wybuchła pierwsza wojna światowa?"
            button1.setTitle("1410", for: <#T##UIControlState#>)
            button2.setTitle("1914", for: <#T##UIControlState#>)
            button3.setTitle("1918", for: <#T##UIControlState#>)
            button4.setTitle("1945", for: <#T##UIControlState#>)

            break;
            
        case 2:
            
            questionLabel.text="Jakie miasto jest stolicą Francji?"
            button1.setTitle("Paryż", for: <#T##UIControlState#>)
            button2.setTitle("Berlin", for: <#T##UIControlState#>)
            button3.setTitle("Moskwa", for: <#T##UIControlState#>)
            button4.setTitle("Warszawa", for: <#T##UIControlState#>)
            
            break;
            
        case 3:
            
            questionLabel.text="Na co urządzaja polowania słynne szympansy z lasu Bili?"
            button1.setTitle("na tygrysy", for: <#T##UIControlState#>)
            button2.setTitle("na lwy", for: <#T##UIControlState#>)
            button3.setTitle("na słonie", for: <#T##UIControlState#>)
            button4.setTitle("na człowieka", for: <#T##UIControlState#>)
            
            break;
            
        case 4:
            
            questionLabel.text="Ile razy na dobe pije zając?"
            button1.setTitle("2", for: <#T##UIControlState#>)
            button2.setTitle("24", for: <#T##UIControlState#>)
            button3.setTitle("zając nie pije", for: <#T##UIControlState#>)
            button4.setTitle("100", for: <#T##UIControlState#>)
            
            break;
            
        case 5:
            
            questionLabel.text="Jaki kolor języka mają żyrafy?"
            button1.setTitle("czerwony", for: <#T##UIControlState#>)
            button2.setTitle("czarny", for: <#T##UIControlState#>)
            button3.setTitle("zółty", for: <#T##UIControlState#>)
            button4.setTitle("zielony", for: <#T##UIControlState#>)
            
            break;
            
            
        case 6:
            
            questionLabel.text="Wszystkie te osoby były nominowane do Pokojowej Nagrody NObla, jedna z nich aż dwukrotnie. Która?"
            button1.setTitle("Wojciech Jaruzelski", for: <#T##UIControlState#>)
            button2.setTitle("Benito Mussolini", for: <#T##UIControlState#>)
            button3.setTitle("Józef Stalin", for: <#T##UIControlState#>)
            button4.setTitle("Władimir Putin", for: <#T##UIControlState#>)
            
            break;
            
        case 7:
            
            questionLabel.text="Po jakim czasie psuje się miód?"
            button1.setTitle("po roku", for: <#T##UIControlState#>)
            button2.setTitle("po 10 latach", for: <#T##UIControlState#>)
            button3.setTitle("po 25 latach", for: <#T##UIControlState#>)
            button4.setTitle("nigdy", for: <#T##UIControlState#>)
            
            break;
            
            
        case 8:
            
            questionLabel.text="Ile zwrotek ma grecki hymn?"
            button1.setTitle("1", for: <#T##UIControlState#>)
            button2.setTitle("nie ma słów", for: <#T##UIControlState#>)
            button3.setTitle("111", for: <#T##UIControlState#>)
            button4.setTitle("158", for: <#T##UIControlState#>)
            
            break;
            
        case 9:
            
            questionLabel.text="Jaki kolor ma skóra niedźwiedzia polarnego?"
            button1.setTitle("zielony", for: <#T##UIControlState#>)
            button2.setTitle("biały", for: <#T##UIControlState#>)
            button3.setTitle("różowy", for: <#T##UIControlState#>)
            button4.setTitle("czarny", for: <#T##UIControlState#>)
            
            break;
            
        case 10:
            
            questionLabel.text="Która ze znanych osóļ zdobyła najwięcej punktów IQ?"
            button1.setTitle("Sharon Stone", for: <#T##UIControlState#>)
            button2.setTitle("Albert Einstein", for: <#T##UIControlState#>)
            button3.setTitle("Natalie Portman", for: <#T##UIControlState#>)
            button4.setTitle("Stephen Hawking", for: <#T##UIControlState#>)
            
            break;
            
        case 11:
            
            questionLabel.text="W jakim wieku słonie przestają rosnąć?"
            button1.setTitle("20 lat", for: <#T##UIControlState#>)
            button2.setTitle("10 lat", for: <#T##UIControlState#>)
            button3.setTitle("40 lat", for: <#T##UIControlState#>)
            button4.setTitle("nigdy", for: <#T##UIControlState#>)
            
            break;
            
            
        case 12:
            
            questionLabel.text="Ile trwała wojna w historii?"
            button1.setTitle("mniej niż godzinę", for: <#T##UIControlState#>)
            button2.setTitle("miesiąc bez jednego dnia", for: <#T##UIControlState#>)
            button3.setTitle("prawie dobę", for: <#T##UIControlState#>)
            button4.setTitle("tydzień", for: <#T##UIControlState#>)
            
            break;
            
        case 13:
            
            questionLabel.text="Kto był pierwszym koronowanym królem Polski?"
            button1.setTitle("Władysław Jagiełło", for: <#T##UIControlState#>)
            button2.setTitle("Bolesław Chrobry", for: <#T##UIControlState#>)
            button3.setTitle("Mieszko I", for: <#T##UIControlState#>)
            button4.setTitle("Władysław Łokietek", for: <#T##UIControlState#>)
            
            break;
            
        case 14:
            
            questionLabel.text="Zielony w języku angielskim to...?"
            button1.setTitle("blue", for: <#T##UIControlState#>)
            button2.setTitle("red", for: <#T##UIControlState#>)
            button3.setTitle("grey", for: <#T##UIControlState#>)
            button4.setTitle("green", for: <#T##UIControlState#>)
            
            break;
            
        case 15:
            
            questionLabel.text="Kto rozśmiesza ludzi w cyrku?"
            button1.setTitle("clown", for: <#T##UIControlState#>)
            button2.setTitle("komik", for: <#T##UIControlState#>)
            button3.setTitle("satyryk", for: <#T##UIControlState#>)
            button4.setTitle("pajac", for: <#T##UIControlState#>)
            
            break;
            
        }
        
        
        
    }
    
    
    
    
    
    
    @IBAction func button1Action(_ sender: Any) {
    }
    
    @IBAction func button2Action(_ sender: Any) {
    }
    
    @IBAction func button3Action(_ sender: Any) {
    }
    
    @IBAction func button4Action(_ sender: Any) {
    }


}

