/**
 * View Clean - Main Interactive Functionality
 */
document.addEventListener('DOMContentLoaded', () => {
  // 1. Current Year
  const currentYearEl = document.getElementById('currentYear');
  if (currentYearEl) {
    currentYearEl.textContent = new Date().getFullYear();
  }

  // 2. Header Scroll Effect
  const siteHeader = document.getElementById('siteHeader');
  const backToTopBtn = document.getElementById('backToTopBtn');

  window.addEventListener('scroll', () => {
    const scrollY = window.scrollY || window.pageYOffset;
    if (siteHeader) {
      if (scrollY > 40) {
        siteHeader.classList.add('scrolled');
      } else {
        siteHeader.classList.remove('scrolled');
      }
    }

    if (backToTopBtn) {
      if (scrollY > 400) {
        backToTopBtn.classList.add('visible');
      } else {
        backToTopBtn.classList.remove('visible');
      }
    }
  }, { passive: true });

  if (backToTopBtn) {
    backToTopBtn.addEventListener('click', () => {
      window.scrollTo({ top: 0, behavior: 'smooth' });
    });
  }

  // 3. Mobile Navigation Drawer
  const menuToggleBtn = document.getElementById('menuToggleBtn');
  const mobileNavDrawer = document.getElementById('mobileNavDrawer');
  const drawerBackdrop = document.getElementById('drawerBackdrop');
  const drawerCloseBtn = document.getElementById('drawerCloseBtn');
  const drawerLinks = document.querySelectorAll('.drawer-link');

  const openDrawer = () => {
    if (mobileNavDrawer) {
      mobileNavDrawer.classList.add('open');
      document.body.style.overflow = 'hidden';
    }
  };

  const closeDrawer = () => {
    if (mobileNavDrawer) {
      mobileNavDrawer.classList.remove('open');
      document.body.style.overflow = '';
    }
  };

  if (menuToggleBtn) menuToggleBtn.addEventListener('click', openDrawer);
  if (drawerBackdrop) drawerBackdrop.addEventListener('click', closeDrawer);
  if (drawerCloseBtn) drawerCloseBtn.addEventListener('click', closeDrawer);
  drawerLinks.forEach(link => link.addEventListener('click', closeDrawer));

  // 4. Smooth Anchor Scroll & Active State
  const sections = document.querySelectorAll('main section[id]');
  const navLinks = document.querySelectorAll('.nav-link');

  window.addEventListener('scroll', () => {
    const scrollY = window.scrollY || window.pageYOffset;
    const headerOffset = 120;

    sections.forEach(section => {
      const sectionTop = section.offsetTop - headerOffset;
      const sectionHeight = section.offsetHeight;
      const sectionId = section.getAttribute('id');

      if (scrollY >= sectionTop && scrollY < sectionTop + sectionHeight) {
        navLinks.forEach(link => {
          link.classList.remove('active');
          if (link.getAttribute('href') === `#${sectionId}`) {
            link.classList.add('active');
          }
        });
      }
    });
  }, { passive: true });

  // 5. Service Select Buttons -> Auto-populate Contact Form
  const serviceSelectBtns = document.querySelectorAll('.btn-select-service');
  const serviceTypeSelect = document.getElementById('serviceTypeSelect');

  serviceSelectBtns.forEach(btn => {
    btn.addEventListener('click', (e) => {
      const serviceName = btn.getAttribute('data-service-name');
      if (serviceName && serviceTypeSelect) {
        for (let i = 0; i < serviceTypeSelect.options.length; i++) {
          if (serviceTypeSelect.options[i].value.includes(serviceName) || serviceName.includes(serviceTypeSelect.options[i].value)) {
            serviceTypeSelect.selectedIndex = i;
            break;
          }
        }
      }
    });
  });

  // 6. File Upload site photo preview pill
  const sitePhotoInput = document.getElementById('sitePhotoInput');
  const filePreviewPill = document.getElementById('filePreviewPill');
  const fileNameText = document.getElementById('fileNameText');

  if (sitePhotoInput && filePreviewPill && fileNameText) {
    sitePhotoInput.addEventListener('change', () => {
      if (sitePhotoInput.files && sitePhotoInput.files.length > 0) {
        fileNameText.textContent = sitePhotoInput.files[0].name;
        filePreviewPill.style.display = 'inline-flex';
      } else {
        filePreviewPill.style.display = 'none';
      }
    });
  }

  // 7. Lightbox Modal Functionality
  const lightboxModal = document.getElementById('lightboxModal');
  const lightboxImg = document.getElementById('lightboxImg');
  const lightboxTitle = document.getElementById('lightboxTitle');
  const lightboxDesc = document.getElementById('lightboxDesc');
  const lightboxCloseBtn = document.getElementById('lightboxCloseBtn');

  const openLightbox = (src, title, desc) => {
    if (lightboxModal && lightboxImg) {
      lightboxImg.src = src;
      if (lightboxTitle) lightboxTitle.textContent = title || 'فيو كلين للصيانة والنظافة';
      if (lightboxDesc) lightboxDesc.textContent = desc || '';
      lightboxModal.classList.add('active');
      document.body.style.overflow = 'hidden';
    }
  };

  const closeLightbox = () => {
    if (lightboxModal) {
      lightboxModal.classList.remove('active');
      document.body.style.overflow = '';
      if (lightboxImg) lightboxImg.src = '';
    }
  };

  document.querySelectorAll('[data-lightbox]').forEach(el => {
    el.addEventListener('click', (e) => {
      if (e.target.closest('a') || e.target.closest('button')) return;
      const src = el.getAttribute('data-lightbox-src') || (el.querySelector('img') ? el.querySelector('img').src : '');
      const title = el.getAttribute('data-lightbox-title') || '';
      const desc = el.getAttribute('data-lightbox-desc') || '';
      if (src) {
        openLightbox(src, title, desc);
      }
    });
  });

  if (lightboxCloseBtn) lightboxCloseBtn.addEventListener('click', closeLightbox);
  if (lightboxModal) {
    lightboxModal.addEventListener('click', (e) => {
      if (e.target === lightboxModal) closeLightbox();
    });
  }

  document.addEventListener('keydown', (e) => {
    if (e.key === 'Escape') {
      closeLightbox();
      closeDrawer();
    }
  });

  // 8. Service Request Form Handler
  const serviceRequestForm = document.getElementById('serviceRequestForm');
  const toastContainer = document.getElementById('toastContainer');

  const showToast = (message, type = 'success') => {
    if (!toastContainer) return;
    const toast = document.createElement('div');
    toast.className = `toast-message toast-${type}`;
    toast.innerHTML = `
      <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5">
        <path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"></path>
        <polyline points="22 4 12 14.01 9 11.01"></polyline>
      </svg>
      <span>${message}</span>
    `;
    toastContainer.appendChild(toast);
    setTimeout(() => {
      toast.classList.add('show');
    }, 10);
    setTimeout(() => {
      toast.classList.remove('show');
      setTimeout(() => toast.remove(), 400);
    }, 4500);
  };

  if (serviceRequestForm) {
    serviceRequestForm.addEventListener('submit', (e) => {
      e.preventDefault();
      const name = document.getElementById('reqName')?.value || '';
      const phone = document.getElementById('reqPhone')?.value || '';
      const service = document.getElementById('serviceTypeSelect')?.value || '';
      const company = document.getElementById('reqCompany')?.value || '';
      const city = document.getElementById('reqCity')?.value || '';
      const details = document.getElementById('reqDetails')?.value || '';

      const msg = `مرحباً فيو كلين، أود طلب خدمة:\n• الاسم: ${name}\n• الجوال: ${phone}\n• الخدمة: ${service}${company ? `\n• المنشأة: ${company}` : ''}${city ? `\n• الموقع: ${city}` : ''}${details ? `\n• تفاصيل: ${details}` : ''}`;
      
      showToast('شكراً لتواصلكم! تم استلام طلبكم وسيتواصل معكم فريق فيو كلين خلال دقائق.');

      // Open WhatsApp with prefilled message
      const whatsappUrl = `https://wa.me/966566699019?text=${encodeURIComponent(msg)}`;
      setTimeout(() => {
        window.open(whatsappUrl, '_blank', 'noopener');
      }, 1000);

      serviceRequestForm.reset();
      if (filePreviewPill) filePreviewPill.style.display = 'none';
    });
  }
});
