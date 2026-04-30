const review_list = document.getElementById("review_list");
const review_contents = document.getElementById("review_contents");
const review_add = document.getElementById("review_add");
const update_btn = document.getElementById("update_btn");

const product_num = review_list.getAttribute("data-product-num")

let review_num;


getList(product_num);

review_add.addEventListener("click", ()=>{
    let p = new FormData();
    p.append("reviewContents", review_contents.value);
    p.append("productNum", product_num);
    p.append("reviewStar", 4);

    fetch("../review/create", {
        method:"POST",
        body:p
    })
    .then(r=>r.text())
    .then(r=>{
        r=r.trim();
        if(r>0){
            alert("등록 성공");
            getList(product_num);
        }
        else{
            alert("등록 실패");
        }
        review_contents.value=""
        review_contents.innerText=""
    })
})

function getList(num){

    fetch(`/review/list?productNum=${num}`)
    .then(r=>r.text())
    .then(r=>{
        r=r.trim()
        review_list.innerHTML = r;
    })
}

review_list.addEventListener("click", (e)=>{
    if(e.target.classList.contains("review_delete")){
        review_num = e.target.parentElement.getAttribute("data-review-num");
        let p = new URLSearchParams();

        p.append("reviewNum", review_num)

        fetch("/review/delete", {
            method:"POST",
            body:p
        })
        .then(r=>r.text())
        .then(r=>{
            r=r.trim();
            if(r>0){
                alert("삭제 성공");
                getList(product_num);
            }
            else{
                alert("삭제 실패");
            }
        })
    }

    if(e.target.classList.contains("review_update")){
        review_num = e.target.parentElement.getAttribute("data-review-num");        
        let c = e.target.parentElement.parentElement.firstElementChild.innerText;
        document.getElementById("contents_update").innerText = c;
    }
})



update_btn.addEventListener("click", ()=>{
    const updElement = document.getElementById("contents_update");
    const updContents = updElement.value;

    let p = new URLSearchParams();
    p.append("reviewNum", review_num);
    p.append("reviewContents", updContents);

    fetch("/review/update", {
        method:"POST",
        body:p
    })
    .then(r=>r.text())
    .then(r=>{
        r=r.trim();
        if(r>0){
            getList(product_num);
        }
        else{
            alert("수정실패");
        }
    })
})