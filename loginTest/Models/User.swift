//
//  User.swift
//  loginTest
//
//  Created by Gleb Chumachenko on 24.04.23.
//

import Foundation


struct User {
    var login: String?
    var password: String?
    var age: String?
    
    
}

extension User {
    static func getLogins() -> User{
        let builder = UserForLoginBuilder()
        let director = Director()
        director.update(builder: builder)
        director.buildOnlyLoginUser(login: "admin")
        let user = builder.getResult()
        return user
    }
    
     
}

protocol Builder {
    func reset()
    func getResult() -> User
    func setLogin(login: String?)
    func setPassword(password: String?)
    func setAge(age: String?)
}

class UserForLoginBuilder: Builder {

    func setLogin(login: String?) {
        user.login = login
    }

    func setPassword(password: String?) {
        user.password = password
    }

    func setAge(age: String?) {
        user.age = age
    }


    var user: User = User()

    func reset() {
        self.user = User()
    }

    func getResult() -> User {
        return user
    }

}

class Director {
    private var builder: Builder?
    func update(builder: Builder) {
           self.builder = builder
       }
    
    func buildOnlyLoginUser(login: String) {
        builder?.setLogin(login: login)
       }
}

 



