//
//  ViewController.swift
//  ExampleTimer
//
//  Created by Sun on 21/10/2021.
//

import UIKit

class ViewController: UIViewController {

    let timerManager = TimerManager.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timerManager.screenName = "ViewController"
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        timerManager.resetTimer()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        timerManager.stopTimer(screenName: "ViewController")
    }
    
    @IBAction func goScreenTwo(_ sender: Any) {
        guard let viewcontroller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewControllerSecond") as? ViewControllerSecond else { return }
        navigationController?.pushViewController(viewcontroller, animated: true)
    }
}

