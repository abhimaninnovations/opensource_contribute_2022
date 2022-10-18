function pallindrome(str) {
    let a = str.split('').reverse().join('');
    if (a == str) {
        console.log('It is a pallindrome');
    } else {
        console.log('It is not a pallindrome');
    }
}
console.log(pallindrome('civic'));