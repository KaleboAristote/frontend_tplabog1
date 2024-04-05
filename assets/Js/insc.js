
    // Make a GET request using Axios for Option
    axios.get("/TP_LABO/api/options/get_option/?user=tplabo&mdp=12345")
        .then(function(response) {
            let data = response.data;
            let select = document.getElementById('idOpt');
            data.response.forEach(function(item) {
                var option = document.createElement('option');
                option.value = item.id;
                option.textContent = item.desOption;
                select.appendChild(option);
            });
        })
        .catch(function(error) {
            console.error('Error fetching data:', error);
        });

    // Make a GET request using Axios for Promotion
    axios.get("/TP_LABO/api/promotions/get_promotion/?user=tplabo&mdp=12345")
        .then(function(response) {
            let data = response.data;
            let select = document.getElementById('idProm');
            data.response.forEach(function(item) {
                var option = document.createElement('option');
                option.value = item.id;
                option.textContent = item.desProm;
                select.appendChild(option);
            });
        })
        .catch(function(error) {
            console.error('Error fetching data:', error);
        });

    // Make a GET request using Axios for Etudiant
    axios.get("/TP_LABO/api/etudiant/get_etudiant/?user=tplabo&mdp=12345")
        .then(function(response) {
            let data = response.data;
            let select = document.getElementById('idEt');
            data.response.forEach(function(item) {
                var option = document.createElement('option');
                option.value = item.id;
                option.textContent = item.noms;
                select.appendChild(option);
            });
        })
        .catch(function(error) {
            console.error('Error fetching data:', error);
        });

    // Make a GET request using Axios for Annee Académique
    axios.get("/TP_LABO/api/annee/get_annee/?user=tplabo&mdp=12345")
        .then(function(response) {
            let data = response.data;
            let select = document.getElementById('idAnnee');
            data.response.forEach(function(item) {
                var option = document.createElement('option');
                option.value = item.id;
                option.textContent = item.anneeAc;
                select.appendChild(option);
            });
        })
        .catch(function(error) {
            console.error('Error fetching data:', error);
        });
