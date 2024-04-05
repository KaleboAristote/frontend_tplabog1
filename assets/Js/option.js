document.querySelector('#submit').addEventListener("click", async function () {
    try {
        const desOption = document.getElementById('desOption').value;
        const formData = new FormData();
        formData.append('desOption', desOption);

        const response = await axios.post("/TP_LABO/api/options/enregistrer/?user=tplabo&mdp=12345", formData);
        console.log('Option enregistrée avec succès:', response);
        
        document.getElementById('desOption').value = '';
        afficher();
    } catch (error) {
        console.error('Une erreur s\'est produite lors de l\'enregistrement de l\'option:', error);
    }
});

