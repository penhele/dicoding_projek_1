class DicodingShop {
  String shopName;
  double rating;
  String description;
  String price;
  List<String> imageUrls;

  DicodingShop({
    required this.shopName,
    required this.rating,
    required this.description,
    required this.price,
    required this.imageUrls,
  });
}

var shopList = [
  DicodingShop(
    shopName: 'Toko Sinaga', 
    rating: 4.5, 
    description: 'Beragam model pakaian tersedia di Toko Sinaga, mulai dari pakaian kasual untuk aktivitas sehari-hari hingga busana formal yang cocok untuk acara spesial. Setiap item dirancang dengan detail dan menggunakan bahan pilihan, memastikan kepuasan Anda dalam setiap pembelian.',
    price: '200000', 
    imageUrls: [
      'https://images.pexels.com/photos/12316917/pexels-photo-12316917.jpeg',
      'https://images.pexels.com/photos/769749/pexels-photo-769749.jpeg',
      'https://images.pexels.com/photos/1043148/pexels-photo-1043148.jpeg',
    ]
  ),
  DicodingShop(
    shopName: 'Toko Sianipar', 
    rating: 3.5, 
    description: 'Toko Sianipar menawarkan koleksi batik tradisional yang kaya akan sejarah dan keindahan budaya Indonesia. Setiap kain batik diproduksi dengan teknik tulis atau cap yang otentik, menonjolkan motif-motif khas dari berbagai daerah seperti Solo, Yogyakarta, dan Pekalongan. Dengan kualitas bahan yang nyaman dan desain elegan, batik dari Toko Sianipar sangat cocok untuk acara formal maupun kasual.',
    price: '150000', 
    imageUrls: [
      'https://images.pexels.com/photos/2728803/pexels-photo-2728803.jpeg',
      'https://images.pexels.com/photos/3988087/pexels-photo-3988087.jpeg'
    ]
  ),
  DicodingShop(
    shopName: 'Toko Harapan', 
    rating: 4.0, 
    description: 'Beragam model pakaian tersedia di Toko Harapan, mulai dari pakaian kasual untuk aktivitas sehari-hari hingga busana formal yang cocok untuk acara spesial. Setiap item dirancang dengan detail dan menggunakan bahan pilihan, memastikan kepuasan Anda dalam setiap pembelian.',
    price: '300000', 
    imageUrls: [
      'https://images.pexels.com/photos/1043148/pexels-photo-1043148.jpeg',
      'https://images.pexels.com/photos/1261422/pexels-photo-1261422.jpeg',
      'https://images.pexels.com/photos/1656684/pexels-photo-1656684.jpeg',
    ]
  ),
  DicodingShop(
    shopName: 'Toko Mandiri', 
    rating: 4.8, 
    description: 'Toko Mandiri dikenal dengan koleksi sepatu dan aksesoris fashion yang stylish. Setiap produk dirancang dengan tren terkini untuk memenuhi kebutuhan fashion para pelanggan yang selalu mengikuti mode.',
    price: '250000', 
    imageUrls: [
      'https://images.pexels.com/photos/5730956/pexels-photo-5730956.jpeg',
      'https://images.pexels.com/photos/6153367/pexels-photo-6153367.jpeg',
      'https://images.pexels.com/photos/5214139/pexels-photo-5214139.jpeg'
    ]
  ),
  DicodingShop(
    shopName: 'Toko Kencana', 
    rating: 4.2, 
    description: 'Toko Kencana menghadirkan batik modern dengan sentuhan inovasi untuk gaya sehari-hari. Motif-motif yang ditampilkan menggabungkan unsur tradisional dengan pola kontemporer, menciptakan tampilan yang segar dan trendi. Produk batik di Toko Kencana tidak hanya mencakup pakaian, tetapi juga aksesoris seperti tas, syal, dan dompet, sehingga pelanggan dapat mengekspresikan gaya dengan lebih beragam.',
    price: '180000', 
    imageUrls: [
      'https://images.pexels.com/photos/2741627/pexels-photo-2741627.jpeg',
      'https://images.pexels.com/photos/15272748/pexels-photo-15272748/free-photo-of-portrait-of-a-woman-wearing-a-headscarf.jpeg',
      'https://images.pexels.com/photos/14125003/pexels-photo-14125003.jpeg'
    ]
  ),
  DicodingShop(
    shopName: 'Toko Indah', 
    rating: 5.0, 
    description: 'Toko Indah dikenal sebagai pusat batik eksklusif yang mengutamakan kualitas premium. Setiap potongan kain batik dihasilkan oleh pengrajin berpengalaman dengan perhatian penuh terhadap detail. Toko ini juga menawarkan layanan khusus untuk pembuatan busana batik sesuai permintaan pelanggan, menjadikannya pilihan utama bagi mereka yang ingin tampil istimewa dengan sentuhan personal.',
    price: '100000', 
    imageUrls: [
      'https://images.pexels.com/photos/13722602/pexels-photo-13722602.jpeg',
      'https://images.pexels.com/photos/28855658/pexels-photo-28855658/free-photo-of-traditional-batik-craftswoman-in-action.jpeg',
      'https://images.pexels.com/photos/19794208/pexels-photo-19794208/free-photo-of-dressed-up-little-girl-showing-finger-heart-gesture.jpeg'
    ]
  ),
];