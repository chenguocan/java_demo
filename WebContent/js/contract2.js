
const wechat = document.querySelector(".wechat");
const mywechat = document.querySelector(".mywechat");

wechat.addEventListener("mouseover", function () {
  mywechat.style.display = "block";
  wechat.src = "./image/wechat.png";
});
wechat.addEventListener("mouseout", function () {
  mywechat.style.display = "none";
  wechat.src = "./image/weixin.png";
});
