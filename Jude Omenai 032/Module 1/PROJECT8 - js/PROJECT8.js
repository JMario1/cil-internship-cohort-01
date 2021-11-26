async function getData(api){
    let response = await fetch(api);
    let data = await response.json();


    let list = document.getElementById("list");
    console.log(data)

    for(let user of data) {
        let li = document.createElement("li");
        li.innerHTML = JSON.stringify(user);
        list.appendChild(li);
    };

}

getData("https://jsonplaceholder.typicode.com/users");



