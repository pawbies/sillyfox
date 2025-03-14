import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "navarea" ];

  toggle() {
    this.navareaTarget.classList.toggle("hidden");
  }
}
