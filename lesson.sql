/*
Example lesson stub
*/
SELECT		ps.PatientId,
			ps.Hospital,
			ps.Ward,
			DATEADD(WEEK, -2, PS.AdmittedDate) AS ReminderDate,
			ps.AdmittedDate,
			ps.DischargeDate,
			DATEDIFF(DAY, ps.AdmittedDate, ps.DischargeDate) AS LengthOfStay,
			DATEADD(MONTH, 3, ps.DischargeDate) AS ApptDate
FROM		PatientStay AS ps
WHERE		ps.Hospital IN ('Kingston', 'PRUH')
			AND ps.Ward LIKE '%Surgery'
			AND ps.AdmittedDate BETWEEN '2024-02-27' AND '2024-02-29'
ORDER BY	ps.AdmittedDate, ps.DischargeDate;


-- SELECT DATEADD(WEEK, -2, '2026-10-26') AS TestValue