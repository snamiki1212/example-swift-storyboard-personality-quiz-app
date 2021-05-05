//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by shunnamiki on 2021/05/04.
//

import UIKit

class ResultsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePeronalityResult()
        navigationItem.hidesBackButton = true
    }

    var responses: [Answer]
    init?(coder: NSCoder, responses: [Answer]){
        self.responses = responses
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func calculatePeronalityResult(){
        let frequencyOfAnswers = responses.reduce(into: [:]) {
            (counts, answer) in counts[answer.type, default: 0] += 1
        }
        let frequencyAnswesSorted = frequencyOfAnswers.sorted(by: {
            (pair1, pair2) in return pair1.value > pair2.value
        })
        let mostCommonAsnwer = frequencyAnswesSorted.first!.key
        resultAnswerLabel.text = "You are a \(mostCommonAsnwer.rawValue)!"
        resultDefinitionLabel.text = mostCommonAsnwer.definition
    }
    

    @IBOutlet var resultAnswerLabel: UILabel!
    @IBOutlet var resultDefinitionLabel: UILabel!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
