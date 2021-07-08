//
//  BackgroundCall.swift
//  arti-ios-test
//
//  Created by Linus Gasser on 31.05.21.
//

import Foundation
import arti_ios

class BackgroundCall: ObservableObject {
    @Published var reply: String
    
    init(){
        self.reply = "Waiting for reply"
        Thread.detachNewThread {
            self.fetch_result()
        }
    }
    
    func fetch_result(){
        DispatchQueue.main.async { [unowned self] in
            do {
                // This directory needs to hold the `consensus.txt` and `microdescriptors.txt`
                // files.
                let dict_dir = Bundle.main.resourcePath! + "/directory";
                let resp = try callArti(dict_dir: dict_dir,
                    method: .GET, url: "https://www.c4dt.org/index.html");
                if let str = String(data: resp.body, encoding: .utf8){
                    self.reply = str;
                } else {
                    self.reply = "Couldn't decode answer";
                }
            } catch {
                print("Error info: \(error)")
                self.reply = "Error while fetching response\n" + error.localizedDescription;
            }
        }
    }
}
