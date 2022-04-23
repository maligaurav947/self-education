var children = -2;
var adults = 3;

if (adults < 0) {
    adults = 0;
} 
if (children < 0) {
    children = 0;
}

var price = children*5 + adults*12;
console.log(price)

for (let i=1; i<=adults; i++) {
    console.log("adult Ticket #" + i)
}
for (let i=1; i<=children; i++) {
    console.log("child Ticket #" + i)
}
