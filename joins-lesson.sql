SELECT 
    ps.PatientId,
    ps.Ward,
    h.Hospital,
    h.HospitalType 
FROM PatientStay AS ps JOIN DimHospital AS h ON ps.Hospital = h.Hospital
WHERE h.HospitalType = 'Teaching'

SELECT 
    h.Reach,
    count(*) AS NumberOfPatients
FROM PatientStay AS ps JOIN DimHospital AS h ON ps.Hospital = h.Hospital
GROUP BY h.Reach

SELECT
    ps.Ward,
    COUNT(*) AS NumberOfPatients,
    SUM(ps.Tariff) AS TotalTariff,
    AVG(ps.Tariff) AS AverageTariff
FROM PatientStay AS ps
GROUP BY ps.Ward
ORDER BY ps.Ward;

SELECT
    ps.PatientId,
    ps.Ward,
    ps.Hospital,
    ps.Tariff,
    ps.AdmittedDate,
    ps.DischargeDate,
    DATEDIFF(day, ps.AdmittedDate, ps.DischargeDate) AS LengthOfStay
FROM PatientStay AS ps
JOIN DimHospital AS h ON ps.Hospital = h.Hospital
WHERE h.Hospital = 'Kingston'
ORDER BY ps.PatientId;



