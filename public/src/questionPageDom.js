function PreSubmit(selectedAnswer, correctAnswer){
  form = document.getElementById("questionForm")

  if (selectedAnswer == correctAnswer) {
    document.getElementById(selectedAnswer).style.backgroundColor = "#73e600";
    document.getElementById(selectedAnswer).style.color = "white";
  } else if (selectedAnswer != correctAnswer && selectedAnswer != 'Pass') {
    document.getElementById(selectedAnswer).style.backgroundColor = "red";
    document.getElementById(selectedAnswer).style.color = "white";
  }
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
  var func=function(){form.submit();}
  setTimeout(func,1000);
}
