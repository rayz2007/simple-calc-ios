//
//  HistoryViewController.swift
//  simple-calc
//
//  Created by Ray Zhang on 10/22/18.
//  Copyright © 2018 Ray Zhang. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        makeHistory()
        // Do any additional setup after loading the view.
    }
    var history: [String] = []
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! ViewController
        destination.history = history
        
    }

    @IBOutlet weak var historyView: UIScrollView!
    
    func makeHistory(){
        for index in 0...history.count-1{
            let label = UILabel(frame:CGRect(x: 50, y: index*25+50, width: 300, height: 40))
            label.text = history[index]
            historyView.contentSize = CGSize(width: 300, height: index*26 + 70)
            historyView.addSubview(label)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
