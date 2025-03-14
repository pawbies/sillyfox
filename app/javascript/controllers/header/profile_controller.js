import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "profilearea" ];

  toggle() {
    this.profileareaTarget.classList.toggle("hidden");
  }
}
