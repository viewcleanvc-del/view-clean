# Create branded SVG placeholders for View Clean
$placeholders = @(
    @{
        File = "assets/images/placeholders/hero-placeholder.svg"
        Width = 1200; Height = 700;
        Title = "المساحة المخصصة لصورة الواجهة الرئيسية"
        Subtitle = "View Clean - Hero Official Image Placeholder"
        Category = "واجهات وأبراج الرياض الشاهقة"
        IconType = "tower"
    },
    @{
        File = "assets/images/placeholders/about-placeholder.svg"
        Width = 800; Height = 600;
        Title = "مساحة صورة من نحن وتجهيزات العمل"
        Subtitle = "View Clean - About Us Image Area"
        Category = "فرق العمل الميدانية ومعدات السلامة"
        IconType = "shield"
    },
    @{
        File = "assets/images/placeholders/service-glass.svg"
        Width = 800; Height = 500;
        Title = "خدمة تنظيف الواجهات الزجاجية للأبراج"
        Subtitle = "Glass Facade Cleaning - Placeholder"
        Category = "أعمال الارتفاعات بالحبال والرافعات"
        IconType = "glass"
    },
    @{
        File = "assets/images/placeholders/service-cladding.svg"
        Width = 800; Height = 500;
        Title = "خدمة تنظيف واجهات الكلادينج والألمنيوم"
        Subtitle = "Cladding Facade Cleaning - Placeholder"
        Category = "غسيل بالضغط واستعادة اللمعان الأصلي"
        IconType = "cladding"
    },
    @{
        File = "assets/images/placeholders/service-signage.svg"
        Width = 800; Height = 500;
        Title = "خدمة تنظيف وتلميع اللوحات الإعلانية"
        Subtitle = "Advertising Sign Cleaning - Placeholder"
        Category = "شاشات LED ولوحات المباني التجارية"
        IconType = "sign"
    },
    @{
        File = "assets/images/placeholders/service-marble.svg"
        Width = 800; Height = 500;
        Title = "خدمة جلي وتلميع الرخام والجرانيت"
        Subtitle = "Marble Polishing - Placeholder"
        Category = "جلي ماسي ومعالجة كريستالية"
        IconType = "marble"
    },
    @{
        File = "assets/images/placeholders/service-ceramic.svg"
        Width = 800; Height = 500;
        Title = "خدمة جلي وتلميع السيراميك والبورسلان"
        Subtitle = "Ceramic Grinding - Placeholder"
        Category = "تنظيف وترويب الفواصل للمجمعات"
        IconType = "ceramic"
    },
    @{
        File = "assets/images/placeholders/service-furniture.svg"
        Width = 800; Height = 500;
        Title = "خدمة تنظيف الأثاث والموكيت بالبخار"
        Subtitle = "Furniture Cleaning - Placeholder"
        Category = "تعقيم وتجفيف فوري للمكاتب والشركات"
        IconType = "furniture"
    },
    @{
        File = "assets/images/placeholders/service-pool.svg"
        Width = 800; Height = 500;
        Title = "خدمة تنظيف وصيانة المسابح"
        Subtitle = "Swimming Pool Cleaning - Placeholder"
        Category = "فلترة وموازنة كيميائية وتعقيم شامل"
        IconType = "pool"
    },
    @{
        File = "assets/images/placeholders/project-1.svg"
        Width = 800; Height = 600;
        Title = "مشروع تنظيف واجهات زجاجية لبرج تجاري"
        Subtitle = "Project 01 - Glass Tower Facade"
        Category = "الرياض - طريق الملك فهد (28 طابقاً)"
        IconType = "tower"
    },
    @{
        File = "assets/images/placeholders/project-2.svg"
        Width = 800; Height = 600;
        Title = "مشروع صيانة واجهات الكلادينج لمجمع أعمال"
        Subtitle = "Project 02 - Business Complex Cladding"
        Category = "الرياض - حي العليا (4,500 م²)"
        IconType = "cladding"
    },
    @{
        File = "assets/images/placeholders/project-3.svg"
        Width = 800; Height = 600;
        Title = "مشروع جلي وتلميع الرخام لفندق 5 نجوم"
        Subtitle = "Project 03 - 5-Star Hotel Marble Floors"
        Category = "الرياض - حي النخيل (2,800 م²)"
        IconType = "marble"
    },
    @{
        File = "assets/images/placeholders/project-4.svg"
        Width = 800; Height = 600;
        Title = "مشروع نظافة واجهات ولوحات مركز تسوق"
        Subtitle = "Project 04 - Shopping Mall Facades & Signs"
        Category = "الرياض - الطريق الدائري الشمالي"
        IconType = "sign"
    },
    @{
        File = "assets/images/placeholders/project-5.svg"
        Width = 800; Height = 600;
        Title = "مشروع تنظيف موكيت ومفروشات مقر شركة"
        Subtitle = "Project 05 - Corporate HQ Furniture"
        Category = "الرياض - حي الملقا (3,200 م²)"
        IconType = "furniture"
    },
    @{
        File = "assets/images/placeholders/project-6.svg"
        Width = 800; Height = 600;
        Title = "مشروع تنظيف وصيانة مسابح مجمع سكني"
        Subtitle = "Project 06 - Residential Compound Pool"
        Category = "الرياض - حي حطين"
        IconType = "pool"
    },
    @{
        File = "assets/images/placeholders/gallery-1.svg"
        Width = 600; Height = 600;
        Title = "رافعات الواجهات الزجاجية المتطورة"
        Subtitle = "Gallery 01 - Equipment"
        Category = "View Clean Equipment"
        IconType = "tower"
    },
    @{
        File = "assets/images/placeholders/gallery-2.svg"
        Width = 600; Height = 600;
        Title = "أعمال النزول بالحبال (Rope Access)"
        Subtitle = "Gallery 02 - Safety & Team"
        Category = "View Clean Team"
        IconType = "shield"
    },
    @{
        File = "assets/images/placeholders/gallery-3.svg"
        Width = 600; Height = 600;
        Title = "تلميع الرخام بالماكينات الكريستالية"
        Subtitle = "Gallery 03 - Floor Polishing"
        Category = "View Clean Polishing"
        IconType = "marble"
    },
    @{
        File = "assets/images/placeholders/gallery-4.svg"
        Width = 600; Height = 600;
        Title = "تنظيف واجهات الكلادينج بضغط الماء"
        Subtitle = "Gallery 04 - Pressure Wash"
        Category = "View Clean Wash"
        IconType = "cladding"
    },
    @{
        File = "assets/images/placeholders/gallery-5.svg"
        Width = 600; Height = 600;
        Title = "أجهزة غسيل وتعقيم الأثاث والموكيت"
        Subtitle = "Gallery 05 - Steam Extraction"
        Category = "View Clean Interiors"
        IconType = "furniture"
    },
    @{
        File = "assets/images/placeholders/gallery-6.svg"
        Width = 600; Height = 600;
        Title = "معدات فحص واختبار مياه المسابح"
        Subtitle = "Gallery 06 - Pool Maintenance"
        Category = "View Clean Facilities"
        IconType = "pool"
    }
)

