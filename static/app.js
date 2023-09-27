let verdictRequest = document.getElementById('verdictRequest');

verdictRequest.addEventListener('click', function(e) {
  e.preventDefault();
  let verdictElement = document.getElementById('verdictResponse');
  verdictElement.innerHTML = "Inputs Recieved...";
  let outputImg = document.getElementById('output-img-box');
  outputImg.innerHTML = "";
  // dealy for 2 seconds
  setTimeout(function() {
    verdictElement.innerHTML =  "Processing...";
  }, 2000);
  let petitioner_name = document.getElementById('petitionerName').value;
  let respondent_name = document.getElementById('respondentName').value;
  let facts = document.getElementById('factsCollected').value;

  // facts = petitioner_name + " " + respondent_name + " " + facts;

  fetch('/verdict', {
    method: 'POST',
    body: JSON.stringify({
      petitioner_name: petitioner_name,
      respondent_name: respondent_name,
      facts: facts
    }),
    headers: {
      'Content-Type': 'application/json'
    }
  }).then(function(response) {
    if(response.ok) {
      response.json().then(function(data) {
        console.log(data);
        let input = `<img class="output-img" src="" alt="Statistics" id="output-img">`;
        outputImg.innerHTML = input;
        let outputImgElement = document.getElementById('output-img');
        outputImgElement.src = data['image'];
        let verdict = data['verdict'];
        verdictElement.innerHTML = verdict;
      });
    } else {
      throw new Error('Something went wrong');
    }
  })
  .catch(function(error) {
    console.log(error);
  });  
});