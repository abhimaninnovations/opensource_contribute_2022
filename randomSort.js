function shuffle(sourceArray) {
    for (var i = 0; i < sourceArray.length - 1; i++) {
        var j = i + Math.floor(Math.random() * (sourceArray.length - i));
  
        var temp = sourceArray[j];
        sourceArray[j] = sourceArray[i];
        sourceArray[i] = temp;
    }
    return sourceArray;
  }

//example const a = ["1","2","3","4","5","6","8"]

const a = ["1","2","3","4","5","6","8"];
console.log(shuffle(a));

