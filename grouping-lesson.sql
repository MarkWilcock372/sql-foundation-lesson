SELECT 
    ps.Hospital,
    ps.Ward,
    COUNT(*) AS NumberOfPatients,
    SUM(ps.Tariff) AS TotalTariff
FROM PatientStay ps
GROUP BY ps.Hospital, ps.Ward