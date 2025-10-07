// Smooth scrolling for navigation links
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
        e.preventDefault();
        
        const target = document.querySelector(this.getAttribute('href'));
        if (target) {
            window.scrollTo({
                top: target.offsetTop - 80,
                behavior: 'smooth'
            });
        }
    });
});

// Navbar scroll effect
window.addEventListener('scroll', function() {
    const header = document.querySelector('header');
    if (window.scrollY > 50) {
        header.style.boxShadow = '0 5px 20px rgba(0, 0, 0, 0.1)';
        header.style.padding = '10px 0';
    } else {
        header.style.boxShadow = '0 2px 10px rgba(0, 0, 0, 0.1)';
        header.style.padding = '20px 0';
    }
});

// Animation on scroll
const observerOptions = {
    root: null,
    rootMargin: '0px',
    threshold: 0.1
};

const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            entry.target.classList.add('animated');
        }
    });
}, observerOptions);

// Observe sections for animation
document.querySelectorAll('section').forEach(section => {
    observer.observe(section);
});

// Form submission handling
document.querySelectorAll('.btn-primary').forEach(button => {
    // Only apply to actual button elements, not links
    if (button.tagName === 'BUTTON') {
        button.addEventListener('click', function(e) {
            // In a real implementation, this would submit to a form handler
            console.log('Button clicked:', this.textContent);
            
            // If it's a join early access button, show a message
            if (this.textContent.includes('Join Early Access') || this.textContent.includes('Get Started')) {
                e.preventDefault();
                alert('Thanks for your interest! The early access program will be launching soon. Stay tuned!');
            }
        });
    }
});

// Feature card hover effect enhancement
document.querySelectorAll('.feature-card').forEach(card => {
    card.addEventListener('mouseenter', function() {
        this.style.transform = 'translateY(-10px)';
    });
    
    card.addEventListener('mouseleave', function() {
        this.style.transform = 'translateY(0)';
    });
});

// Pricing card interaction
document.querySelectorAll('.pricing-card').forEach(card => {
    card.addEventListener('mouseenter', function() {
        if (!this.classList.contains('featured')) {
            this.style.transform = 'translateY(-10px)';
        }
    });
    
    card.addEventListener('mouseleave', function() {
        if (!this.classList.contains('featured')) {
            this.style.transform = 'translateY(0)';
        }
    });
});

// Demo Modal Functionality
function openDemoModal() {
    const modal = document.getElementById('demoModal');
    if (modal) {
        modal.style.display = 'block';
        document.body.style.overflow = 'hidden'; // Prevent background scrolling
    }
}

function closeDemoModal() {
    const modal = document.getElementById('demoModal');
    if (modal) {
        modal.style.display = 'none';
        document.body.style.overflow = 'auto'; // Re-enable scrolling
    }
}

// Close modal when clicking on close button
document.addEventListener('click', function(e) {
    if (e.target && e.target.classList.contains('close')) {
        closeDemoModal();
    }
});

// Close modal when clicking outside the modal content
window.addEventListener('click', function(e) {
    const modal = document.getElementById('demoModal');
    if (e.target === modal) {
        closeDemoModal();
    }
});

// Initialize any animations or effects when the page loads
document.addEventListener('DOMContentLoaded', function() {
    console.log('EventFlow landing page loaded');
    
    // Add animated class to first section immediately
    const heroSection = document.querySelector('.hero');
    if (heroSection) {
        heroSection.classList.add('animated');
    }
    
    // Add event listener to Watch Demo button
    const watchDemoButton = document.querySelector('.cta-buttons .btn-secondary');
    if (watchDemoButton) {
        watchDemoButton.addEventListener('click', function(e) {
            e.preventDefault();
            openDemoModal();
        });
    }
});