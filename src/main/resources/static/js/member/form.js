
const create = document.getElementById("create");

create.addEventListener("click", ()=>{
    let form = new FormData();  //새로운 객체를 만들어 비어있는 form을 생성한 것으로 간주
    form.append("boardTitle", "ajax title");   // form에 값을 추가하기 위해 append 사용
    form.append("boardWriter", "ajax writer");
    form.append("boardContents", "ajax Contents");

    fetch("./create", {
        method:"POST",
        body:form
    }).then(res=>res.text())
    .then(res=>console.log(res));
})