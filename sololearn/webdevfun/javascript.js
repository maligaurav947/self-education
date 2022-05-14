var children = -2;
var adults = 3;

if (adults < 0) {
    adults = 0;
} 
if (children < 0) {
    children = 0;
}

function calc(c, a) {
	c*5 + a*12;
}

var price = calc(children, adults);
console.log(price)

for (let i=1; i<=adults; i++) {
    console.log("adult Ticket #" + i)
}
for (let i=1; i<=children; i++) {
    console.log("child Ticket #" + i)
}

window.onload = function() {
    let btn = document.getElementById("buybtn");
    btn.onclick = function() {
        let adults = document.getElementById("adults").value;
        let children = document.getElementById("children").value;
        let price = calc(children, adults);
        alert(price)
    }
}
