// --﷽--

// Selecting all necessary DOM elements
const slides = document.querySelectorAll(".slide");
const prev = document.querySelector("#prev-slide");
const next = document.querySelector("#next-slide");
const indicator = document.querySelector(".dot-indicator");

const sLen = slides.length;
let index = 0;

// Home page slider code

// Auto play function
const autoplay = () => {
  nextSlide();
  updateDotIndicator();
};

// Next slide function
const nextSlide = () => {
  if (index === sLen - 1) {
    index = 0;
  } else {
    index++;
  }

  changeSlide();
};

// Previous slide function
const previousSlide = () => {
  if (index === 0) {
    index = sLen - 1;
  } else {
    index--;
  }

  changeSlide();
};

// Change slide function
const changeSlide = () => {
  slides.forEach((element) => {
    element.classList.remove("active");
  });

  slides[index].classList.add("active");
};

// Reset timer function
const resetTimer = () => {
  clearInterval(timer);
  timer = setInterval(autoplay, 8000);
};

// Dot indicator function
const dotIndicator = () => {
  slides.forEach((element, index) => {
    const dotDiv = document.createElement("div");

    dotDiv.addEventListener("click", () => {
      indicateSlide(dotDiv);
    });

    dotDiv.id = index;
    if (index === 0) {
      dotDiv.className = "active";
    }

    indicator.appendChild(dotDiv);
  });
};

// Indicate slide function
const indicateSlide = (element) => {
  index = element.id;
  changeSlide();
  updateDotIndicator();
  resetTimer();
};

// Update dot indicator function
const updateDotIndicator = () => {
  const dotLen = indicator.children.length;

  for (let i = 0; i < dotLen; i++) {
    indicator.children[i].classList.remove("active");
  }

  indicator.children[index].classList.add("active");
};

// Window load event
document.addEventListener("DOMContentLoaded", () => {
  dotIndicator();
});

// AutoPlay initialization
let timer = setInterval(autoplay, 8000);

// Adding listener for the previous button
prev.addEventListener("click", () => {
  previousSlide();
  updateDotIndicator();
  resetTimer();
});

// Adding listener for the next button
next.addEventListener("click", () => {
  nextSlide();
  updateDotIndicator();
  resetTimer();
});

// Happy coding !!!!
// This project made by Fahad at 10th May, 2022.
