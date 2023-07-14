//
//  TutorialView.swift
//  BetterRestKit
//
//  Created by Kitwana Akil on 7/14/23.
//

import SwiftUI

struct TutorialView: View {
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date.now
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            
            Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
            
            DatePicker("Please enter a date", selection: $wakeUp)
            DatePicker("Please enter another date", selection: $wakeUp)
                .labelsHidden()
            DatePicker("Please enter a date", selection: $wakeUp, displayedComponents: .hourAndMinute)
            DatePicker("Please enter a time", selection: $wakeUp, in: Date.now...)
            
            Text(Date.now, format: .dateTime.hour().minute())
            Text(Date.now, format: .dateTime.day().month().year())
            Text(Date.now.formatted(date: .long, time: .omitted))
        }
        .padding()
    }
    
    func trivialExample() {
        let now = Date.now
        let tommorrow = Date.now.addingTimeInterval(86400)
        let range = now...tommorrow
    }
    
    func anotherTrivialExample() {
        var components = DateComponents()
        components.hour = 8
        components.minute = 0
        let date = Calendar.current.date(from: components) ?? Date.now
        
        let components2 = Calendar.current.dateComponents([.hour, .minute], from: Date.now)
        let hour = components2.hour ?? 0
        let minute = components2.minute ?? 0
        
        
    }
}

struct TutorialView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialView()
    }
}
