// syntax highlighting
for (let el of document.querySelectorAll("pre.lisp")) {
  let cel = document.createElement("code");
  cel.innerHTML = el.innerText;
  el.innerHTML = "";
  el.appendChild(cel);
  HighlightLisp.highlight_element(cel);
}
