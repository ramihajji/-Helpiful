import { Controller } from "@hotwired/stimulus"
import mapboxgl from "mapbox-gl"

export default class extends Controller {
  static targets =  ["error"]


  connect() {
    console.log("heloo")
  }

  onError(event) {

    event.preventDefault()
    event.stopPropagation()
    let [data, status, xhr] = event.detail

    this.errorTarget.insertAdjacentHTML("after-end", xhr.response)
  }
}
