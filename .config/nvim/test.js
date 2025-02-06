// AI! implement quicksort function
function quickSort(arr) {
    if (arr.length <= 1) {
        return arr;
    }

    const pivot = arr[Math.floor(arr.length / 2)];
    const left = [];
    const right = [];
    const equal = [];

    for (let element of arr) {
        if (element < pivot) {
            left.push(element);
        } else if (element > pivot) {
            right.push(element);
        } else {
            equal.push(element);
        }
    }

    return [...quickSort(left), ...equal, ...quickSort(right)];
}

// Test the implementation
const testArray = [64, 34, 25, 12, 22, 11, 90];
console.log("Original array:", testArray);
console.log("Sorted array:", quickSort(testArray));
