//
//  TableViewControllerVoos.swift
//  infraero
//
//  Created by Aluno on 03/03/2018.
//  Copyright © 2018 Aluno. All rights reserved.
//

import UIKit

class TableViewControllerVoos: UITableViewController {

    @IBOutlet var vrTableView: UITableView!
    private let menu = ["TAM", "GOL", "AZUL"]
    private let itens = [
        ["Voo 1", "Voo 2", "Voo 3"],
        ["Voo 1", "Voo 2", "Voo 3", "Voo 4", "Voo 5"],
        ["Voo 1", "Voo 2", "Voo 3", "Voo 4"]
    ]
    private let horarios = [
        ["Partida: 02:30, Chegada: 04:00", "Partida: 02:30, Chegada: 04:00", "Partida: 02:30, Chegada: 04:00"],
        ["Partida: 02:30, Chegada: 04:00", "Partida: 02:30, Chegada: 04:00", "Partida: 02:30, Chegada: 04:00", "Partida: 02:30, Chegada: 04:00", "Partida: 02:30, Chegada: 04:00"],
        ["Partida: 02:30, Chegada: 04:00", "Partida: 02:30, Chegada: 04:00", "Partida: 02:30, Chegada: 04:00", "Partida: 02:30, Chegada: 04:00"]
    ]
    var companhia : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Voos"

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    
    func retornaSection(companhia: String) -> Int{
        if(companhia == "GOL"){
            return 1
        }else if(companhia == "TAM"){
            return 0
        }else{
            return 2
        }
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itens[retornaSection(companhia: companhia)].count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return companhia
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customCell = vrTableView.dequeueReusableCell(withIdentifier: "custonCellVoos") as! TableViewCellVoos
        let obj = itens[retornaSection(companhia: companhia)][indexPath.row]
        let img = menu[retornaSection(companhia: companhia)]
        let obj1 = horarios[retornaSection(companhia: companhia)][indexPath.row]
        customCell.imageView?.image = UIImage(named : img)
        customCell.vrTitle.text = obj + " - " + obj1
        return customCell
    }
    

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
