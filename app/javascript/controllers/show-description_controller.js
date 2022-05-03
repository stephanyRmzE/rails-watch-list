import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["description"]
  connect(e) {
    console.log("Hello from our first Stimulus controller")
    this.descriptionTarget.classList.toggle('card-show')
  }

  show(e) {
    console.log("Hello from show")
    e.preventDefault()
    this.descriptionTarget.classList.toggle('card-show')
  }

}
