document.addEventListener("turbolinks:load", function () {
        function createSkipLinks() {
        const regex = /@(\d+)/g;
        document.body.innerHTML = document.body.innerHTML.replace(regex, (match, id) => {
            return `<a href="#${id}" class="skip-link" data-target="${id}">${match}</a>`;
        });
    }

    function setupSkipLinks() {
        document.querySelectorAll(".skip-link").forEach(link => {
            link.addEventListener("click", function (event) {
                event.preventDefault();
                const targetId = this.getAttribute("data-target");
                const targetElement = document.getElementById(targetId);
                if (targetElement) {
                    targetElement.scrollIntoView({
                        behavior: 'smooth',
                        block: 'center',
                        inline: 'center'
                    });
                    targetElement.style.transition = "background-color 0.5s ease";
                    targetElement.style.backgroundColor = "#bdfedf";
                }
            });
        });
    }

    createSkipLinks();
    setupSkipLinks();
});