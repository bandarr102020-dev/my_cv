// 1. جلب المعلومات الشخصية عبر XML
fetch("getInfo.php")
    .then(function(response) {
        return response.text();
    })
    .then(function(text) {
        let parser = new DOMParser();
        let xml = parser.parseFromString(text, "text/xml");

        let infos = xml.getElementsByTagName("info");
        let list = document.getElementById("info-list");

        for (let i = 0; i < infos.length; i++) {
            let name = infos[i].getElementsByTagName("name")[0].textContent;
            let studentId = infos[i].getElementsByTagName("student_id")[0].textContent;
            let title = infos[i].getElementsByTagName("title")[0].textContent;
            let email = infos[i].getElementsByTagName("email")[0].textContent;
            let location = infos[i].getElementsByTagName("location")[0].textContent;
            let bio = infos[i].getElementsByTagName("bio")[0].textContent;

            let nameEl = document.createElement("h3");
            nameEl.textContent = name + " (" + studentId + ")";

            let titleEl = document.createElement("h4");
            titleEl.textContent = title;

            let bioEl = document.createElement("p");
            bioEl.textContent = bio;

            let contactEl = document.createElement("p");
            contactEl.className = "meta-info";
            contactEl.textContent = "📍 " + location + " | ✉️ " + email;

            list.appendChild(nameEl);
            list.appendChild(titleEl);
            list.appendChild(bioEl);
            list.appendChild(contactEl);
        }
    });

// 2. جلب المهارات عبر XML
fetch("getSkills.php")
    .then(function(response) {
        return response.text();
    })
    .then(function(text) {
        let parser = new DOMParser();
        let xml = parser.parseFromString(text, "text/xml");

        let skills = xml.getElementsByTagName("skill");
        let list = document.getElementById("skills-list");

        for (let i = 0; i < skills.length; i++) {
            let skillName = skills[i].getElementsByTagName("name")[0].textContent;
            let category = skills[i].getElementsByTagName("category")[0].textContent;
            let skillLevel = skills[i].getElementsByTagName("level")[0].textContent;

            let itemBox = document.createElement("div");
            itemBox.className = "item-box";

            let heading = document.createElement("h3");
            heading.textContent = skillName;

            let catP = document.createElement("p");
            catP.textContent = category;

            let badge = document.createElement("span");
            badge.className = "badge";
            badge.textContent = skillLevel;

            itemBox.appendChild(heading);
            itemBox.appendChild(catP);
            itemBox.appendChild(badge);
            list.appendChild(itemBox);
        }
    });

// 3. جلب المشاريع عبر XML
fetch("getProjects.php")
    .then(function(response) {
        return response.text();
    })
    .then(function(text) {
        let parser = new DOMParser();
        let xml = parser.parseFromString(text, "text/xml");

        let projects = xml.getElementsByTagName("project");
        let list = document.getElementById("projects-list");

        for (let i = 0; i < projects.length; i++) {
            let title = projects[i].getElementsByTagName("title")[0].textContent;
            let role = projects[i].getElementsByTagName("role")[0].textContent;
            let desc = projects[i].getElementsByTagName("description")[0].textContent;

            let projBox = document.createElement("div");
            projBox.className = "project-box";

            let heading = document.createElement("h3");
            heading.textContent = title;

            let roleEl = document.createElement("span");
            roleEl.className = "role-tag";
            roleEl.textContent = role;

            let paragraph = document.createElement("p");
            paragraph.textContent = desc;

            projBox.appendChild(heading);
            projBox.appendChild(roleEl);
            projBox.appendChild(paragraph);
            list.appendChild(projBox);
        }
    });

// 4. ميزة الوضع الليلي والنهاري (Dark/Light Mode)
let themeBtn = document.getElementById("theme-btn");
themeBtn.addEventListener("click", function() {
    document.body.classList.toggle("dark-mode");

    if (document.body.classList.contains("dark-mode")) {
        themeBtn.textContent = "الوضع النهاري ☀️";
    } else {
        themeBtn.textContent = "الوضع الليلي 🌙";
    }
});