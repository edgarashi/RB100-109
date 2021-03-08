pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar'}


#want to add 'bowser', not delete 'sparky' and 'fido'
pets[:dog] << 'bowser'

p pets 