foreach ($item in $placeholders) {
    $w = $item.Width
    $h = $item.Height
    $title = $item.Title
    $sub = $item.Subtitle
    $cat = $item.Category
    $wCenter = $w / 2
    $hCenter = $h / 2

    $svg = @"
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 $w $h" width="100%" height="100%">
  <defs>
    <linearGradient id="bgGrad" x1="0%" y1="0%" x2="100%" y2="100%">
      <stop offset="0%" stop-color="#0a1f33" />
      <stop offset="50%" stop-color="#0f3d64" />
      <stop offset="100%" stop-color="#144d7d" />
    </linearGradient>
    <linearGradient id="cyanGrad" x1="0%" y1="0%" x2="100%" y2="0%">
      <stop offset="0%" stop-color="#29a8e2" />
      <stop offset="100%" stop-color="#67e8f9" />
    </linearGradient>
    <pattern id="grid" width="40" height="40" patternUnits="userSpaceOnUse">
      <path d="M 40 0 L 0 0 0 40" fill="none" stroke="#29a8e2" stroke-width="0.8" stroke-opacity="0.15" />
    </pattern>
    <filter id="glow" x="-20%" y="-20%" width="140%" height="140%">
      <feGaussianBlur stdDeviation="8" result="blur" />
      <feComposite in="SourceGraphic" in2="blur" operator="over" />
    </filter>
  </defs>

  <!-- Background -->
  <rect width="$w" height="$h" fill="url(#bgGrad)" />
  <rect width="$w" height="$h" fill="url(#grid)" />

  <!-- Geometric Architectural Accent Lines -->
  <g opacity="0.25" stroke="#38bdf8" stroke-width="1.5">
    <line x1="0" y1="0" x2="$w" y2="$h" stroke-dasharray="6,6" />
    <line x1="$w" y1="0" x2="0" y2="$h" stroke-dasharray="6,6" />
    <circle cx="$wCenter" cy="$hCenter" r="180" fill="none" stroke="#29a8e2" stroke-width="1" stroke-dasharray="8,8" />
    <circle cx="$wCenter" cy="$hCenter" r="230" fill="none" stroke="#67e8f9" stroke-width="0.75" />
  </g>

  <!-- Central Card -->
  <rect x="$($wCenter - 260)" y="$($hCenter - 140)" width="520" height="280" rx="16" fill="#0c253d" fill-opacity="0.85" stroke="#29a8e2" stroke-width="1.5" filter="url(#glow)" />

  <!-- Badge Top -->
  <g transform="translate($($wCenter - 130), $($hCenter - 115))">
    <rect width="260" height="28" rx="14" fill="#144d7d" stroke="#29a8e2" stroke-width="1" />
    <text x="130" y="19" fill="#67e8f9" font-family="'Cairo', 'Tajawal', sans-serif" font-size="12" font-weight="700" text-anchor="middle" letter-spacing="1">
      مساحة صورة قابلة للاستبدال
    </text>
  </g>

  <!-- Title & Info -->
  <text x="$wCenter" y="$($hCenter - 35)" fill="#ffffff" font-family="'Cairo', 'Tajawal', sans-serif" font-size="20" font-weight="800" text-anchor="middle">
    $title
  </text>

  <text x="$wCenter" y="$($hCenter)" fill="#93c5fd" font-family="'Cairo', 'Tajawal', sans-serif" font-size="13" font-weight="600" text-anchor="middle">
    $cat
  </text>

  <text x="$wCenter" y="$($hCenter + 35)" fill="#67e8f9" font-family="'Segoe UI', Roboto, sans-serif" font-size="14" font-weight="700" text-anchor="middle" letter-spacing="0.5">
    $sub
  </text>

  <!-- View Clean Tag & Dimensions -->
  <g transform="translate($($wCenter - 190), $($hCenter + 65))">
    <rect width="380" height="42" rx="8" fill="#081826" stroke="#1e40af" stroke-width="1" />
    <text x="190" y="26" fill="#94a3b8" font-family="'Cairo', 'Tajawal', sans-serif" font-size="12" text-anchor="middle">
      فيو كلين • أبعاد الصورة الموصى بها: ${w} × ${h} بكسل
    </text>
  </g>

  <!-- Sparkle Decors -->
  <g fill="#67e8f9" opacity="0.8">
    <path d="M $($wCenter - 230) $($hCenter - 90) l 4 8 l 8 4 l -8 4 l -4 8 l -4 -8 l -8 -4 l 8 -4 z" />
    <path d="M $($wCenter + 225) $($hCenter + 85) l 3 6 l 6 3 l -6 3 l -3 6 l -3 -6 l -6 -3 l 6 -3 z" />
  </g>
</svg>
"@

    Set-Content -Path $item.File -Value $svg -Encoding UTF8
    Write-Host "Generated $($item.File)"
}
