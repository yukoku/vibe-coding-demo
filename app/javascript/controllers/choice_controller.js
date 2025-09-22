import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["choice"]

  connect() {
    console.log("Choice controller connected!")
  }

  select(event) {
    const selectedChoice = event.currentTarget
    const form = selectedChoice.closest("form")

    // Disable all choices in the current question
    this.choiceTargets.forEach(choice => {
      choice.disabled = true
      choice.classList.add("opacity-50", "cursor-not-allowed")
    })

    // Highlight the selected choice
    selectedChoice.classList.remove("bg-gray-100", "hover:bg-gray-200")
    selectedChoice.classList.add("bg-blue-200", "border-blue-500")

    // Submit the form (which will trigger the Turbo Stream response)
    form.requestSubmit()
  }
}
