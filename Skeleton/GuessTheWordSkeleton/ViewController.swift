//
//  ViewController.swift
//  GuessTheWordSkeleton
//
//  Created by Will Oakley on 11/2/18.
//  Copyright © 2018 Will Oakley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //TODO: Connect views from storyboard
    
    /* Arrays of the words and hints used in the game. Randomly chosen by setWord() */
    
    let words = ["Hello", "Berkeley", "Oski", "iPhone"]
    let hints = ["How do you do?", "The school we are at", "go berz", "We are making an app for it."]
    
    /* Arrays that will keep track of all words the user successfully guessed. Will be used in HistoryTableView */
    var successfullyGuessed: [String] = []
    var successfullyGuessedCounts: [Int] = []
    
    /* Variables that keep track of the current state of the game during a given round */
    var currentWord: String!
    var currentWordIndex: Int!
    var numGuesses: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setWord()
    }
    
    /* Function setWord() resets a round to an inital state by selecting random word and resetting guesses/labels */
    func setWord() {
        //TODO: Implement setWord logic (reset numGuesses, select random index, set current word, set label)
    }
    
    /* Function that is called when word in text field is successfully matched with currentWord.
     Adds word to successfullyGuessed and shows alert to user that they won round with option to view history. */
    func guessedCorrect() {
        successfullyGuessed.append(currentWord)
        successfullyGuessedCounts.append(numGuesses)
        let rightAlert = UIAlertController(title: "Nice!", message: "You got the word in " + String(numGuesses) + " tries!", preferredStyle: UIAlertController.Style.alert)
        rightAlert.addAction(UIAlertAction(title: "Play Again", style: .default, handler: { action in
            print("Pressed play again")
            self.dismiss(animated: true, completion: nil)
            self.setWord()
        }))
        rightAlert.addAction(UIAlertAction(title: "View History", style: .default, handler: { action in
            print("Pressed view history")
            self.dismiss(animated: true, completion: nil)
            self.setWord()
            self.historyTapped(self)
        }))
        self.present(rightAlert, animated: true, completion: nil)
    }
    
    /* Function that is called when the user guesses incorrectly. Shows alert. */
    func guessedWrong() {
        let wrongAlert = UIAlertController(title: "Uh oh", message: "That word is not right! Try again :(", preferredStyle: UIAlertController.Style.alert)
        wrongAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(wrongAlert, animated: true, completion: nil)
    }
    
    /* Function called when guess button is tapped. Compares text field text with currentWord and increases numGuesses by 1. */
    @IBAction func guessTapped(_sender: Any) {
        //TODO: Implement tappedGuess logic (add 1 to numGuesses, compare word in textField to currentWord and call guessedWrong or guessedCorrect)
    }
    
    /* Function called when hint button is tapped. Shows an alert with hint from hints that corresponds to random word index. */
    @IBAction func hintTapped(_sender: Any) {
        // TODO: Implement hintTapped
    }
    
    /* Function called when history button is tapped. Segues to HistoryTableViewController. */
    @IBAction func historyTapped(_ sender: Any) {
        //TODO: Segue to history view
    }
    
    /* Function that passes history arrays to HistoryTableViewController. */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //TODO: Prepare for segue to history view (set properties to history arrays)
        let navController = segue.destination as! UINavigationController
        let destination = navController.viewControllers[0] as! HistoryTableViewController
    }
}


