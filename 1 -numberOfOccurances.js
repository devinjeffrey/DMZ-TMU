
// CALL getFirstLetters using str as parameter
  // IF parameter is not a string THEN 
    // Alert user to input valid string
    // Exit function execution
  // Else
    // RETURN string of the first letter of each word in the parameter
  // ENDIF
// Call countOccurencesAtoZ using returned value from getFirstLetters
  // RETURN object with a-z as the keys and the corresponding occurance count as the value

let input = "The quick brown fox jumps over the lazy dog";

console.log(countOccurences(getFirstLetters(input))); // this prints only the first letters found in the input string
console.log(countOccurencesAtoZ(getFirstLetters(input))); // this prints all the letters in the alphabet and the number of occurences found

/**
 * @name getFirstLetters
 * @description Sets styling for images in DOM
 * @param {string} input 
 * 
 * @returns {string} 
 */
function getFirstLetters(input) {
  if(typeof input != 'string'){
    alert("Please input a  valid string!");
    return;
  } else {
    return input.toLowerCase().replace(/[^A-Za-z\s!?]/g, '').split(/\s/).reduce((response, word) => response += word.slice(0, 1), '');
  }
}

/**
 * @name countOccurences
 * @description Counts the occurances of each letter in the input and returns an object with each letter as the keys and the number of occurances as the value
 * @param {string} str 
 * 
 * @returns {object} 
 */
function countOccurences(str) {
  return [...str].reduce((res, char) => (res[char] = (res[char] || 0) + 1, res), {});
}

/**
 * @name countOccurencesAtoZ
 * @description Counts the occurances of each letter in the alphabet and returns an object with a-z as the keys and the number of occurances as the value
 * @param {string} str 
 * 
 * @returns {object} 
 */
function countOccurencesAtoZ(str) {
  const result = Object.fromEntries(Array.from("abcdefghijklmnopqrstuvwxyz", char => [char, 0]));
  
    for (let char of str) 
    if (char in result) result[char]++;
    return result;
}