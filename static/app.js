let verdictRequest = document.getElementById('verdictRequest');

verdictRequest.addEventListener('click', function(e) {
  e.preventDefault();
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
        let input = `<img class="output-img" src="static/assets/explanation_image.png" alt="" height="200vw" id="output-img">`
        let outputImg = document.getElementById('output-img-box');
        outputImg.innerHTML = input;
        let verdict = data['verdict'];
        let verdictElement = document.getElementById('verdictResponse');
        verdictElement.innerHTML = verdict;
        // console.log(data);
      });
    } else {
      throw new Error('Something went wrong');
    }
  })
  .catch(function(error) {
    console.log(error);
  });
  // .then(function(response) {
  //   let verdict = response['verdict'];
  //   let verdictElement = document.getElementById('verdictResponse');
  //   verdictElement.innerHTML = verdict;
  // });
  
});