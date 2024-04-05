document.querySelector('#submit').addEventListener("click", function () {
    let formData = new FormData(document.querySelector('form'));
    axios.post("/TP_LABO/api/etudiant/enregistrer/?user=tplabo&mdp=12345", formData)
        .then((data) => {
            console.log(data);
            document.querySelectorAll("input").forEach(input => input.value = "");
        });
});
