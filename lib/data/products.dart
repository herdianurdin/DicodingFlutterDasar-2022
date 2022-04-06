class Specification {
  String os;
  String processor;
  String graphics;
  String display;
  String memory;
  String storage;

  Specification({
    required this.os,
    required this.processor,
    required this.graphics,
    required this.display,
    required this.memory,
    required this.storage,
  });
}

class Product {
  String id;
  String brand;
  String storeId;
  String storeName;
  String storeLogo;
  String model;
  String type;
  String description;
  String image;
  String imageThumbnail;
  Specification specification;
  double price;
  int count;

  Product({
    required this.id,
    required this.brand,
    required this.storeId,
    required this.storeName,
    required this.storeLogo,
    required this.model,
    required this.type,
    required this.description,
    required this.image,
    required this.imageThumbnail,
    required this.specification,
    required this.price,
    required this.count,
  });
}

var productList = [
  Product(
    id: '1',
    brand: 'Asus',
    storeId: '1',
    storeName: 'Asus Official Store',
    storeLogo: 'https://herdaynote.github.io/DevStoreAPI/logo/asus.webp',
    model: 'Zenbook Pro Duo',
    type: 'UX851',
    description:
        'Take your creativity and productivity to the next level with the groundbreaking ASUS ZenBook Pro Duo! Designed to give you the ultimate edge in workflow efficiency, this powerful RTX Studio Laptop features a full-width 4K ASUS ScreenPad™ Plus that works seamlessly with the main 4K UHD OLED display. It’s never been this easy to harness your full creative power.',
    image:
        'https://herdaynote.github.io/DevStoreAPI/images/zenbook_pro_duo.webp',
    imageThumbnail:
        'https://herdaynote.github.io/DevStoreAPI/thumbnails/zenbook_pro_duo.webp',
    specification: Specification(
      os: 'Windows 10 Pro',
      processor:
          'Intel® Core™ i7-10750H Processor 2.6 GHz (12M Cache, up to 5.0 GHz, 6 cores)',
      graphics: 'Intel® UHD Graphics 630, NVIDIA® GeForce® RTX 2060, 6GB GDDR6',
      display:
          '15.6-inch, OLED, 4K UHD (3840 x 2160) 16:9, IPS-level Panel, Glossy display, LED Backlit, 400nits, DCI-P3: 100%, Pantone Validated, Touch screen, With stylus support',
      memory: '32GB DDR4 on board, Memory Max Up to:32GB',
      storage: '1TB M.2 NVMe™ PCIe® 3.0 Performance SSD',
    ),
    price: 2789.99,
    count: 364,
  ),
  Product(
    id: '2',
    brand: 'Asus',
    storeId: '1',
    storeName: 'Asus Official Store',
    storeLogo: 'https://herdaynote.github.io/DevStoreAPI/logo/asus.webp',
    model: 'ProArt StudioBook Pro 16',
    type: 'W5600, AMD Ryzen 5000 Series',
    description:
        'Turn your creative vision into reality with the ProArt Studiobook Pro 16 studio laptop: it pushes every boundary to give you the effortless creative experience you’ve always wanted, but never thought possible. With a certified color-accurate 16-inch 120 Hz 2.5K IPS wide-view 16:10 display, up to a breathtakingly powerful AMD® Ryzen™ 5000 series processor, pro-grade NVIDIA RTX™ A2000 graphics, huge amounts of memory, advanced ultrafast storage, superb I/O connectivity, and ultra-precise fingertip control over your creative apps with the groundbreaking new ASUS Dial, ProArt Studiobook Pro 16 is simply the best creator laptop we’ve ever made.',
    image:
        'https://herdaynote.github.io/DevStoreAPI/images/proart_studiobook_pro_16.webp',
    imageThumbnail:
        'https://herdaynote.github.io/DevStoreAPI/thumbnails/proart_studiobook_pro_16.webp',
    specification: Specification(
      os: 'Windows 10 Pro',
      processor:
          'AMD Ryzen™ 9 5900HX Processor 3.3GHz (16M Cache, up to 4.6GHz, 8 cores)',
      graphics:
          'AMD Radeon™ Vega 7 Graphics, NVIDIA® RTX™ A2000 Laptop GPU, Boost up to 1824MHz at 80W (95W with Dynamic Boost), 4GB GDDR6',
      display:
          '16.0-inch, WQXGA (2560 x 1600) 16:10, 120Hz, IPS-level Panel, Anti-glare display, LED Backlit, 500nits, DCI-P3: 100%, Pantone Validated, Screen-to-body ratio: 85 ％',
      memory: '32GB DDR4 SO-DIMM x 2, Memory Max Up to:64GB',
      storage: '512GB M.2 NVMe™ PCIe® 3.0 Performance SSD',
    ),
    price: 2499.99,
    count: 370,
  ),
  Product(
    id: '3',
    brand: 'Asus',
    storeId: '1',
    storeName: 'Asus Official Store',
    storeLogo: 'https://herdaynote.github.io/DevStoreAPI/logo/asus.webp',
    model: 'Zenbook Pro 14',
    type: 'UX480',
    description:
        "There's never been a laptop like the all-powerful, all-conquering ZenBook Pro 14. It's faster and more sophisticated than ever before, and the jaw-dropping new ScreenPad™ adds a touch of magic to everything you do. With ZenBook Pro 14, you don't have to wait for the future: you can touch it, right here and right now.",
    image:
        'https://herdaynote.github.io/DevStoreAPI/images/zenbook_pro_14.webp',
    imageThumbnail:
        'https://herdaynote.github.io/DevStoreAPI/thumbnails/zenbook_pro_14.webp',
    specification: Specification(
      os: 'Windows 10 Pro',
      processor:
          'Intel® Core™ i5-8265U Processor 1.6 GHz (6M Cache, up to 3.9 GHz, 4 cores)',
      graphics:
          'Intel® UHD Graphics 620, NVIDIA® GeForce® GTX 1050 Max Q, 2GB GDDR5',
      display:
          '14.0-inch, FHD (1920 x 1080) 16:9, IPS-level Panel, Glossy display, LED Backlit, 300nits, sRGB: 100%, Pantone Validated, Screen-to-body ratio: 90%, With stylus support',
      memory: '8GB LPDDR3 on board',
      storage: '256GB M.2 NVMe™ PCIe® 3.0 SSD',
    ),
    price: 1549,
    count: 547,
  ),
  Product(
    id: '4',
    brand: 'Asus',
    storeId: '1',
    storeName: 'Asus Official Store',
    storeLogo: 'https://herdaynote.github.io/DevStoreAPI/logo/asus.webp',
    model: 'Vivobook Pro 14X OLED',
    type: 'M7400, AMD Ryzen 5000 Series',
    description:
        'Shape the future with Vivobook Pro 14X OLED, the ultimate powerhouse for next-generation creativity. Vivobook Pro 14X OLED brings you the speed and accuracy you need to realize your vision, with a 14-inch NanoEdge 2.8K OLED1 display, a AMD Ryzen™ 9 5900HX Mobile Processor, and NVIDIA® GeForce RTX™ 3050 Ti graphics. The exclusive DialPad gives you precise and intuitive control of your creative tools, and the dual-fan cooling design lets you work in undisturbed peace. Vivobook Pro 14X OLED unlocks the door to your creative future.',
    image:
        'https://herdaynote.github.io/DevStoreAPI/images/vivobook_pro_14x_oled.webp',
    imageThumbnail:
        'https://herdaynote.github.io/DevStoreAPI/thumbnails/vivobook_pro_14x_oled.webp',
    specification: Specification(
      os: 'Windows 10 Pro',
      processor:
          'AMD Ryzen™ 9 5900HX Processor 3.3GHz (16M Cache, up to 4.6GHz, 8 cores)',
      graphics:
          'AMD Radeon™ Graphics, NVIDIA® GeForce® RTX™ 3050Ti Laptop GPU, Boost up to 1500MHz at 35W (50W with Dynamic Boost) NVIDIA Max-Q technology for peak performance and efficiency, 4GB GDDR6',
      display:
          '14.0-inch, OLED, WQXGA+ (2880 x 1800) 16:10, 90Hz, Glossy display, 400nits, DCI-P3: 100%, Pantone Validated, Screen-to-body ratio: 86 ％',
      memory: '32GB DDR4 on board, Memory Max Up to:32GB',
      storage: '512GB M.2 NVMe™ PCIe® 3.0 SSD',
    ),
    price: 1399.99,
    count: 822,
  ),
  Product(
    id: '5',
    brand: 'Asus',
    storeId: '1',
    storeName: 'Asus Official Store',
    storeLogo: 'https://herdaynote.github.io/DevStoreAPI/logo/asus.webp',
    model: 'Vivobook Pro 14',
    type: 'K3400, 11th Gen Intel',
    description:
        'It’s time to show your vibrant new vision to the world! Vivobook Pro 14 lets you express your true colors, with its vivid and stunning 14-inch NanoEdge display and awe-inspiring Harman Kardon-certified audio. Vivobook Pro 14 immerses you in whatever you’re doing, whether it’s work or play. Powered by the latest 11th Gen Intel® H Series CPU with NVIDIA GeForce GTX 1650 graphics and a dual-fan cooling system, and featuring ultrafast WiFi 6, the ultra-stylish Vivobook Pro 14 is the key to expressing your true potential.',
    image:
        'https://herdaynote.github.io/DevStoreAPI/images/vivobook_pro_14.webp',
    imageThumbnail:
        'https://herdaynote.github.io/DevStoreAPI/thumbnails/vivobook_pro_14.webp',
    specification: Specification(
      os: 'Windows 10 Pro',
      processor:
          'Intel® Core™ i5-11300H Processor 3.1 GHz (8M Cache, up to 4.4 GHz, 4 cores)',
      graphics: 'Intel® Iris Xe Graphics, NVIDIA® GeForce® GTX 1650, 4GB GDDR6',
      display:
          '14.0-inch, WQXGA (2560 x 1600) 16:10, IPS-level Panel, Anti-glare display, LED Backlit, 400nits, Screen-to-body ratio: 84 ％',
      memory: '16GB DDR4 on board, Memory Max Up to:16GB',
      storage: '256GB M.2 NVMe™ PCIe® 3.0 SSD',
    ),
    price: 749.99,
    count: 35,
  ),
  Product(
    id: '6',
    brand: 'Asus',
    storeId: '1',
    storeName: 'Asus Official Store',
    storeLogo: 'https://herdaynote.github.io/DevStoreAPI/logo/asus.webp',
    model: 'Vivobook Pro 16X',
    type: 'N7600, 11th Gen Intel',
    description:
        'Ignite your creativity with Vivobook Pro 16X, the uncompromising powerhouse for discovering your potential and exploring the future. Vivobook Pro 16X brings you the speed and accuracy you need to realize your vision, with a 16-inch NanoEdge display, 11th Generation Intel® H Series CPU, and NVIDIA® GeForce RTX™ 3050 graphics. The exclusive ASUS DialPad gives you precise and intuitive control of your creative tools, and the dual-fan cooling design lets you work in undisturbed peace. Vivobook Pro 16X unlocks the door to your creative future.',
    image:
        'https://herdaynote.github.io/DevStoreAPI/images/vivobook_pro_16x.webp',
    imageThumbnail:
        'https://herdaynote.github.io/DevStoreAPI/thumbnails/vivobook_pro_16x.webp',
    specification: Specification(
      os: 'Windows 10 Pro',
      processor:
          'Intel® Core™ i5-11300H Processor 3.1 GHz (8M Cache, up to 4.4 GHz, 4 cores)',
      graphics:
          'Intel® Iris Xe Graphics, NVIDIA® GeForce® RTX™ 3050 Laptop GPU, With ASUS Boost up to 1700MHz at 35W (50W with Dynamic Boost) NVIDIA Max-Q technology for peak performance and efficiency, 4GB GDDR6',
      display:
          '16.0-inch, WQXGA (2560 x 1600) 16:10, 120Hz, IPS-level Panel, Anti-glare display, LED Backlit, 500nits, DCI-P3: 100%, Screen-to-body ratio: 86 ％',
      memory: '16GB DDR4 on board, Memory Max Up to:32GB',
      storage: '512GB M.2 NVMe™ PCIe® 3.0 SSD',
    ),
    price: 1399.99,
    count: 916,
  ),
  Product(
    id: '7',
    brand: 'Asus',
    storeId: '1',
    storeName: 'Asus Official Store',
    storeLogo: 'https://herdaynote.github.io/DevStoreAPI/logo/asus.webp',
    model: 'ROG Zephyrus Duo 15 SE',
    type: 'GX551',
    description:
        'With its innovative ROG ScreenPad Plus secondary display, the Zephyrus Duo 15 SE takes Windows 10 gaming to new dimensions. Cutting-edge cooling empowers the latest AMD Ryzen™ 9 5900HX CPU and NVIDIA® GeForce RTX™ 3080 GPU. A choice between ultrafast 300Hz/3ms or high-res 4K 120Hz/3ms gaming panels lets you tailor your system for pro-level esports or content creation. Elevate your entire experience with premium audio delivered by quad speakers and immersive Dolby Atmos surround sound.',
    image:
        'https://herdaynote.github.io/DevStoreAPI/images/rog_zephyrus_duo_15_se.webp',
    imageThumbnail:
        'https://herdaynote.github.io/DevStoreAPI/thumbnails/rog_zephyrus_duo_15_se.webp',
    specification: Specification(
      os: 'Windows 10 Pro',
      processor:
          'AMD Ryzen™ 9 5900HX Mobile Processor 3.3 GHz (16M Cache, up to 4.6 GHz)',
      graphics: 'NVIDIA® GeForce RTX™ 3080 Laptop GPU',
      display: '15.6-inch 4K UHD (3840 x 2160) 16:9 anti-glare display',
      memory: '16GB DDR4 on board',
      storage: '1TB + 1TB M.2 NVMe™ PCIe® 3.0 Performance RAID0 SSD',
    ),
    price: 1479.99,
    count: 334,
  ),
  Product(
    id: '8',
    brand: 'Asus',
    storeId: '1',
    storeName: 'Asus Official Store',
    storeLogo: 'https://herdaynote.github.io/DevStoreAPI/logo/asus.webp',
    model: 'Zenbook 13',
    type: 'UX325',
    description:
        'The beautiful new ZenBook 13 is more portable than ever. It’s thinner, lighter, and incredibly compact, yet includes HDMI, Thunderbolt™ 3 USB-C®, USB Type-A and MicroSD card reader for unrivaled versatility. Built to deliver powerful performance, ZenBook 13 is your perfect choice for an effortless on-the-go lifestyle.',
    image: 'https://herdaynote.github.io/DevStoreAPI/images/zenbook_13.webp',
    imageThumbnail:
        'https://herdaynote.github.io/DevStoreAPI/thumbnails/zenbook_13.webp',
    specification: Specification(
      os: 'Windows 10 Home',
      processor:
          'Intel® Core™ i5-1035G1 Processor 1.0 GHz (6M Cache, up to 3.6 GHz, 4 cores)',
      graphics: 'Intel® Iris™ Plus Graphics',
      display:
          '13.3-inch, FHD (1920 x 1080) 16:9, IPS-level Panel, Anti-glare display, LED Backlit, 300nits, sRGB: 100%, Screen-to-body ratio: 88%',
      memory: '16GB LPDDR4X on board, Memory Max Up to:16GB',
      storage: '256GB M.2 NVMe™ PCIe® 3.0 SSD',
    ),
    price: 819.99,
    count: 526,
  ),
  Product(
    id: '9',
    brand: 'Acer',
    storeId: '2',
    storeName: 'Acer Official Store',
    storeLogo: 'https://herdaynote.github.io/DevStoreAPI/logo/acer.webp',
    model: 'Swift 5',
    type: 'SF514-55TA-797T',
    description:
        'Today’s environment calls for a new kind of laptop with fully-featured antimicrobial4 solutions (the chassis and Antimicrobial Corning® Gorilla® Glass4 touch display). At around 1 kg1, 14.951 mm thin and an incredible 90% screen-to-body ratio, it also has the latest 11th Gen Intel® Core™ Processors, powerful NVIDIA® GeForce® MX350 graphics1 and up to 17 hours of battery.',
    image: 'https://herdaynote.github.io/DevStoreAPI/images/acer_swift_5.webp',
    imageThumbnail:
        'https://herdaynote.github.io/DevStoreAPI/thumbnails/acer_swift_5.webp',
    specification: Specification(
      os: 'Windows 10 Home',
      processor: 'Intel® Core™ i7-1165G7 2.80 GHz Quad-core (4 Core™)',
      graphics: 'Intel® Iris Xe Graphics',
      display: '14-inch, FHD (1920 x 1080) 16:9 LCD Panel',
      memory: '16GB LPDDR4X',
      storage: '512GB M.2 NVMe™ PCIe® 3.0 SSD',
    ),
    price: 799.99,
    count: 960,
  ),
  Product(
    id: '10',
    brand: 'Acer',
    storeId: '2',
    storeName: 'Acer Official Store',
    storeLogo: 'https://herdaynote.github.io/DevStoreAPI/logo/acer.webp',
    model: 'TravelMate P2',
    type: 'P246M-M-75YZ',
    description:
        'With the TravelMate P2, it has never been easier to work away from the office. Step up your productivity through a combination of increased processing power, portability, and durability bundled with a wide range of handy business features and advanced connectivity options. For the professional on the road, there’s no better choice.',
    image: 'https://herdaynote.github.io/DevStoreAPI/images/travelmate_p2.webp',
    imageThumbnail:
        'https://herdaynote.github.io/DevStoreAPI/thumbnails/travelmate_p2.webp',
    specification: Specification(
      os: 'Windows 10 Pro',
      processor: 'Intel® Core™ i7-4712MQ 2.30 GHz Quad-core (4 Core™)',
      graphics: 'Intel® HD Graphics 4600',
      display: '14-inch, (1366 x 768) 16:9 LCD Panel',
      memory: '4GB DDR3L',
      storage: 'HDD 1TB',
    ),
    price: 679.99,
    count: 149,
  ),
  Product(
    id: '11',
    brand: 'Razer',
    storeId: '3',
    storeName: 'Razer Official Store',
    storeLogo: 'https://herdaynote.github.io/DevStoreAPI/logo/razer.webp',
    model: 'Razer Blade 15',
    type: 'Base Model',
    description:
        'Experience cutting-edge power with the newly released Intel® Core™ i7 processor, or upgrade it to a Core i9 for unrivalled performance to take on the most demanding gaming and creative tasks. Integrated Intel® Wi-Fi 6E AX210 (Gig+) delivers the next generation Wi-Fi technology for peak wireless gaming performance.',
    image:
        'https://herdaynote.github.io/DevStoreAPI/images/razer_blade_15.webp',
    imageThumbnail:
        'https://herdaynote.github.io/DevStoreAPI/thumbnails/razer_blade_15.webp',
    specification: Specification(
      os: 'Windows 10 Home',
      processor: '11th Gen Intel® Core™ i7-11800H 8 Core (2.3GHz / 4.6GHz)',
      graphics: 'NVIDIA® GeForce RTX 3070 (8GB GDDR6 VRAM)',
      display: '15.6 QHD 165Hz, 100% sRGB, 4.9 mm bezel, factory calibrated',
      memory: '16GB dual-channel DDR4-3200MHz (8GB x 2)',
      storage: '512GB SSD (M.2 NVMe PCIe 4.0 x4) + Open M.2 PCIe 4.0 x4 Slot',
    ),
    price: 2299.99,
    count: 61,
  ),
  Product(
    id: '12',
    brand: 'Razer',
    storeId: '3',
    storeName: 'Razer Official Store',
    storeLogo: 'https://herdaynote.github.io/DevStoreAPI/logo/razer.webp',
    model: 'Razer Book',
    type: 'UHD Touch 60Hz',
    description:
        'From a heritage of high-performance hardware comes a laptop that’s a productivity powerhouse. Its ultra-compact design and 13.4” bezel display is built for uncompromising mobility. Exceptional battery life of up to 10 hours and more keeps you working on your own hours. Plus, with an 11th Gen Intel® Core™ i5 or i7, you can efficiently multitask with responsiveness and focus, jumping between video calls, downloading and sharing files, and browsing multiple windows at once. Ready to get to work?',
    image: 'https://herdaynote.github.io/DevStoreAPI/images/razer_book.webp',
    imageThumbnail:
        'https://herdaynote.github.io/DevStoreAPI/thumbnails/razer_book.webp',
    specification: Specification(
      os: 'Windows 10 Home',
      processor: '11th Gen Intel® Core™ i7-1165G7 Quad-Core Processor',
      graphics: 'Intel® Iris® Xe Graphics',
      display: '13.4 UHD 60Hz',
      memory: '16GB DDR4 dual-channel (fixed)',
      storage: '512GB SSD NVMe',
    ),
    price: 1999.99,
    count: 177,
  ),
  Product(
    id: '13',
    brand: 'Razer',
    storeId: '3',
    storeName: 'Razer Official Store',
    model: 'Razer Blade Stealth 13',
    storeLogo: 'https://herdaynote.github.io/DevStoreAPI/logo/razer.webp',
    type: 'Base Model',
    description:
        'Enter the next evolution of ultra-mobility and extreme performance. Utilizing the latest and greatest 11th gen Intel® Core™ i7 processor at 28W and a powerful GeForce® GTX 1650 Ti, you’ll rip through games and content creation tasks. Featuring the world’s fastest 13.3” 120Hz Full HD display for buttery smooth visuals or an all new OLED touch display - the Razer Blade Stealth 13 combines portability and style, with performance that’s perfect for gaming and productivity.',
    image:
        'https://herdaynote.github.io/DevStoreAPI/images/razer_blade_13.webp',
    imageThumbnail:
        'https://herdaynote.github.io/DevStoreAPI/thumbnails/razer_blade_13.webp',
    specification: Specification(
      os: 'Windows 10 Home',
      processor: '11th Gen Intel® Core™ i7-1165G7 Quad-Core Processor',
      graphics: 'NVIDIA® GeForce GTX 1650 Ti Max-Q (4GB GDDR6 VRAM)',
      display: '13.3 Full HD Matte 120Hz',
      memory: '16GB DDR4 dual-channel (fixed)',
      storage: '512GB SSD NVMe',
    ),
    price: 1699.99,
    count: 24,
  ),
  Product(
    id: '14',
    brand: 'Razer',
    storeId: '3',
    storeName: 'Razer Official Store',
    storeLogo: 'https://herdaynote.github.io/DevStoreAPI/logo/razer.webp',
    model: 'Razer Blade 14',
    type: 'Base Model',
    description:
        'For those who want all or nothing, go all out with the Razer Blade 14—the ultimate AMD gaming laptop in every way imaginable. From its ultra-powerful CPU to its graphics, its fast display to its portability, we’ve maxed out all aspects of the Razer Blade 14 to bring you an uncompromising experience that can’t be beat.',
    image:
        'https://herdaynote.github.io/DevStoreAPI/images/razer_blade_14.webp',
    imageThumbnail:
        'https://herdaynote.github.io/DevStoreAPI/thumbnails/razer_blade_14.webp',
    specification: Specification(
      os: 'Windows 10 Home',
      processor: 'AMD Ryzen™ 9 5900HX Processor',
      graphics: 'NVIDIA® GeForce RTX™ 3060 (6GB VRAM)',
      display: '14-inch FHD 144Hz, 1920 x 1080',
      memory: '16GB DDR4-3200MHz (Fixed Onboard)',
      storage: '1TB SSD (M.2 NVMe PCIe 3.0 x4)',
    ),
    price: 1799.99,
    count: 513,
  ),
  Product(
    id: '15',
    brand: 'Razer',
    storeId: '3',
    storeName: 'Razer Official Store',
    storeLogo: 'https://herdaynote.github.io/DevStoreAPI/logo/razer.webp',
    model: 'Razer Blade 17',
    type: 'Base Model',
    description:
        'Get the ultimate gaming and viewing experience with a huge 17.3” screen that barely has any bezels and is factory-calibrated for color accuracy and quality. With options for a Full HD, QHD, or UHD display, enjoy silky-smooth refresh rates no matter what choice you make.',
    image:
        'https://herdaynote.github.io/DevStoreAPI/images/razer_blade_17.webp',
    imageThumbnail:
        'https://herdaynote.github.io/DevStoreAPI/thumbnails/razer_blade_17.webp',
    specification: Specification(
      os: 'Windows 10 Home',
      processor:
          '2.3GHz 8-core Intel i7-11800H processor, Turbo Boost up to 4.6GHz, with 24MB of Cache',
      graphics: 'NVIDIA® GeForce® RTX 3060 (6GB DDR6 VRAM)',
      display:
          '17.3 FHD 360Hz, 100% sRGB, 6mm bezels, individually factory calibrated, 3ms Response Rate',
      memory: '16GB DDR4 3200MHz dual-channel memory (slotted)',
      storage:
          '1TB PCIe Gen4 NVMe upgradeable to 4TB + Open M.2 Slot (Supports 2-sided NVMe Drive), upgradeable to 4TB SSD',
    ),
    price: 2499.99,
    count: 329,
  ),
  Product(
    id: '16',
    brand: 'Apple',
    storeId: '4',
    storeName: 'Apple Official Store',
    storeLogo: 'https://herdaynote.github.io/DevStoreAPI/logo/apple.webp',
    model: 'Macbook Air 13',
    type: 'Base Model',
    description:
        'Our thinnest, lightest notebook, completely transformed by the Apple M1 chip. CPU speeds up to 3.5x faster. GPU speeds up to 5x faster. Our most advanced Neural Engine for up to 9x faster machine learning. The longest battery life ever in a MacBook Air. And a silent, fanless design. This much power has never been this ready to go.',
    image: 'https://herdaynote.github.io/DevStoreAPI/images/macbook_air.webp',
    imageThumbnail:
        'https://herdaynote.github.io/DevStoreAPI/thumbnails/macbook_air.webp',
    specification: Specification(
      os: 'macOS',
      processor: 'Apple M1 Chip',
      graphics: 'Apple M1 Chip',
      display:
          '13.3-inch (diagonal) LED-backlit display with IPS technology; 2560-by-1600 native resolution at 227 pixels per inch with support for millions of colors',
      memory: '8GB unified memory',
      storage: '256GB NVMe',
    ),
    price: 999,
    count: 739,
  ),
  Product(
    id: '17',
    brand: 'Apple',
    storeId: '4',
    storeName: 'Apple Official Store',
    storeLogo: 'https://herdaynote.github.io/DevStoreAPI/logo/apple.webp',
    model: 'Macbook Pro 13',
    type: 'Base Model',
    description:
        'The Apple M1 chip gives the 13‑inch MacBook Pro speed and power beyond belief. With up to 2.8x CPU performance. Up to 5x the graphics speed. Our most advanced Neural Engine for up to 11x faster machine learning. And up to 20 hours of battery life — the longest of any Mac ever. It’s our most popular pro notebook, taken to a whole new level.',
    image: 'https://herdaynote.github.io/DevStoreAPI/images/macbook_pro.webp',
    imageThumbnail:
        'https://herdaynote.github.io/DevStoreAPI/thumbnails/macbook_pro.webp',
    specification: Specification(
      os: 'macOS',
      processor: 'Apple M1 Chip',
      graphics: 'Apple M1 Chip',
      display:
          '13.3-inch (diagonal) LED-backlit display with IPS technology; 2560-by-1600 native resolution at 227 pixels per inch with support for millions of colors',
      memory: '8GB unified memory',
      storage: '256GB NVMe',
    ),
    price: 1299,
    count: 5,
  ),
];
