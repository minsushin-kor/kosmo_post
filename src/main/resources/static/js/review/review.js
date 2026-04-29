const review_list = document.getElementById("review_list");

getList(review_list.getAttribute("data-product-num"));

function getList(num){

    fetch(`/review/list?productNum=${num}`)
    .then(r=>r.text())
    .then(r=>{
        r=r.trim()
        review_list.innerHTML = r;
    })
}