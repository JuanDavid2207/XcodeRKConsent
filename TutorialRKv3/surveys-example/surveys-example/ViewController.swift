//
//  ViewController.swift
//  surveys-example
//
//  Created by Juan David López Regalado on 12/06/24.
//

import UIKit
import ResearchKit
import ResearchKitUI

class ViewController: UIViewController, ORKTaskViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func startSurveyTapped(_ sender: Any) {
        let consentTask = ConsentManager.shared.createConsentTask()
        let taskViewController = ORKTaskViewController(task: consentTask, taskRun: nil)
        
        taskViewController.delegate = self
        present(taskViewController,animated: true, completion: nil)

        }
    
    func taskViewController(_ taskViewController: ORKTaskViewController, didFinishWith reason: ORKTaskFinishReason, error: (any Error)?) {
        taskViewController.dismiss(animated: true, completion: nil)
    }
    
    
}

