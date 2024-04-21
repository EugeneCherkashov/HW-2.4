//
//  Model.swift
//  HW 2.4
//
//  Created by Евгений on 20.04.2024.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(login: "Zhenya",
             password: "222",
             person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let photo: String
    let university: String
    let program: String
    let bio: String
    
    static func getPerson() -> Person {
        Person(name: "Женя",
               surname: "Черкашов",
               photo: "Me",
               university: "Самарский государственный аэрокосмический университет",
               program: "Проектирование авиационных и ракетных двигателей",
               bio: "Мне 22, люблю зверушек и эндуро мотоциклы, летом стараюсь почаще выбираться исследовать природу Поволжья. Если не стану IOS-разработчиком, пойду строить ракетные движки по специальности (не факт, что запустится). В свободное время люблю мучить вопросами других людей и смотреть фильмы, с переменным успехом хожу в спортзал"
        )
    }
    
}
