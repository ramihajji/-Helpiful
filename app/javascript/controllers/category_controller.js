import { Controller } from "@hotwired/stimulus";


export default class extends Controller {
  static targets = ["card"]

  connect() {
    console.log("The 'category' controller is now loaded!");
  }

  index() {
    window.open("http://localhost:3000/requests/","_self");
  }






}
