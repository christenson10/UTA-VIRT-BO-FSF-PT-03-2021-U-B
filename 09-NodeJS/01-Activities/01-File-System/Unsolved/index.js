const fs = require('fs');

fs.writeFile("something.txt", process.argv[2], function(err){
    if(err){
        return console.log(err);
    }
    console.log("Done!")
});

fs.readFile("something.txt", "utf8", function(error, log){
    if(error){
        return console.log(error);
    }

    console.log(log)
});