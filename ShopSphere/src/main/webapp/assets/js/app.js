(function(){
  var saved = localStorage.getItem("shopsphere_theme") || "emerald";
  document.documentElement.setAttribute("data-theme", saved);
})();

document.addEventListener("DOMContentLoaded", function() {
  // Client-side instant filter search
  document.querySelectorAll("[data-search]").forEach(function(input) {
    var target = document.querySelector(input.dataset.search);
    if (!target) return;
    input.addEventListener("input", function() {
      var q = input.value.toLowerCase().trim();
      target.querySelectorAll("[data-search-item]").forEach(function(item) {
        item.style.display = item.textContent.toLowerCase().includes(q) ? "" : "none";
      });
    });
  });

  // Action confirmation dialogs
  document.querySelectorAll("[data-confirm]").forEach(function(el) {
    el.addEventListener("click", function(e) {
      if (!confirm(el.dataset.confirm)) e.preventDefault();
    });
  });

  // Interactive Theme Switcher Widget
  if (!document.querySelector(".theme-picker")) {
    var picker = document.createElement("div");
    picker.className = "theme-picker";
    picker.innerHTML = 
      '<span class="theme-label">Theme</span>' +
      '<span class="theme-dot" data-pick="emerald" title="Royal Emerald (Default)"></span>' +
      '<span class="theme-dot" data-pick="violet" title="Cyber Violet"></span>' +
      '<span class="theme-dot" data-pick="cyan" title="Ocean Cyan"></span>' +
      '<span class="theme-dot" data-pick="gold" title="Midnight Gold"></span>';
    document.body.appendChild(picker);

    var current = localStorage.getItem("shopsphere_theme") || "emerald";
    var activeDot = picker.querySelector('[data-pick="' + current + '"]');
    if (activeDot) activeDot.classList.add("active");

    picker.querySelectorAll(".theme-dot").forEach(function(dot) {
      dot.addEventListener("click", function() {
        var chosen = dot.dataset.pick;
        document.documentElement.setAttribute("data-theme", chosen);
        localStorage.setItem("shopsphere_theme", chosen);
        picker.querySelectorAll(".theme-dot").forEach(function(d) { d.classList.remove("active"); });
        dot.classList.add("active");
      });
    });
  }
});