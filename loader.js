function readTextFile(file, callback) {
    var rawFile = new XMLHttpRequest();
    rawFile.overrideMimeType("application/json");
    rawFile.open("GET", file, true);
    rawFile.onreadystatechange = function() {
        if (rawFile.readyState === 4 && rawFile.status == "200") {
            callback(rawFile.responseText);
        }
    }
    rawFile.send(null);
}

//usage:
readTextFile("/raw_data.json", function(text){
    var data = JSON.parse(text);
    console.log(data);
    var cells = document.getElementsByClassName("data_cell");
    for (let cell of cells) {
        console.log(cell.id);
        if(cell.id) {
            if (cell.id == "cfr") {
                var deceased = parseFloat(data.deceased.replace(/,/g, ''));
                var recovered = parseFloat(data.recovered.replace(/,/g, ''));
                var cfr = 100 * deceased / (deceased + recovered);
                console.log("cfr" + cfr);
                cell.textContent = cfr.toFixed(2);
            } else if (data[cell.id]) {
                cell.textContent = data[cell.id];
            } else {
                console.error("missing data cell:" + cell.id);
            }
        }
    }
});