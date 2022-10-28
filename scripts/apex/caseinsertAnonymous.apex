List<Case> newCases = new List<Case>();
for (integer i = 0; i < 205; i++) {
    case c = new Case();
    c.Subject = 'There is a bug';
    c.Description = 'Resolve it';
    c.Status = 'New';
    c.Origin = 'web';
    newCases.add(c)
}
insert newCases;