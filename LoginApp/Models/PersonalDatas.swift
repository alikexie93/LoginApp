//
//  PersonalDatas.swift
//  LoginApp
//
//  Created by Алексей Филиппов on 05.04.2023.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(login: "Alexey", password: "Password", person: Person(
                name: "Брюс",
                surname: "Филиппов",
                patronymic: "Алексеевич",
                nickName: "Bruce",
                dateOfBirth: "10.04.2021",
                bioOfPerson: "Котенок по имени Брюс родился в 2021 году в городе Якутске. Его мать была домашней кошкой, а отец - вислоухий шотландец, который случайно забрел во двор и познакомился с матерью Брюса. Брюс рос сильным и здоровым котенком. Он был очень любопытным и игривым, постоянно исследуя окружающий мир и привлекая к себе внимание своими шалостями. Уже с раннего возраста он проявлял умение ловить мышей и других грызунов, что говорило о его хорошо развитых охотничьих навыках. Когда Брюсу исполнилось несколько месяцев, его взяли в новый дом, где он быстро привык к своим новым хозяевам и стал любимым членом семьи. Он продолжает радовать их своей активностью, ласковостью и характерной кошачьей улыбкой."
            )
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let patronymic: String
    let nickName: String
    let dateOfBirth: String
    let bioOfPerson: String
}
