document.querySelector('#submit').addEventListener("click", async function () {
    try {
        const desProm = document.getElementById('desProm').value;
        const formData = new FormData();
        formData.append('desProm', desProm);

        const response = await axios.post("/TP_LABO/api/promotions/enregistrer/?user=tplabo&mdp=12345", formData);
        console.log('Option enregistrée avec succès:', response);
        
        document.getElementById('desProm').value = '';
        afficher();
    } catch (error) {
        console.error('Une erreur s\'est produite lors de l\'enregistrement de la Promotion:', error);
    }
});

