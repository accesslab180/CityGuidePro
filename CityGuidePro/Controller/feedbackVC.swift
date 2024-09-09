//
//  feedbackVC.swift
//  CityGuidePro
//
//  Created by Badrinadh Aila on 3/19/24.
//

import Foundation

import UIKit

class feedbackVC: UIViewController {
    
    let ratingControl = RatingControl()
    let feedbackField = UITextField()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Set up the view controller
        view.backgroundColor = .white

        // Set up the alert controller
        let alertController = UIAlertController(title: "Feedback", message: "\n\n\n\n\n\n", preferredStyle: .alert)

        // Set up the rating control
        ratingControl.frame = CGRect(x: 20, y: 50, width: 230, height: 50)
        alertController.view.addSubview(ratingControl)

        // Set up the feedback field
        feedbackField.frame = CGRect(x: 20, y: 110, width: 230, height: 30)
        feedbackField.placeholder = "Please enter your feedback here"
        alertController.view.addSubview(feedbackField)

        // Set up the submit button
        let submitAction = UIAlertAction(title: "Submit", style: .default) { [weak self] _ in
            // Handle feedback submission
            print("Feedback submitted: \(self?.feedbackField.text ?? "")")
        }
        alertController.addAction(submitAction)

        // Set up the cancel button
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)

        // Present the alert controller
        present(alertController, animated: true, completion: nil)
    }
   
}
