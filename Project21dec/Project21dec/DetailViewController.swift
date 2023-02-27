//
//  DetailViewController.swift
//  Project21dec
//
//  Created by nikita on 27.02.2023.
//

import UIKit

class DetailViewController: UIViewController {
    var selectedDoca: String?
    var number = 0
    var desc = ["Subclass UITableViewController when your interface consists of a table view and little or no other content. Table view controllers already adopt the protocols you need to manage your table view’s content and respond to changes.", "A UITableViewCell object is a specialized type of view that manages the content of a single table row. You use cells primarily to organize and present your app’s custom content, but UITableViewCell provides some specific customizations to support table-related behaviors", "When you tap a button, or select a button that has focus, the button performs any actions attached to it. You communicate the purpose of a button using a text label, an image, or both. The appearance of buttons is configurable, so you can tint buttons or format titles to match the design of your app. You can add buttons to your interface programmatically or using Interface Builder.", "As you move the thumb of a slider, it passes its updated value to any actions attached to it. The appearance of sliders is configurable; you can tint the track and the thumb, and provide images to appear at the ends of the slider. You can add sliders to your interface programmatically or by using Interface Builder.", "Typically, you use tab bars in conjunction with a UITabBarController object, but you can also use them as standalone controls in your app. Tab bars always appear across the bottom edge of the screen and display the contents of one or more UITabBarItem objects. A tab bar’s appearance can be customized with a background image or tint color to suit the needs of your interface. Tapping an item selects and highlights that item, and you use the selection of the item to enable the corresponding mode for your app.", "In addition to displaying a message to a user, you can associate actions with your alert controller to give people a way to respond. For each action you add using the addAction(_:) method, the alert controller configures a button with the action details. When a person taps that action, the alert controller executes the block you provided when creating the action object. The following code shows how to configure an alert with a single action.", "Manage a ios brouwser including in your app", "Use this class as-is to display map information and to manipulate the map contents from your app. "]
    
    @IBOutlet var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "\(selectedDoca!)"
        navigationItem.largeTitleDisplayMode = .never

        textView.text = desc[number - 1]

    }
    
    
    

  

}
