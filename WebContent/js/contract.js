const qq = document.querySelector(".QQ");
const myqqcontract = document.querySelector(".mycontract");

qq.addEventListener("mouseover", function () {
  myqqcontract.style.display = "block";
  qq.src = "./image/QQ(1).png";
});
qq.addEventListener("mouseout", function () {
  myqqcontract.style.display = "none";
  qq.src = "./image/QQ.png";
});
