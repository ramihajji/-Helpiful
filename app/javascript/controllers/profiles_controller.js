import { Controller } from "@hotwired/stimulus";


export default class extends Controller {
  static targets = ["requests", "offers"]

  connect() {
    console.log("The 'profile' controller is now loaded!");
  }

  index(event) {
    const target = event.params.class
    const element = document.getElementsByClassName(target);
    if (element[0] === this.requestsTarget) {
      this.offersTarget.classList.remove("active-tab")
      this.requestsTarget.classList.add("active-tab")
    } else {
      this.requestsTarget.classList.remove("active-tab")
      this.offersTarget.classList.add("active-tab")
    }
  }






}
