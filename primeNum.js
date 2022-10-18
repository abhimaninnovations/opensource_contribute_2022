function prime(n){
    let isPrime = true;
    if(n==1){
        return "Prime Number"
    }
    else if(n>1){
        for (let i = 2; i < n; i++) {
           if(n%i == 0){
            isPrime= false
           }
            
        }
        if(isPrime)
        return "Prime Number"
        else
        return "Not Prime Number"
    }

}