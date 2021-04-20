// Write code to create a function takes a string and returns a new string with the first letters of each word capitalized

var titleCase = (str) => {
    let strArr = str.split(" ");
    let newArr = [];
    for(let i = 0; i < strArr.length; i++){
        let word = strArr[i];
        let capWord =  word.charAt(0).toUpperCase() + word.slice(1);
        newArr.push(capWord);
    }
    let newStr = newArr.join(" ");
    return newStr
};
