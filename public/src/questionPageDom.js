function PreSubmit(selectedAnswer, correctAnswer){
  form = document.getElementById("questionForm")
  selectedInput = document.createElement("INPUT");
  selectedInput.setAttribute("type", "hidden")
  selectedInput.setAttribute("name", "selected_answer")
  selectedInput.setAttribute("value", selectedAnswer)

  correctAnswerInput = document.createElement("INPUT");
  correctAnswerInput.setAttribute("type", "hidden")
  correctAnswerInput.setAttribute("name", "correct_answer")
  correctAnswerInput.setAttribute("value", correctAnswer)
  form.appendChild(selectedInput)
  form.appendChild(correctAnswerInput)
  console.log(document.getElementById("questionForm"))
  var func=function(){form.submit();}
  setTimeout(func,1000);
}
