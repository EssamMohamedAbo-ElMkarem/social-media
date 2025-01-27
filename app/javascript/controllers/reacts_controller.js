import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["happyCount", "sadCount"]

  handleHappyClick(event) {
    event.preventDefault();
    this.updateReactCount('happy', this.happyCountTarget);
  }

  handleSadClick(event) {
    event.preventDefault();
    this.updateReactCount('sad', this.sadCountTarget);
  }

  updateReactCount(reactionType, targetElement) {
    const postId = this.element.dataset.postId;

    fetch(`/reacts?name=${reactionType}&post_id=${postId}`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRF-Token': document.querySelector("[name='csrf-token']").content
      }
    })
    .then(response => response.json())
    .then(data => {
      if (data.error) {
        console.error(data.error);
        alert("An error occurred while processing your reaction.");
      } else {
        targetElement.textContent = data.count;
      }
    })
    .catch(error => console.error('Error:', error));
  }
}
