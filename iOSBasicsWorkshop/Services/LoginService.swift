//
//  LoginService.swift
//  iOSBasicsWorkshop
//
//  Created by Michel Bueno on 07/11/17.
//  Copyright © 2017 Michel Bueno. All rights reserved.
//

import Foundation
import Alamofire
import Gloss
import RxSwift

class LoginService {
    func doLogin(username: String, password: String) -> Observable<UserInfo> {
        return Observable<UserInfo>.create { (observer) -> Disposable in
            let url = ""

            let requestRef = Alamofire.request(url, method: .get).validate().responseJSON { response in

            }

            return Disposables.create {
                requestRef.cancel()
            }
        }
    }

    private func resolveLoginUrlForUsername(_ username: String, password: String) -> URL {
        var urlComponents = URLComponents(string: "")
        urlComponents?.queryItems = [URLQueryItem(name: "", value: username),
                                     URLQueryItem(name: "", value: password)]

        return (try! urlComponents?.asURL())!
    }
}
