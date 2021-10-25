//
//  ViewControllerSecond.swift
//  ExampleTimer
//
//  Created by Sun on 21/10/2021.
//

import UIKit

class ViewControllerSecond: UIViewController {

    let timerManager = TimerManager.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timerManager.screenName = "ViewControllerSecond"
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        timerManager.resetTimer()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        timerManager.stopTimer(screenName: "ViewControllerSecond")
    }
}

