import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "notification" ];

  toggle() {
    this.notificationTarget.classList.toggle("hidden");
  }
}
