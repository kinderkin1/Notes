//
//  File.swift
//  Notes
//
//  Created by Kin Der on 10.01.2023.
//


import SwiftUI

struct Note: Identifiable{
   var id = UUID() . uuidString
    var name  : String
 var note: String
    var index: Int

    var date: Date
    var cardColor: Color
    var textcardColor: Color
    var titleColor: Color
    var carColor2 : String
   
    }
    func getSampleDate (offset: Int)->Date{
        let calender = Calendar.current
        let date = calender.date (byAdding: .day, value: offset, to: Date())
        return date ?? Date()
}

var    notes: [Note]  = [

    Note(name: "Важно.", note: "", index: 0, date: getSampleDate(offset: 1), cardColor: Color(red: 0.77, green: 0.213, blue: 0.321, opacity: 0.9), textcardColor: .yellow, titleColor: Color.black, carColor2: "red"
     
        ),
    Note(name: "Запомнить.", note: """
         ivory - цвет, слоновой кости
         transcendence - превосходтво
         """, index: 1, date: getSampleDate(offset: 1), cardColor: Color(red: 0.1, green: 0.41, blue: 0.346), textcardColor: .yellow, titleColor: .black, carColor2: "green")
,
    Note(name: "Мысли.", note: """
When the last tree has been cut
down, The last fish caught,
the last river poisoned,
only then will we realize
we cannot eat money.
""", index: 2, date: getSampleDate(offset: 1),  cardColor: Color(red: 0.437, green: 0.154, blue: 0.713), textcardColor: .yellow, titleColor: .white, carColor2: "purple"),
    Note(name: "Чувства.", note: """
Ценю жизнь и желаю всем добра
Хочу чтобы каждый был добрее к друг другу
Ужас видить как другие отнимают жизнь
""", index: 3, date: getSampleDate(offset: 1), cardColor:Color(red: 0.984, green: 0.313, blue: 0.077), textcardColor: .yellow, titleColor: .white, carColor2: "orange"),
    Note(name: "Настроение.", note: """
Счастлив, благодарен за бытие
""", index: 4, date: getSampleDate(offset: 1), cardColor: Color(red: 0.611, green: 0.717, blue: 0.83), textcardColor: .yellow, titleColor: .white, carColor2: "blue")  ,
    Note(name: "DEATH NOTE", note: "", index: 0, date: getSampleDate(offset: 1), cardColor: Color(red: 0.77, green: 0.213, blue: 0.321, opacity: 0.9), textcardColor: .white, titleColor: Color.black, carColor2: "black"
     
        )]

