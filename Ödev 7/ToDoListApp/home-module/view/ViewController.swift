//
//  ViewController.swift
//  ToDoListApp
//
//  Created by Canberk Yaşa on 3.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var navigationBar: UINavigationItem!
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    var toDosList = [ToDos]()
    
    var presenterObject: ViewToPresenterHomeProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(named: "Main2")
        
        
        
        navigationBar.titleView?.backgroundColor = UIColor(named: "Main1")
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.backgroundColor = UIColor(named: "Main2")
        
        copyDataBase()
        
        
        HomeRouter.createModule(ref: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toDetail" {
            if let toDo = sender as? ToDos {
                let detailVC = segue.destination as! Detail
                detailVC.toDo = toDo
            }
        }
    }
    
    func copyDataBase() {
        
        let bundlePath = Bundle.main.path(forResource: "todo", ofType: ".sqlite")
        let targetPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        
        let copyPlace = URL(fileURLWithPath: targetPath).appendingPathComponent("rehber.sqlite")
        
        let fm = FileManager.default
        
        if fm.fileExists(atPath: copyPlace.path) {
            
            print("Database already exists")
        } else {
            
            do {
                
                try fm.copyItem(atPath: bundlePath!, toPath: copyPlace.path)
                
            } catch {
                
                print(error.localizedDescription)
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        presenterObject?.uploadTasks()
    }

}

extension ViewController : PresenterToViewHomeProtocol {
    
    func sendTasksToView(ToDosList: [ToDos]) {
        
        self.toDosList = ToDosList
        self.tableView.reloadData()
    }
}

extension ViewController : UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        presenterObject?.search(searchText: searchText)
    } 
}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return toDosList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "toDoCell") as! TableViewCell
        
        let toDo = toDosList[indexPath.row]
        
        cell.ordinals.text = "\(String(indexPath.row+1)) ·"
        cell.task.text = toDo.task!
        
        
        

        //cell.shadowLayer.layer.masksToBounds = false
        
       
        
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let toDo = toDosList[indexPath.row]
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        
        
        performSegue(withIdentifier: "toDetail", sender: toDo)
        
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { (contexualAction,view,bool) in
            
            let toDo = self.toDosList[indexPath.row]
            
            let alert = UIAlertController(title: "Delete Action", message: "Are you sure? (This action can't be undone)", preferredStyle: .alert)
            let cancelButton = UIAlertAction(title: "Cancel", style: .cancel)
            alert.addAction(cancelButton)
            
            let deleteButton = UIAlertAction(title: "Delete", style: .destructive) { action in
                
                self.presenterObject?.deleteTask(task_id: toDo.id!)
            }
            alert.addAction(deleteButton)
            
            self.present(alert, animated: true)
        }
        
        return UISwipeActionsConfiguration(actions: [deleteAction])
    }
}

extension UIColor {
    func as1ptImage() -> UIImage {
            UIGraphicsBeginImageContext(CGSize(width: 1, height: 1))
            setFill()
            UIGraphicsGetCurrentContext()?.fill(CGRect(x: 0, y: 0, width: 1, height: 1))
            let image = UIGraphicsGetImageFromCurrentImageContext() ?? UIImage()
            UIGraphicsEndImageContext()
            return image
        }
}

