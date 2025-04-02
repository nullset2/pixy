document.addEventListener("turbolinks:load", function () {
    function createSkipLinks() {
        const regex = /@\d+/g;
        
        function shouldSkip(node) {
            return node.nodeName === 'TEXTAREA';
        }
        
        function processNode(node) {
            if (node.nodeType === Node.TEXT_NODE && regex.test(node.nodeValue) && !shouldSkip(node.parentNode)) {
                const span = document.createElement("span");
                span.innerHTML = node.nodeValue.replace(/@(\d+)/g, (match, id) => {
                    return `<a href="#${id}" class="skip-link" data-target="${id}">${match}</a>`;
                });
                node.replaceWith(span);
            } else if (node.nodeType === Node.ELEMENT_NODE && !shouldSkip(node)) {
                node.childNodes.forEach(child => processNode(child));
            }
        }
        
        document.body.childNodes.forEach(child => processNode(child));
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
