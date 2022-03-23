//
//  BackgroundCall.swift
//  lightarti-rest-ios-test
//
//  Created by Linus Gasser on 31.05.21.
//

import Foundation
import lightarti_rest_ios


class BackgroundCall: ObservableObject {
    @Published var reply: String

    init(){
        initLogger();

        self.reply = "Waiting for reply"
        Thread.detachNewThread {
            self.fetch_result()
        }
    }

    func fetch_result(){
        DispatchQueue.main.async { [unowned self] in
            do {
                let response = try Client
                    .init(dict_dir: Bundle.main.resourcePath! + "/directory")
                    .send(request: .init(url: URL.init(string: "https://example.com/")!));

                reply = "\(response.status): \(response.body)";
            } catch {
                reply = "Error while fetching response: \(error)\n";
            }
        }
    }
}
