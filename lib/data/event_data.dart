List<Map<String, String>> getDataEvents(String category) {
  switch (category) {
    case "INTI Universe 2025":
      return [
        {
          'image': 'assets/images/inti_universe_events.png',
          'title': 'INTI Universe 2025',
          'Event date': 'July 9-10, 2025',
          'address': 'Jiexpo',
          'full-address':
              'Jl. Benyamin Suaeb, Kemayoran District, Central Jakarta City',
          'timeline': 'July 9-10, 2025',
          'description':
              'INTI (Indonesia Technology & Innovation) is the largest B2B technology and innovation event in Indonesia, serving as a comprehensive platform that brings together industry leaders, innovators, startups, and policymakers to explore and showcase cutting-edge technologies and solutions. The event encompasses various sectors, including robotics, cybersecurity, mobility, broadcasting, electronics, and startups, fostering collaboration and driving digital transformation across the nation.'
        },
      ];
    case "CSID 2025":
      return [
        {
          'image': 'assets/images/csid_events.png',
          'title': 'The CSID Conference',
          'Event date': 'July 9-10, 2025',
          'address': 'Ritz Carlton',
          'full-address': 'Ritz Carlton Pacific Place, Jakarta',
          'timeline': 'July 9-10, 2025',
          'description':
              'The CyberSecIndonesia Conference 2025 (CSID 2025) is a premier cybersecurity event scheduled for July 9–10, 2025, in Jakarta. Organized by CyberSecAsia.org, it serves as a strategic platform for security professionals across various sectors in Indonesia to engage in in-depth discussions on the rapidly evolving cybersecurity landscape.​'
        },
      ];
    case "DTI-CX 2025":
      return [
        {
          'image': 'assets/images/dticx_events.png',
          'title': 'DTI-CX 2025',
          'Event date': 'August 6-7, 2025',
          'address': 'JICC',
          'full-address': 'JICC Senayan, Jakarta Pusat',
          'timeline': 'August 6-7, 2025',
          'description':
              'The Digital Transformation Indonesia Conference & Expo (DTI-CX) is Indonesia premier annual event dedicated to advancing digital transformation across key industry sectors. Scheduled for August 6–7, 2025, at the Jakarta Convention Center, DTI-CX serves as a strategic platform connecting technology solution providers with stakeholders from government, state-owned enterprises (SOEs), and the private sector.​'
        },
      ];
    case "TECH 2025":
      return [
        {
          'image': 'assets/images/tech2025_events.png',
          'title': 'TECH 2025',
          'Event date': 'June 7-8, 2025',
          'address': 'Bali',
          'full-address': 'Hotel Santika Seminyak, Bali',
          'timeline': 'June 7-8, 2025',
          'description':
              'TECH 2025 is the “Frontiers of Innovation” international conference organized by Experts AER, focusing on technology innovations, environment, climate change and healthcare in a face‑to‑face setting. it offers poster presentations, keynote talks, complementary workshops, and panel sessions to foster interdisciplinary collaboration and knowledge exchange.​'
        },
      ];
    case "IDTEx 2025":
      return [
        {
          'image': 'assets/images/inti_universe_events.png',
          'title': 'IDTEx 2025',
          'Event date': 'Sept. 2-4, 2025',
          'address': 'JIExpo',
          'full-address':
              'Jl. Benyamin Suaeb, Kemayoran District, Central Jakarta City',
          'timeline': 'September 2-4, 2025',
          'description':
              'The event aims to bring together technology leaders, startups, and enterprises to present and explore the future of various industries through digital innovation. Attendees can expect to gain insights into emerging products and how these technologies can impact business growth.​'
        },
      ];
    default:
      return [];
  }
}
