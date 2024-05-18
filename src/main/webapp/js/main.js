// Selecting all necessary DOM elements
const menuBar = document.querySelector("#menu-icon");
const navigation = document.querySelector(".navigation");
const searchIcon = document.querySelector("#search-icon");
const searchForm = document.querySelector(".search-form");

// Adding event listener for search box
searchIcon.addEventListener("click", () => {
  searchForm.classList.toggle("active");
  hideElement(navigation);
});

// Adding event listener for menu bar
menuBar.addEventListener("click", () => {
  navigation.classList.toggle("active");
  menuBar.classList.toggle("fa-times");
  menuBar.classList.toggle("active");
  hideElement(searchForm);
});

// Adding scroll event
document.addEventListener("scroll", () => {
  hideElement(navigation);
  hideElement(searchForm);
});

// Hide element function
const hideElement = (element) => {
  let exist = element.classList.contains("active");
  if (exist) {
    element.classList.remove("active");
  }
  if (element === navigation) {
    menuBar.classList.remove("fa-times");
    menuBar.classList.remove("active");
  }
};

// Happy coding !!!!
// This project made by Fahad at 10th May, 2022.
