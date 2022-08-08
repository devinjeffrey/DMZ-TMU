/**
 * @name setImageStyles
 * @description Sets styling for images in DOM
 * @param {string} imgId 
 * 
 * @returns {void} 
 */

function setImageStyles(imgId){
    const element = document.getElementById(imgId);
    console.log(imgId.split("photo").pop())
     if(imgId.split("photo").pop() <= 3){
        element.classList.add("set-img-size");
     } else {
        element.classList.add("set-img-style");
     }
}
