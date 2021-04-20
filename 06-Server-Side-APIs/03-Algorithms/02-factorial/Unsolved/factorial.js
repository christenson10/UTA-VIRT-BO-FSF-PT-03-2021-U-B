// Write code to create a function that returns the factorial of `num`

var factorial = (num) => {
    let factorial = 1
    for(let i = num; i > 1; i--){
        factorial *= i
        console.log(factorial);
    }
    return factorial;
};
