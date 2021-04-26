// Write code to return the largest number in the given array

var maxNum = function(arr) {
    //start number
    let bigNum = 0;
    //iterating over arr 
    for (var i = 0; i < arr.length; i ++){
        //secondary index for number next to i
        let j = i + 1
        //if j is less than our arr lenght run the if statement
        if(j < arr.length){
            //if num at postion i is greater than num at position j
            if(arr[i] > arr[j]){
                //update bignum to number at position i 
                bigNum = arr[i]
            }
            else{
                //update num to postion j
                bigNum = arr[j];
            }
        }
    }
            //returning our final number (the biggest number)
            return bigNum;
};
