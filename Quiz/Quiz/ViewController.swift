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
    
    @IBOutlet weak var komunikatLabel: UILabel!
    
    @IBOutlet weak var nextQuestion: UIButton!
    
    
    @IBOutlet weak var wynikLabel: UILabel!
    var correctAnswer = String()
 
    //deklaracja tablicy pytan i tablicy punktacji pienieznej oraz zmiennych iteracyjnych po tablicach zaczynajacych sie od -1 bo gdy i = i+1 to i pocz. = 0 a nie 1 !
    var tablicaPytan = Array(repeating: 0, count: 11)
    var gotowka : [String] = []
    var i : Int = -1
    var j: Int = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        tablicaPytan=generateRandomNumber(1, 15, 11)
        
        
        gotowka=["500zł","1000zł - Kwota Gwarantowana","5000zł","20000zł","40000zł - Kwota Gwarantowana","75000zł","125000zł","250000zł","500000zł","1000000zł",""]
        
     
        
        //wywolanie funkcji
        
        losowanie()
        
        
        
  
  
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //funkcja losująca bez potworzen || z puli 15 pytań losuje 10
   
    func generateRandomNumber(_ from:Int, _ to:Int, _ qut:Int?)->[Int]
        
   {
    
    var myRandomNumbers=[Int]()
    var numberOfNumbers=qut
    let lower = UInt32(from)
    let higher=UInt32(to+1)
    
    if numberOfNumbers == nil || numberOfNumbers! > (to-from) + 1
    {
        numberOfNumbers = (to-from) + 1
    }
    while myRandomNumbers.count != numberOfNumbers
    {
        let myNumber = arc4random_uniform(higher-lower) + lower
            if !myRandomNumbers.contains(Int(myNumber))
            {
                myRandomNumbers.append(Int(myNumber))
        }
        
        }
    return myRandomNumbers
    }
    
    func ukryjPrzyciski()
    {
        button1.isHidden=true
        button2.isHidden=true
        button3.isHidden=true
        button4.isHidden=true
        questionLabel.isHidden=true
        wynikLabel.isHidden=true

        
    }
    

    
    func losowanie()
    {
        
        i=i+1
        j=j+1
        var pytanie = tablicaPytan[i]
        
        var wynik=gotowka[j]
        
        nextQuestion.isHidden=true
        komunikatLabel.text=""
        wynikLabel.text="Grasz o "+wynik
         
        print(i)
    
        
        switch (pytanie){
        case 1:
            
            questionLabel.text="W którym roku wybuchła pierwsza wojna światowa?"
            button1.setTitle("A: 1410", for: UIControlState.normal)
            button2.setTitle("B: 1914", for: UIControlState.normal)
            button3.setTitle("C: 1918", for: UIControlState.normal)
            button4.setTitle("D: 1945", for: UIControlState.normal)
            correctAnswer="2"
            
            break
            
        case 2:
            
            questionLabel.text="Jakie miasto jest stolicą Francji?"
            button1.setTitle("A: Paryż", for: UIControlState.normal)
            button2.setTitle("B: Berlin", for: UIControlState.normal)
            button3.setTitle("C: Moskwa", for: UIControlState.normal)
            button4.setTitle("D: Warszawa", for: UIControlState.normal)
            correctAnswer="1"
            
            break
            
        case 3:
            
            questionLabel.text="Na co urządzaja polowania słynne szympansy z lasu Bili?"
            button1.setTitle("A: na tygrysy", for: UIControlState.normal)
            button2.setTitle("B: na lwy", for: UIControlState.normal)
            button3.setTitle("C: na słonie", for: UIControlState.normal)
            button4.setTitle("D: na człowieka", for: UIControlState.normal)
            correctAnswer="1"
            break
            
        case 4:
            
            questionLabel.text="Ile razy na dobe pije zając?"
            button1.setTitle("A: 2", for: UIControlState.normal)
            button2.setTitle("B: 24", for: UIControlState.normal)
            button3.setTitle("C: zając nie pije", for: UIControlState.normal)
            button4.setTitle("D: 100", for: UIControlState.normal)
            correctAnswer="3"
            break
            
        case 5:
            
            questionLabel.text="Jaki kolor języka mają żyrafy?"
            button1.setTitle("A: czerwony", for: UIControlState.normal)
            button2.setTitle("B: czarny", for: UIControlState.normal)
            button3.setTitle("C: zółty", for: UIControlState.normal)
            button4.setTitle("D: zielony", for: UIControlState.normal)
            correctAnswer="2"
            break
            
            
        case 6:
            
            questionLabel.text="Wszystkie te osoby były nominowane do Pokojowej Nagrody Nobla, jedna z nich aż dwukrotnie. Która?"
            button1.setTitle("A: Wojciech Jaruzelski", for: UIControlState.normal)
            button2.setTitle("B: Benito Mussolini", for: UIControlState.normal)
            button3.setTitle("C: Józef Stalin", for: UIControlState.normal)
            button4.setTitle("D: Władimir Putin", for: UIControlState.normal)
            correctAnswer="3"
            break
            
        case 7:
            
            questionLabel.text="Po jakim czasie psuje się miód?"
            button1.setTitle("A: po roku", for: UIControlState.normal)
            button2.setTitle("B: po 10 latach", for: UIControlState.normal)
            button3.setTitle("C: po 25 latach", for: UIControlState.normal)
            button4.setTitle("D: nigdy", for: UIControlState.normal)
            correctAnswer="4"
            break
            
            
        case 8:
            
            questionLabel.text="Ile zwrotek ma grecki hymn?"
            button1.setTitle("A: 1", for: UIControlState.normal)
            button2.setTitle("B: nie ma słów", for: UIControlState.normal)
            button3.setTitle("C: 111", for: UIControlState.normal)
            button4.setTitle("D: 158", for: UIControlState.normal)
            correctAnswer="4"
            break
            
        case 9:
            
            questionLabel.text="Jaki kolor ma skóra niedźwiedzia polarnego?"
            button1.setTitle("A: zielony", for: UIControlState.normal)
            button2.setTitle("B: biały", for: UIControlState.normal)
            button3.setTitle("C: różowy", for: UIControlState.normal)
            button4.setTitle("D: czarny", for: UIControlState.normal)
            correctAnswer="2"
            break
            
        case 10:
            
            questionLabel.text="Która ze znanych osób zdobyła najwięcej punktów IQ?"
            button1.setTitle("A: Sharon Stone", for: UIControlState.normal)
            button2.setTitle("B: Albert Einstein", for: UIControlState.normal)
            button3.setTitle("C: Natalie Portman", for: UIControlState.normal)
            button4.setTitle("D: Stephen Hawking", for: UIControlState.normal)
            correctAnswer="3"
            break
            
        case 11:
            
            questionLabel.text="W jakim wieku słonie przestają rosnąć?"
            button1.setTitle("A: 20 lat", for: UIControlState.normal)
            button2.setTitle("B: 10 lat", for: UIControlState.normal)
            button3.setTitle("C: 40 lat", for: UIControlState.normal)
            button4.setTitle("D: nigdy", for: UIControlState.normal)
            correctAnswer="2"
            break
            
            
        case 12:
            
            questionLabel.text="Ile trwała najkrótsza wojna w historii?"
            button1.setTitle("A:mniej niż godzinę", for: UIControlState.normal)
            button2.setTitle("B: miesiąc bez jednego dnia", for: UIControlState.normal)
            button3.setTitle("C: prawie dobę", for: UIControlState.normal)
            button4.setTitle("D: tydzień", for: UIControlState.normal)
            correctAnswer="1"
            break
            
        case 13:
            
            questionLabel.text="Kto był pierwszym koronowanym królem Polski?"
            button1.setTitle("A: Władysław Jagiełło", for: UIControlState.normal)
            button2.setTitle("B: Bolesław Chrobry", for: UIControlState.normal)
            button3.setTitle("C: Mieszko I", for: UIControlState.normal)
            button4.setTitle("D: Władysław Łokietek", for: UIControlState.normal)
            correctAnswer="2"
            
            break
            
        case 14:
            
            questionLabel.text="Zielony w języku angielskim to...?"
            button1.setTitle("A: blue", for: UIControlState.normal)
            button2.setTitle("B: red", for: UIControlState.normal)
            button3.setTitle("C: grey", for: UIControlState.normal)
            button4.setTitle("D: green", for: UIControlState.normal)
            correctAnswer="4"
            break
            
        case 15:
            
            questionLabel.text="Kto rozśmiesza ludzi w cyrku?"
            button1.setTitle("A: clown", for: UIControlState.normal)
            button2.setTitle("B: komik", for: UIControlState.normal)
            button3.setTitle("C: satyryk", for: UIControlState.normal)
            button4.setTitle("D: pajac", for: UIControlState.normal)
            correctAnswer="1"
            break
            
        default:
            break
            
        }

    }
    


    
    
    
    @IBAction func button1Action(_ sender: Any) {
        if (correctAnswer=="1")
        {
           komunikatLabel.text="To poprawna odpowiedź!"
            
            nextQuestion.isHidden=false;
        }
   
        else if ( i > 1 && i < 4)
        {
            komunikatLabel.text="Wygrałes 1000 zł"
            ukryjPrzyciski()
            
            
        }
        else if (i > 4 && i < 9)
        {
            komunikatLabel.text="Wygrałes 40 000 zł"
            ukryjPrzyciski()
        }
        else
        {
            komunikatLabel.text="Wygrałes 0 zł"
        ukryjPrzyciski()
        }

        
    }
    
    @IBAction func button2Action(_ sender: Any) {
        if (correctAnswer=="2")
        {
           komunikatLabel.text="To poprawna odpowiedź!"
            nextQuestion.isHidden=false
        }
    
        else if ( i > 1 && i < 4)
        {
            komunikatLabel.text="Wygrałes 1000 zł"
            ukryjPrzyciski()
            
            
        }
        else if (i > 4 && i < 9)
        {
            komunikatLabel.text="Wygrałes 40 000 zł"
            ukryjPrzyciski()
        }
        else
        {
            komunikatLabel.text="Wygrałes 0 zł"
            ukryjPrzyciski()
        }

    }
    
    @IBAction func button3Action(_ sender: Any) {
        if (correctAnswer=="3")
        {
           komunikatLabel.text="To poprawna odpowiedź!"
             nextQuestion.isHidden=false
        }
     
        else if( i > 1 && i < 4)
        {
            komunikatLabel.text="Wygrałes 1000 zł"
            ukryjPrzyciski()
            
        }
        else if (i > 4 && i < 9)
        {
            komunikatLabel.text="Wygrałes 40 000 zł"
            ukryjPrzyciski()
        }
        else
        {
            komunikatLabel.text="Wygrałes 0 zł"
            ukryjPrzyciski()
        }


    }
    
    @IBAction func button4Action(_ sender: Any) {
        
        if (correctAnswer=="4")
        {
           komunikatLabel.text="To poprawna odpowiedź!"
            nextQuestion.isHidden=false
            
        }
      
        else if( i > 1 && i < 4)
        {
            komunikatLabel.text="Wygrałes 1000 zł"
          ukryjPrzyciski()

        }
        else if (i > 4 && i < 9)
        {
            ukryjPrzyciski()
            komunikatLabel.text="Wygrałes 40 000 zł"
        }
        else
        {
            ukryjPrzyciski()
            komunikatLabel.text="Wygrałes 0 zł"
        }
    }
    

    @IBAction func nextQuestionAction(_ sender: Any) {
        
   losowanie()
        if i > 9
        {
            komunikatLabel.text="Wygrałes milionik!!!!!!!"
            ukryjPrzyciski()
        }
    }
    
    
    
    @IBAction func backButton(_ sender: Any) {
        
        
         performSegue(withIdentifier: "segueBack", sender: self)
    }
   

}

