
dorothy = Role.create(character_name: "Dorothy")
wicked_witch = Role.create(character_name: "Wicked Witch")
tin_man = Role.create(character_name: "Tin Man")
scarecrow = Role.create(character_name: "Scarecrow")
munchkin = Role.create(character_name: "Munchkin")



Audition.create(actor: "John", location: "NYC", phone: 123456789, hired: 0, role_id: tin_man.id)
Audition.create(actor: "Mary", location: "LA", phone: 987654321, hired: 0, role_id: dorothy.id)
Audition.create(actor: "Danny", location: "NYC", phone: 73546278, hired: 0, role_id: scarecrow.id)
Audition.create(actor: "Sarah", location: "NYC", phone: 123456788, hired: 0, role_id: wicked_witch.id)




