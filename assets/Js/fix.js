document.querySelector('#submit').addEventListener("click", async function () {
    try {
        const idOpt = document.getElementById('idOpt').value;
        const idProm = document.getElementById('idProm').value;
        const idFrais = document.getElementById('idFrais').value;
        const idAnnee = document.getElementById('idAnnee').value;
        const montant = document.getElementById('montant').value;

        const formData = new FormData();
        formData.append('idOpt', idOpt);
        formData.append('idProm', idProm);
        formData.append('idFrais', idFrais);
        formData.append('idAnnee', idAnnee);
        formData.append('montant', montant);


        const response = await axios.post("/TP_LABO/api/fix/enregistrer/?user=tplabo&mdp=12345", formData);
        console.log('Inscription faite avec succès:', response);
        
        document.getElementById('idOpt','idProm','idFrais','idAnnee','montant').value = '';
        afficher();
    } catch (error) {
        console.error('Une erreur s\'est produite lors de l\inscription:', error);
    }
});

