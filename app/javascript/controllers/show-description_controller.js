import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["description"]
  connect(e) {

  }

  show(e) {
    e.preventDefault()
    this.descriptionTarget.classList.toggle('d-none')
  }

}
