function recipe_toggle() {
    const content = document.getElementById("recipe-content");
    if (content.className.indexOf("recipe-show") == -1) {
        content.className += " recipe-show";
    } else {
        content.className = content.className.replace(" recipe-show", "");
    }
}

function add_recipe_toggle() {
  const recipe_btn = document.getElementById("recipe-slider");
  recipe_btn.addEventListener("click", (event) => {
    recipe_toggle();
  });
}

export { add_recipe_toggle }
