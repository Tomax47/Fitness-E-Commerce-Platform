
console.log("HOOKED !")
const addWorkout = () => {
    const lastId = document.querySelector('#fieldsetContainer').lastElementChild.id;
    console.log(`ID : ${lastId}`);

    const newId = parseInt(lastId, 10) + 1;
    console.log(`NEW ID : ${newId}`);

    const newFieldset = document.querySelector('[id="0"]').outerHTML.replace(/0/g, newId);
    document.querySelector('#fieldsetContainer').insertAdjacentHTML("beforeend", newFieldset);
};

const addLiftButton = document.getElementById('addWorkout');
addLiftButton.addEventListener('click', function () {
    console.log('clicked');
    addWorkout();
});

