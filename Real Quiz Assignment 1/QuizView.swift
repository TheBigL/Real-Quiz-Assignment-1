//
//  QuizView.swift
//  Real Quiz Assignment 3
//
//  Created by Leban A. Mohamed on 2017-01-22.
//  Copyright © 2017 Leban. All rights reserved.
//

import UIKit

class QuizView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    hideAnswerResult()
        ScoreLabel.text = "Score: \(score)"
        hideNextQuestionButton()
        categoryLabel.text = "\(chosenCategory)"
        if chosenCategory == "All"
        {
           
        }
    }
    var questionNumber: Int = 0
    var currentQuestion: Int = 0
    var rightAnswer: Int = 0
    var chosenCategory = ""
    
    struct Question
    {
        var Category: String!
        var Question: String!
        var Answers: [String]!
        var Answer: Int!
    }
    
    var Questions = [
        
        Question( Category: "American Trivia", Question: "Who was the 40th President of the United States?", Answers: ["Ronald Reagan", "Bill Clinton", "George W. Bush", "Barack Obama"], Answer: 0),
        
        
        Question(Category: "American Trivia", Question: "What is the motto of the state of New Hampshire?", Answers: ["Our potatoes are awesome!", "Let's rock and roll!", "Live Free or Die!", "Freedom for All!"], Answer: 2),
        
        
        
        Question(Category: "American Trivia", Question: "What is the Capital of Rhode Island?", Answers: ["Newport", "Georgetown", "Warwick", "Providence"], Answer: 3),
        
        
        
        
        Question(Category: "American Trivia", Question: "Which states is the southern most state geographically?", Answers: ["Arizona", "Hawaii", "Florida", "Texas"], Answer: 1),
        
        
        
        Question(Category: "American Trivia", Question: "How many states are there?", Answers: ["25", "34", "50", "45"], Answer: 2),
        
        
        
        Question(Category: "American Trivia", Question: "Which president did not get an airport with his name?", Answers: ["Ronald Reagan", "John F. Kennedy", "George H. W. Bush", "None of The Above"], Answer: 3),
        
        Question(Category: "American Trivia", Question: "Which state is Mount Rushmore located?", Answers: ["Kansas", "South Dakota", "Nebraska", "Wisconsin"], Answer: 1),
        
        Question(Category: "American Trivia", Question: "Which amendment to the US Consitution granted states more autonomy?", Answers: [ "The 2nd Amendment", "The 5th Amendment", "The 4th Amendment", "The 10th Amendment"], Answer: 3),
        
        Question(Category: "American Trivia", Question: "Which party won 3rd place in the 2016 presidential election", Answers: ["Libertarian", "Green", "Constitution", "There's no 3rd Parties!"], Answer: 0),
        
        Question(Category: "American Trivia", Question: "Which Founding Father had a musical based on his life in 2016?", Answers: ["Thomas Jefferson", "Alexander Hamilton", "George Washington", "James Madison"], Answer: 1),
        
        Question(Category: "Canadian Trivia", Question: "When was Alberta established as a province?", Answers: ["1905", "1953", "1968", "1867"], Answer: 0),
        
        
        Question(Category: "Canadian Trivia", Question: "Which event was the catcalyst for when Martial Law declared?", Answers:["World War 1", "World War 2", "The Hostage Crisis of 1970", "All of the above"], Answer: 3),
        
        
        Question(Category: "Movie Trivia", Question: "Who played Randall Boggs in the 2001 Pixar hit, Monsters, Inc.?", Answers:["James Coburn", "John Goodman", "Steve Buscemi", "Billy Crystal"], Answer: 2),
        
        Question(Category: "Canadian Trivia", Question: "What is the capital of Ontario?", Answers:["London", "St. Timmis", "Burlington", "Toronto"], Answer: 3),
        
        Question(Category: "Canadian Trivia", Question: "Which Prime Minister did not have an airport named after him?", Answers: ["Pierre Trudeau", "John Diefenbaker", "Joe Clark", "Lester Pearson"], Answer: 2),
        
        Question(Category: "Video Game Trivia", Question: "How can you defeat a Goomba?", Answers:["Stomp on its head!", "Throw a fireball!", "Destroy a block from the underside!", "All of the above!"], Answer: 3),
        
        Question(Category: "American Trivia", Question: "Which amendment to the constitution guarantees the right to own the right to own firearms?", Answers: ["The 5th amendment", "The 2nd Amendment", "The 9th Amendment", "The 12th Amendment"], Answer: 1),
        
        Question(Category: "Canadian Trivia", Question: "When was Canada founded as a country?", Answers: ["1812", "1845", "1867", "1833"], Answer: 2),
        
        Question(Category: "Canadian Trivia", Question: "Which province doesn't have a provincial sales tax?", Answers: ["Ontario", "Manitoba", "British Columbia", "Alberta"], Answer: 3),
        
        Question(Category: "American Trivia", Question: "Which president affirm the FBI's internment of Japanese people?", Answers: ["Donald Trump", "Franklin Roosevelt", "Harry Truman", "Lyndon Johnson"], Answer: 0)
        
    ]
    
    @IBOutlet weak var categoryLabel: UILabel!

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func hideNextQuestionButton()
    {
        nextQuestionButton.isHidden = true
    }
    
    func showNextQuestionButton()
    {
        nextQuestionButton.isHidden = false
    }
    
    var myAnswer: Int!
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answerResult: UILabel!
    
    @IBOutlet weak var answerButton1: UIButton!
    @IBAction func onButton1Pressed(_ sender: UIButton)
    {
        myAnswer = 0
        showResultsandAnswers(myAnswer)
    }
    
    @IBAction func onButton4Pressed(_ sender: UIButton)
    {
        myAnswer = 3
        showResultsandAnswers(myAnswer)
    }
    @IBOutlet weak var answerButton2: UIButton!
    @IBAction func onButton3Pressed(_ sender: UIButton)
    {
        myAnswer = 2
        showResultsandAnswers( myAnswer)
    }
    @IBAction func onButton2Pressed(_ sender: UIButton)
    {
        myAnswer = 1
        showResultsandAnswers(myAnswer)
    }
    
    @IBOutlet weak var answerButton3: UIButton!

    
    @IBOutlet weak var answerButton4: UIButton!
    
    @IBOutlet weak var nextQuestionButton: UIButton!
    

    
    @IBOutlet weak var ScoreLabel: UILabel!
    
    func hideAnswerResult()
    {
        answerResult.isHidden = true;
    }
    
    func showAnswerResult()
    {
        answerResult.isHidden = false;
    }
    
    func gameOver()
    {
        answerButton1.isHidden = true;
        answerButton2.isHidden = true;
        answerButton3.isHidden = true;
        answerButton4.isHidden = true;
        
        if guesses == 0
        {
            questionLabel.textColor = UIColor.red
            questionLabel.text = "Game Over!"
            answerResult.text = "Bummer! You didn't get many questions right..."
        }
        
        else
        {
            questionLabel.text = "You got \(score) out of \(Int(numberOfQuestions)) right."
            
            if(Double(score) / Double(numberOfQuestions) < 0.5)
            {
                answerResult.text = "Ouch! You sure you know your way around the United States?"
            }
            
            else if(Double(score) / Double(numberOfQuestions) <= 0.6)
            {
                answerResult.text = "Barely passable... You'd be failing if you were in an American public school!"
            }
            
            else if(Double(score) / Double(numberOfQuestions) <= 0.7)
            {
                answerResult.text = "Step it up! Try a little bit harder and you'll potentially do awesome."
            }
            
            else if (Double(score) / Double(numberOfQuestions) <= 0.8)
            {
                answerResult.text = "You know your stuff pretty well. Kudos!"
            }
            
            else
            {
                answerResult.text = "Awesome job! You can handle your stuff! Come back anytime!"
            }
        }
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        newQuestion()
    }
    
    func newQuestion()
    {
        hideAnswerResult()
        
        hideNextQuestionButton()
        
        
        
        //Checks if the question number is less than the number of questions
        if(questionNumber <= Int(numberOfQuestions))
        {
            
            let randomNumber = Int(arc4random_uniform(UInt32(Questions.count)))
            
            while(Questions[randomNumber].Category == chosenCategory && chosenCategory != "All" || chosenCategory != "")
            {
                if(Questions[randomNumber].Category != chosenCategory)
                {
                Questions.remove(at: randomNumber)
                }
            }
            
            
            questionLabel.text = Questions[randomNumber].Question
            
            
            NSLog("Entering answer 1...")
            answerButton1.setTitle(Questions[randomNumber].Answers[0], for: .normal)
            
            NSLog("Entering answer 2...")
            answerButton2.setTitle(Questions[randomNumber].Answers[1], for: .normal)
            
            NSLog("Entering answer 3...")
            answerButton3.setTitle(Questions[randomNumber].Answers[2], for: .normal)
            
            NSLog("Entering answer 4...")
            answerButton4.setTitle(Questions[randomNumber].Answers[3], for: .normal)
            
            rightAnswer = Questions[randomNumber].Answer
            
            Questions.remove(at: randomNumber)
        }
            

        
        else
        {
            gameOver()
        }
        
        
        
        
        
    }
    

    
    
    
    func showResultsandAnswers(_ myAnswer: Int)
    {
        if(myAnswer == rightAnswer)
        {
            answerResult.text = "Congrats! You got that one right!"
            score += 1
            showAnswerResult()
            showNextQuestionButton()
            ScoreLabel.text = "Score: \(score)"
            
            if(questionNumber + 1 == Int(numberOfQuestions))
            {
                nextQuestionButton.setTitle("End Quiz", for: .normal)
            }
            
        }
            
        else
        {
            answerResult.text = "Bummer! You missed that one!"
            showNextQuestionButton()
            showAnswerResult()
            guesses -= 1
            
            if(guesses == 0)
            {
                gameOver()
            }
        }

    }
    
    
    
    @IBAction func onNextQuestionButtonPressed(_ sender: UIButton)
    {
        NSLog("Loading next question")
        if(Int(numberOfQuestions) - 1 > questionNumber)
        {
            questionNumber += 1
        
            questionLabel.text = Questions[currentQuestion].Question
            
            newQuestion();
        }
        
        /*else if (questionNumber + 1 == Int(numberOfQuestions))
        {
            gameOver()
        }*/
            
        else
        {
            NSLog("Congrats! You've gone through all the questions!")
            gameOver()
        }
        
        
        
        
        
        
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
