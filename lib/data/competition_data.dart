List<Map<String, String>> getDataCompetitions(String category) {
  switch (category) {
    case "WDC 2025":
      return [
        {
          'image': 'assets/images/wdc_competitions.png',
          'title': 'WDC 2025',
          'deadline': 'March 8, 2025',
          'timeline': 'Deadline: February 17, 2025',
          'guidebook-link':
              'https://kemahasiswaan.itenas.ac.id/web-development-competition-2025/',
          'description':
              'Web Design Competition (WDC) adalah sebuah kompetisi dimana mahasiswa/i dalam sebuah tim yang terdiri dari maksimal tiga orang berlomba untuk menciptakan/merancang sistem serta desain visual informasi digital yang ditampilkan dalam situs web agar dapat mempermudah setiap pengguna web atau pencari informasi mendapatkan informasi yang jelas dan tepat. Web Development Competition (WDC) 2025 bertujuan untuk membuat atau menyampaikan informasi secara cepat dan dibuat sebagai sarana untuk menuangkan ide dalam menyajikan informasi yang terpercaya serta menarik untuk dibaca. Tema yang diangkat pada Web Development Competition 2025 ini yaitu,“StitchLoop: Where Every Thread Tells a New Story”.'
        },
      ];
    case "Hackaton 10":
      return [
        {
          'image': 'assets/images/hackathon 10_competitions.png',
          'title': 'Hackathon 10',
          'deadline': 'July 9-10, 2025',
          'timeline':
              'Pendaftaran Hackathon 10 : 6 - 17 Januari 2025, Technical Meeting : 18 Januari 2025,Deadline Pengumpulan Project : 3 Februari 2025',
          'guidebook link':
              'https://codefest.notion.site/Hackathon-10-Guidebook-17207b7d88a88043885fe558ec705745',
          'description':
              'Hackathon online yang bertujuan memperkenalkan teknologi Internet Computer dan mendukung transisi developer Web2 ke Web3. Terbuka untuk umum dengan total hadiah hingga Rp8 juta.'
        },
      ];
    case "MAPID WebGIS 2025":
      return [
        {
          'image': 'assets/images/mapidwebgis_competitions.png',
          'title': 'MAPID WebGIS 2025',
          'deadline': 'February 3, 2025',
          'timeline':
              'Pendaftaran & Pengumpulan Proposal: 7 Januari – 3 Februari 2025',
          'guidebook-link': 'mapid.co.id/MAPIDWGC2025',
          'description':
              'Kompetisi pengembangan solusi WebGIS dengan tema “Land Transformation for a Sustainable Future”. Total hadiah Rp25 juta dan akses eksklusif senilai Rp1 miliar untuk pengembangan WebGIS.'
        },
      ];
    case "TECHCOMFEST 2025":
      return [
        {
          'image': 'assets/images/techcomfest_competitions.png',
          'title': 'TECHCOMFEST 2025',
          'deadline': '13 Desember, 2024',
          'timeline': 'Deadline: 13 Desember, 2024',
          'guidebook-link':
              'https://techcomfest.ukmpcc.org/competition/ui-ux-design',
          'description':
              'UI/UX Design Competition merupakan kompetisi yang menantang para desainer untuk menciptakan solusi visual dan interaksi yang inovatif. Dalam lomba ini, peserta akan mengembangkan antarmuka yang tidak hanya menarik secara estetika, tetapi juga intuitif dan mudah digunakan.'
        },
      ];
    case "GENETIC 2025":
      return [
        {
          'image': 'assets/images/genetic2025_competitions.png',
          'title': 'GENETIC 2025',
          'deadline': '17 April, 2025',
          'timeline':
              'Pendaftaran Gelombang 1: 14 - 25 Februari 2025, Pendaftaran Gelombang 2: 26 Februari - 16 April 2025, Pengumpulan Proposal & Poster: 20 Februari - 17 April 2025, Seleksi Tahap 1: 19 April - 27 April 2025, Seleksi Tahap 2: 10 Mei - 18 Mei 2025, Technical Meeting: 27 Mei 2025, Final Day: 28 Mei 2025 ( Offline At Usm )',
          'guidebook-link': 'https://genetic2025.carrd.co/',
          'description':
              'GENETIC atau Generasi Teknologi Informasi Competitions merupakan ajang kompetisi yang memberikan kesempatan kepada peserta untuk mengembangkan inovasi digital di bidang teknologi.'
        },
      ];
    default:
      return [];
  }
}
