//
//  JackventTableViewController.swift
//  Jackvent : MounTrack
//
//  Created by Becak Holic on 11/19/17.
//  Copyright © 2017 Sam Pramudana. All rights reserved.
//

import UIKit

class JackventTableViewController: UITableViewController {
    
    var judulSelected:String?
    var gambarSelected:String?
    var isiSelected:String?
    
    var judulGunung = ["Gunung Semeru", "Gunung Raung", "Gunung Arjuno", "Gunung Kawi", "Gunung Butak", "Gunung Liman", "Gunung Widodaren", "Gunung Pananjakan", "Gunung Lawu", "Gunung Pandan", "Gunung Merapi", "Gunung Lurus", "Gunung Kursi", "Gunung Panderman", "Gunung Kembar I Dan Kembar II", "Gunung Anjasmoro", "Gunung Kelud", "Gunung Penanggungan"]
    
    var isiGunung = ["Gunung Semeru atau yang disebut juga sebagai Gunung Mahameru merupakan gunung berapi kerucut yang terletak di Kabupaten Malang dan Kabupaten Lumajang. Ketinggian dari Gunung Semeru mencapai 3.676 meter dari permukaan laut.", "Gunung Raung merupakan gunung yang terletak di tiga kabupaten sekaligus, yaitu Kabupaten Banyuwangi, Kabupaten Bondowoso, dan Kabupaten Jember. Gunung Raung memiliki ketinggian 3.069 meter dari permukaan laut. Gunung Raung memiliki kaldera terbesar di Indonesia. Kaldera adalah kawah gunung berapi besar yang terjadi akibat adanya letusan vulkanik yang dahsyat.", "Gunung Arjuno adalah gunung berapi kerucut di perbatasan antara Kota Batu, Kabupaten Malang, dan Kabupaten Pasuruan. Di lereng-lereng gunung ini terdapat banyak candi, arca dan berbagai peninggalan sejarah yang menakjubkan.", "Gunung Kawi terletak di Kabupaten Malang, Jawa Timur. Meskipun tidak ada catatan kapan tepatnya gunung ini pernah meletus, Gunung Kawi diketahui masih berpotensi untuk mengalami erupsi pada suatu hari. Gunung ini menyimpan banyak kisah mistis yang terkenal di kalangan masyarakat Jawa Timur. Ketinggian Gunung Kawi adalah 2.551 meter dpl.", "Gunung Butak adalah gunung berapi komposit atau yang juga disebut sebagai gunung stratovolcano. Gunung ini berbentuk kerucut dan terletak di Kabupaten Blitar, berdekatan dengan Gunung Kawi di Kabupaten Malang. Gunung Butak memiliki ketinggian 2.868 mdpl.", "Gunung Ngliman juga disebut sebagai Gunung Ngilman. Gunung ini terletak di Kabupaten Ponorogo dan Kabupaten Nganjuk. Ketinggiannya adalah 2.563 mdpl.", "Gunung Widodaren adalah bagian dari kaldera Tengger yang terkenal di kalangan pecinta fotografi. Gunung ini terletak di Jawa Timur, tepatnya di Kabupaten Probolinggo. Gunung Widodaren dekat dengan Gunung Bromo dan Semeru. Ketinggiannya adalah 2.614 mdpl.", "Seperti halnya Gunung Widodaren, Gunung Pananjakan juga merupakan bagian dari kaldera Tengger, sekaligus merupakan bagian dari Taman Nasional Bromo Tengger Semeru. Gunung ini memiliki ketinggian 2.770 meter di atas permukaan air laut.", "Gunung Lawu merupakan gunung yang terletak di perbatasan antara Provinsi Jawa Tengah dan Jawa Timur, tepatnya di Kabupaten Magetan dan Kabupaten Ngawi. Gunung Lawu memiliki ketinggian 3.265 mdpl dan terakhir kali meletus pada tahun 1885.", "Gunung Pandan adalah gunung yang melewati tiga kabupaten di Jawa Timur yaitu Kabupaten Nganjuk, Kabupaten Madiun, dan Kabupaten Bojonegoro.", "Gunung Merapi di Jawa Timur terletak di Kabupaten Bondowoso dan Kabupaten Banyuwangi. Gunung ini merupakan bagian dari rangkaian Pegunungan Ijen. Gunung Merapi memiliki ketinggian 2.799 mdpl.", "Gunung Lurus adalah gunung di pantai utara Provinsi Jawa Timur. Gunung ini merupakan bagian dari jajaran Pegunungan Iyang.", "Gunung Kursi adalah gunung yang memiliki ketinggial 2.581 mdpl. Gunung ini merupakan bagian dari kaldera Tengger yang berada di dekat dengan Gunung Bromo dan Semeru.", "Gunung Panderman merupakan gunung yang terletak di Kota Batu, dekat dengan Kabupaten Malang, Jawa Timur. Gunung ini merupakan bagian dari rangkaian Pegunungan Putri Tidur dan memiliki puncak bernama Puncak Basundara.", "Gunung Kembar I dan Gunung Kembar II merupakan gunung yang terletak di Kabupaten Pasuruan, Jawa Timur.", "Gunung Anjasmoro terletak di tiga wilayah Jawa Timur, yaitu Kabupaten Jombang, Kabupaten Mojokerto, dan Kota Batu. Gunung Anjasmoro memiliki ketinggian 2.277 meter dari atas permukaan laut. Gunung ini adalah gunung yang sudah mati dan tak lagi mengalami aktivitas vulkanik. Gunung Anjasmoro termasuk masih sangat alami dan belum terlalu banyak didaki.", "Gunung Kelud merupakan gunung berapi yang terletak di perbatasan antara Kabupaten Kediri, Kabupaten Blitar dan Kabupaten Malang. Gunung ini masih tergolong aktif. Ketinggiannya adalah sekitar 1.731 meter dari permukaan laut. ", "Gunung Penanggungan adalah gunung berapi kerucut yang dahulu disebut sebagai Gunung Pawitra. Gunung ini terletak di Kabupaten Mojokerto dan Kabupaten Pasuruan. Ketinggian dari Gunung Penanggungan adalah 1.653 meter dari permukaan laut."]
    
