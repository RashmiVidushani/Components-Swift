//
//  ComponentModel.swift
//  Assignment02_IOS
//
//  Created by Rashmi Vidushani on 2025-02-16.
//

import SwiftUI

// Component model representing UI components
struct Component : Identifiable {
    let id = UUID() // Unique ID for each component
    let name: String
    let systemIcon: String  // SF Symbol icon name
    let section: String
    let description : String
    let documentationURL: String
    let type : ComponentType
}

// Enum for component types
enum ComponentType{
    case text, label, textField, secureField,textArea, image
    case button, menu, link, slider, stepper, toggle, picker, datePicker, colorPicker, progressView
    case hStack, vStack, zStack, form, navigationView, alert, sheet
    case plain, inset, grouped, insetGrouped, sidebar
}
