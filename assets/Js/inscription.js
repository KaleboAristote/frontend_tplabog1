document.querySelector('#submit').addEventListener("click", async function () {
    try {
        const idOpt = document.getElementById('idOpt').value;
        const idProm = document.getElementById('idProm').value;
        const idEt = document.getElementById('idEt').value;
        const idAnnee = document.getElementById('idAnnee').value;
        const desInscription = document.getElementById('desInscription').value;

        const formData = new FormData();
        formData.append('idOpt', idOpt);
        formData.append('idProm', idProm);
        formData.append('idEt', idEt);
        formData.append('idAnnee', idAnnee);
        formData.append('desInscription', desInscription);


        const response = await axios.post("/TP_LABO/api/inscription/enregistrer/?user=tplabo&mdp=12345", formData);
        console.log('Inscription faite avec succès:', response);
        
        document.getElementById('idOpt','idProm','idEt','idAnnee').value = '';
        afficher();
    } catch (error) {
        console.error('Une erreur s\'est produite lors de l\inscription:', error);
    }
});

