//
//  ViewController.swift
//  OnlineSDKLib
//
//  Created by manjunath.ramesh@onepointglobal.com on 10/04/2017.
//  Copyright (c) 2017 manjunath.ramesh@onepointglobal.com. All rights reserved.
//

import UIKit

class ViewController: OPGViewController, OPGSurveyDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        let sdk = OPGSDK()
        do {
            let auth = try sdk.authenticate("m.ramesh", password: "dev")
            if auth.isSuccess == 1 {
                self.loadSurvey("18MayOnlineMedia")
            }
            else {
                print("Authentication Failed")
            }
        }
        catch{
            print("Authentication Failed")         /* @"Error Occured. Contact Support!" */
            
        }


            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

     func didSurveyStartLoad() {
        print("Survey Start Load")
    }
    
    func didSurveyFinishLoad() {
        print("Survey Finish Load")
    }
    
    func didSurveyCompleted() {
        self.navigationController?.popViewController(animated: true)
    }

}

