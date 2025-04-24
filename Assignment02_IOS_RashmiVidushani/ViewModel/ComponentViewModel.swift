//
//  ComponentViewModel.swift
//  Assignment02_IOS
//
//  Created by Rashmi Vidushani on 2025-02-16.
//

import SwiftUI
import SafariServices

class ComponentViewModel: ObservableObject {
    // Holds filtered search results in an array
    @Published var searchResults : [Component] = [];
   // Triggers filtering function when updated
    @Published var searchTerm : String = ""{
        didSet{
            filterSearchResults()
        }
    }
    
    // For search results filtering
    func filterSearchResults() {
        if searchTerm.isEmpty {
            searchResults = components
        } else {
        // filter components - case insensitive
            searchResults = components.filter {
                $0.name.localizedCaseInsensitiveContains(searchTerm)
            }
        }
    }
    
   
    // Returns filtered results or full list depending on search status
    var listData: [Component] {
        return searchResults.isEmpty && searchTerm.isEmpty ? components : searchResults
    }
    
    // Components and its details required for the ListView and DetailView
    @Published var components : [Component] = [
        Component(
            name: "Text",
            systemIcon: "textformat",
            section: "Text Input/Output",
            description: "Displays one or more lines of read-only text.",
            documentationURL: "https://developer.apple.com/documentation/swiftui/text",
            type: .text),
        
        Component(
            name: "Label",
            systemIcon: "tag",
            section: "Text Input/Output",
            description: "A view that pairs an icon with a text label.",
            documentationURL: "https://developer.apple.com/documentation/swiftui/label",
            type: .label),
        
        Component(
            name: "TextField",
            systemIcon: "square.and.pencil",
            section: "Text Input/Output",
            description: "A control that allows users to input and edit text.",
            documentationURL: "https://developer.apple.com/documentation/swiftui/textfield",
            type: .textField),
        
        Component(
            name: "SecureField",
            systemIcon: "lock",
            section: "Text Input/Output",
            description: "A text field that masks the input, typically used for passwords.",
            documentationURL: "https://developer.apple.com/documentation/swiftui/securefield",
            type: .secureField),
        
        Component(
            name: "TextArea",
            systemIcon: "doc.text",
            section: "Text Input/Output",
            description: "A multiline text input field (can be achieved using TextEditor).",
            documentationURL: "https://developer.apple.com/documentation/swiftui/textarea",
            type:.textArea
        ),
        
        
        Component(
            name: "Image",
            systemIcon: "photo",
            section: "Text Input/Output",
            description: "Displays an image from assets or the web.",
            documentationURL: "https://developer.apple.com/documentation/swiftui/image",
            type:.image
        ),
        
        
        Component(
            name: "Button",
            systemIcon: "hand.point.up.left",
            section: "Controls",
            description: "A control that triggers an action when tapped.",
            documentationURL: "https://developer.apple.com/documentation/swiftui/button",
            type:.button
        ),
        
        
        Component(
            name: "Menu",
            systemIcon: "list.bullet",
            section: "Controls",
            description: "Displays a popup menu with multiple selectable options.",
            documentationURL: "https://developer.apple.com/documentation/swiftui/menu",
            type:.menu
        ),
        
        
        Component(
            name: "Link",
            systemIcon: "link",
            section: "Controls",
            description: "A view that navigates to a URL when tapped.",
            documentationURL: "https://developer.apple.com/documentation/swiftui/link",
            type:.link
        ),
        
        
        Component(
            name: "Slider",
            systemIcon: "slider.horizontal.3",
            section: "Controls",
            description: "Allows users to select a value from a range by sliding.",
            documentationURL: "https://developer.apple.com/documentation/swiftui/slider",
            type:.slider
        ),
        
        
        Component(
            name: "Stepper",
            systemIcon: "plus.forwardslash.minus",
            section: "Controls",
            description: "Increases or decreases a value using plus and minus buttons.",
            documentationURL: "https://developer.apple.com/documentation/swiftui/stepper",
            type:.stepper
        ),
        
        
        Component(
            name: "Toggle",
            systemIcon: "switch.2",
            section: "Controls",
            description: "A switch control for enabling/disabling a state.",
            documentationURL: "https://developer.apple.com/documentation/swiftui/toggle",
            type:.toggle
        ),
        
        
        Component(
            name: "Picker",
            systemIcon: "list.number",
            section: "Controls",
            description: "A dropdown-style control for selecting an option.",
            documentationURL: "https://developer.apple.com/documentation/swiftui/picker",
            type:.picker
        ),
        
        
        Component(
            name: "DatePicker",
            systemIcon: "calendar",
            section: "Controls",
            description: "A control for selecting a date or time.",
            documentationURL: "https://developer.apple.com/documentation/swiftui/datepicker",
            type:.datePicker
        ),
        
        
        Component(
            name: "ColorPicker",
            systemIcon: "paintbrush",
            section: "Controls",
            description: "A control that allows users to select a color.",
            documentationURL: "https://developer.apple.com/documentation/swiftui/colorpicker",
            type:.colorPicker
        ),
        
        
        Component(
            name: "ProgressView",
            systemIcon: "chart.bar.fill",
            section: "Controls",
            description: "Displays a progress indicator (determinate or indeterminate).",
            documentationURL: "https://developer.apple.com/documentation/swiftui/progressview",
            type:.progressView
        ),
        
        
        Component(
            name: "HStack",
            systemIcon: "rectangle.3.group",
            section: "Container Views",
            description: "Arranges views horizontally, can be made scrollable using ScrollView.",
            documentationURL: "https://developer.apple.com/documentation/swiftui/hstack",
            type:.hStack
        ),
        
        
        Component(
            name: "VStack",
            systemIcon: "rectangle.portrait.on.rectangle.portrait",
            section: "Container Views",
            description: "Arranges views vertically, can be made scrollable using ScrollView.",
            documentationURL: "https://developer.apple.com/documentation/swiftui/vstack",
            type:.vStack
        ),
        
        
        Component(
            name: "ZStack",
            systemIcon: "square.stack.3d.up",
            section: "Container Views",
            description: "Overlays multiple views on top of each other.",
            documentationURL: "https://developer.apple.com/documentation/swiftui/zstack",
            type:.zStack
        ),
        
        
        Component(
            name: "Form",
            systemIcon: "list.bullet.rectangle",
            section: "Container Views",
            description: "A container for grouping controls in a structured layout, commonly used for settings.",
            documentationURL: "https://developer.apple.com/documentation/swiftui/form",
            type:.form
        ),
        
        
        Component(
            name: "NavigationView",
            systemIcon: "arrow.right.square",
            section: "Container Views",
            description: "Provides a navigation interface with a title and optional back button.",
            documentationURL: "https://developer.apple.com/documentation/swiftui/navigationview",
            type:.navigationView
        ),
        
        
        Component(
            name: "Alerts",
            systemIcon: "exclamationmark.triangle",
            section: "Container Views",
            description: "A popup message that asks for user confirmation or shows information.",
            documentationURL: "https://developer.apple.com/documentation/swiftui/alerts",
            type:.alert
        ),
        
        
        Component(
            name: "Sheets",
            systemIcon: "square.and.arrow.up",
            section: "Container Views",
            description: "A modal view that slides up from the bottom of the screen.",
            documentationURL: "https://developer.apple.com/documentation/swiftui/sheets",
            type:.sheet
        ),
        
        
        Component(
            name: "Plain",
            systemIcon: "list.bullet",
            section: "List",
            description: "A simple list with no additional styling.",
            documentationURL: "https://developer.apple.com/documentation/swiftui/plain",
            type:.plain
        ),
        
        Component(
            name: "Inset",
            systemIcon: "list.dash",
            section: "List",
            description: "A list with a slight inset from the edges.",
            documentationURL: "https://developer.apple.com/documentation/swiftui/inset",
            type:.inset
        ),
        
        Component(
            name: "Grouped",
            systemIcon: "list.bullet.rectangle",
            section: "List",
            description: "A list that groups related items together.",
            documentationURL: "https://developer.apple.com/documentation/swiftui/grouped",
            type:.grouped
        ),
        
        Component(
            name: "Inset Grouped",
            systemIcon: "list.triangle",
            section: "List",
            description: "A combination of Inset and Grouped, giving a modern card-style look.",
            documentationURL: "https://developer.apple.com/documentation/swiftui/insetgrouped",
            type:.insetGrouped
        ),
        
        Component(
            name: "Sidebar",
            systemIcon: "sidebar.left",
            section: "List",
            description: "A collapsible sidebar-style list, commonly used in iPad and Mac apps.",
            documentationURL: "https://developer.apple.com/documentation/swiftui/sidebar",
            type:.sidebar
        ),
    ]
}
