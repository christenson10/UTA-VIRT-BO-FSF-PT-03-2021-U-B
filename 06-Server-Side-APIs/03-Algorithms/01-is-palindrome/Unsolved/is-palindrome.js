// Write code that returns true if `str` is a palindrome, and false if `str` is not a palindrome

var isPalindrome = (str) => {
    let reversedStr = str.toLowerCase().split("").reverse().join("");
    if (reversedStr === str){
        return true;
    }
    else{
        return false
    }
};
