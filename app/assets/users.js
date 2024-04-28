document.addEventListener("DOMContentLoaded", function() {
  const nameHeader = document.querySelector("#name-header");
  nameHeader.addEventListener("click", function() {
    const users = document.querySelectorAll(".user-row");
    const sortedUsers = Array.from(users).sort((a, b) => {
      const nameA = a.querySelector(".user-name").innerText;
      const nameB = b.querySelector(".user-name").innerText;
      return nameA.localeCompare(nameB);
    });
    const userList = document.querySelector("#user-list");
    sortedUsers.forEach(user => userList.appendChild(user));
  });
});
