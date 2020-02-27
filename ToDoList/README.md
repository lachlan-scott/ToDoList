### Teacher Notes for To Do List.


1. Create new XCode project as TabbedView
1. In UIBuilder, drag a TableView onto FirstView
1. set Constraints; drag a Cell into the tableview; give the cell an identifier
1. delete boilerplate labels from First and Second views
1. rename tabs suitably (eg. ‘To Do List’, ‘Add To Do’)
1. right-click/cntrl-drag tableview into FirstViewController to create an outlet
assign delegate and datasource

1. In FirstViewController, add the UITableViewController protocols 
```Swift
class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {...```

allow XCode to add tableviewcontroller method stubs

create some to do list variables as an array, eg.
var tableData = ["Buy a bike”, "Cycle 5kms", etc.

ensure the array is a global variable, outside the class definition ie. above the class definition

fill out method stubs; students can use Jump to Definition to review the many available table methods 

```Swift
override func viewDidLoad() {
super.viewDidLoad()
// Do any additional setup after loading the view.
}

func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
{
return tableData.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
{
let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "myCell")
cell.textLabel?.text = tableData[indexPath.row]
return cell
}

// This is the simplest way to delete rows with minimum code
func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
{
if editingStyle == UITableViewCell.EditingStyle.delete {
tableData.remove(at: indexPath.row)
myTableView.reloadData()
}
}


—
In SecondView Storyboard
add a text field
add a button
edit them appropriately

cntrl-drag elements to SecondViewController to create
an outlet for the textField
an action for the button

In SecondViewController 
fill out the action method for the button
extract the textField text
push it into the tableData array
clear the textField

class SecondViewController: UIViewController {

@IBOutlet weak var newItemField: UITextField!


@IBAction func addItem(_ sender: Any)
{
// check we have some data
if newItemField.text != "" {
tableData.append(newItemField.text!)
// reset the field
newItemField.text = ""
}
}







