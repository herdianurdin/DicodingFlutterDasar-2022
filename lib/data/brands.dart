class Brand {
  String id;
  String name;
  String logo;

  Brand({
    required this.id,
    required this.name,
    required this.logo,
  });
}

var brandList = [
  Brand(
    id: '1',
    name: 'Asus',
    logo: 'https://herdaynote.github.io/DevStoreAPI/logo/asus.webp',
  ),
  Brand(
    id: '2',
    name: 'Acer',
    logo: 'https://herdaynote.github.io/DevStoreAPI/logo/acer.webp',
  ),
  Brand(
    id: '3',
    name: 'Razer',
    logo: 'https://herdaynote.github.io/DevStoreAPI/logo/razer.webp',
  ),
  Brand(
    id: '4',
    name: 'Apple',
    logo: 'https://herdaynote.github.io/DevStoreAPI/logo/apple.webp',
  )
];
