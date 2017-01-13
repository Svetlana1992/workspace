select Employers.OrgName, Contacts.DisplayName, Cases.Status, COUNT(Cases.CaseID)
from Contacts
inner join Cases on Cases.ContactID = Contacts.ContactID and Cases.Status="ongoing"
inner join Employers on Employers.ContactID=Contacts.ContactID
Group By Contacts.ContactID
