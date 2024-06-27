.mode box
SELECT 'Symptoms cuont', COUNT() FROM (SELECT 1 FROM symptoms);
SELECT 'Used symptoms count', COUNT() FROM (SELECT DISTINCT symptom_id from disease_symptom);
SELECT 'Diseases cuont', COUNT() FROM (SELECT 1 FROM diseases);
SELECT 'Used diseases count', COUNT() FROM (SELECT DISTINCT disease_id from disease_symptom);
.mode line