    var gambarGunung = ["Semeru.jpg", "Raung.jpg", "Arjuno.jpg", "Kawi.jpg", "Butak.jpg", "Liman.jpg", "Widodaren.jpg", "Pananjakan.jpg", "Lawu.jpg", "Pandan.jpg", "Merapi.jpg", "Lurus.jpg", "Kursi.jpg", "Panderman.jpg", "Kembar.jpg", "Anjasmoro.jpg", "Kelud.jpg", "penanggungan.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return judulGunung.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellGunung", for: indexPath)
        
        cell.textLabel?.text = judulGunung[indexPath.row]
        let imageView = UIImage(named: judulGunung[indexPath.row])
        cell.imageView?.image = imageView
        
        // Configure the cell...
        
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("row \(indexPath.row) selected")
        
        judulSelected = self.judulGunung[indexPath.row]
        gambarSelected = self.gambarGunung[indexPath.row]
        isiSelected = self.isiGunung[indexPath.row]
        performSegue(withIdentifier: "passDataDetail", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "passDataDetail" {
            
            let kirimData = segue.destination as! DetailViewController
            kirimData.passJudulTitle = judulSelected
            kirimData.passGambarTitle = gambarSelected
            kirimData.passIsiTitle = isiSelected
        }
    }
    override func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let Location = UIContextualAction(style: .normal, title: "Location", handler: {_,_,_ in
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "mapView") as! MapKitViewController
            self.present(vc, animated: true, completion: nil)
        })
        Location.backgroundColor = UIColor.cyan
        return UISwipeActionsConfiguration(actions: [Location])
    }
    
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
