CREATE VIEW fraisview AS
SELECT op.desOption AS desOption,
       p.desProm AS desProm,
       f.desFrais AS desFrais,
       aa.anneeAc AS anneeAc,
       ff.montant AS montant
FROM fixation_frais ff
JOIN options_prom op ON ff.idOpt = op.id
JOIN promotion p ON ff.idProm = p.id
JOIN frais f ON ff.idFrais = f.id
JOIN annee_academ aa ON ff.idAnnee = aa.id;