import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CompetitionDetailScreen extends StatefulWidget {
  const CompetitionDetailScreen({super.key});

  @override
  State<CompetitionDetailScreen> createState() =>
      _CompetitionDetailScreenState();
}

class _CompetitionDetailScreenState extends State<CompetitionDetailScreen> {
  bool isExpanded = false;
  bool _showFullTimeline = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Container(
        width: double.infinity,
        decoration: _buildBackgroundGradient(),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            children: [
              _buildImageBanner(),
              const SizedBox(height: 20),
              _buildRegistrationInfo(),
              const SizedBox(height: 20),
              _buildDescription(),
              const SizedBox(height: 20),
              _buildCategorySection(),
              const SizedBox(height: 20),
              _buildGuidebookSection(),
              const SizedBox(height: 35),
              _buildTimelineSection(),
              const SizedBox(height: 50),
              _buildRegisterButton(),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text(
        'ICOMFEST 2025',
        style: TextStyle(
          fontSize: 20,
          fontFamily: 'Gabarito',
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
      ),
      backgroundColor: const Color(0xff3A3393),
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }

  BoxDecoration _buildBackgroundGradient() {
    return const BoxDecoration(
      gradient: LinearGradient(
        colors: [Color(0xff3F369A), Color(0xff070942)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    );
  }

  Widget _buildImageBanner() {
    return Container(
      width: 370,
      height: 370,
      padding: const EdgeInsets.all(10),
      decoration: _glassCardDecoration(),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          'assets/images/ic_icomfest.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildRegistrationInfo() {
    return Container(
      alignment: Alignment.center,
      width: 370,
      height: 40,
      decoration: BoxDecoration(
        color: const Color(0xff35C233).withOpacity(0.3),
        border: Border.all(color: Colors.white.withOpacity(0.5)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Text(
        'Registration is open until 24 March 2025',
        style: TextStyle(
          fontFamily: 'Gabarito',
          fontSize: 15,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildDescription() {
    return _sectionContainer(
      title: 'Description',
      content:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry...',
    );
  }

  Widget _buildCategorySection() {
    return Column(
      children: [
        GestureDetector(
          onTap: () => setState(() => isExpanded = !isExpanded),
          child: Container(
            width: 370,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(
                colors: [
                  const Color(0xffF9EF91).withOpacity(0.5),
                  const Color(0xff352B70)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Competitions Categories',
                  style: TextStyle(
                    fontFamily: 'Gabarito',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                Icon(
                  isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
        if (isExpanded) ...[
          const SizedBox(height: 8),
          _buildCategoryItem('UI/UX Application', 'Middle School'),
          _buildCategoryItem('Web Design', 'High School'),
          _buildCategoryItem('Design Poster', 'High School'),
        ],
      ],
    );
  }

  Widget _buildCategoryItem(String title, String level) {
    return Container(
      width: 370,
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.all(12),
      decoration: _glassCardDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'Gabarito',
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          Text(
            level,
            style: TextStyle(
              fontFamily: 'Gabarito',
              fontSize: 13,
              color: Colors.white.withOpacity(0.8),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGuidebookSection() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          width: 370,
          height: 40,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color(0xFFFFFFFF).withOpacity(0.1),
                const Color(0xFF8D4F70),
              ],
            ),
            border: Border.all(color: Colors.white.withOpacity(0.7), width: 2),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: const Row(
            children: [
              Icon(Icons.link, color: Colors.white),
              SizedBox(width: 10),
              Text(
                'Guide Book Link',
                style: TextStyle(
                  fontFamily: 'Gabarito',
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 370,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.white.withOpacity(0.7), width: 2),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: Center(
            child: InkWell(
              onTap: () async {
                final url = Uri.parse('https://s.id/ICOMFESTGUIDEBOOK');
                if (await canLaunchUrl(url)) {
                  await launchUrl(url, mode: LaunchMode.externalApplication);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: const Text(
                's.id/ICOMFESTGUIDEBOOK',
                style: TextStyle(
                  fontFamily: 'Gabarito',
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTimelineSection() {
    return Container(
      width: 370,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTimelineItem(
            title: 'Registration Deadline',
            date: '24 March 2025',
            previousDate: '24 April 2025',
            isLast: false,
          ),
          _buildTimelineItem(
            title: 'Project Submission Deadline',
            date: '30 March 2025',
            previousDate: '24 March 2025',
            isLast: !_showFullTimeline,
          ),
          if (_showFullTimeline) ...[
            _buildTimelineItem(
              title: 'Final Announcement',
              date: '01 May 2025',
              previousDate: '30 March 2025',
              isLast: false,
            ),
            _buildTimelineItem(
              title: 'Offline Final Round',
              date: '02 May 2025',
              previousDate: '01 May 2025',
              isLast: false,
            ),
            _buildTimelineItem(
              title: 'Winner Announcement',
              date: '20 May 2025',
              previousDate: '12 May 2025',
              isLast: true,
            ),
          ],
          const SizedBox(height: 20),
          _buildTimelineToggleButton(),
        ],
      ),
    );
  }

  Widget _buildTimelineItem({
    required String title,
    required String date,
    required String previousDate,
    required bool isLast,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                ),
                Container(
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style: const TextStyle(
                fontFamily: 'Gabarito',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 34),
          child: Text(
            '$date - $previousDate',
            style: TextStyle(
              fontFamily: 'Gabarito',
              fontSize: 14,
              color: Colors.white.withOpacity(0.8),
            ),
          ),
        ),
        if (!isLast) ...[
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Container(
              width: 2,
              height: 30,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
        ],
      ],
    );
  }

  Widget _buildTimelineToggleButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white.withOpacity(0.4),
        minimumSize: const Size(370, 50),
        side: BorderSide(color: Colors.white.withOpacity(0.5)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () => setState(() => _showFullTimeline = !_showFullTimeline),
      child: Text(
        _showFullTimeline ? 'Hide Detail' : 'Timeline Detail',
        style: const TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }

  Widget _buildRegisterButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff2A2579),
        side: BorderSide(color: Colors.white.withOpacity(0.3), width: 2),
        minimumSize: const Size(370, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      onPressed: () => Navigator.pushNamed(context, '/registration'),
      child: const Text(
        'Register Now!',
        style: TextStyle(
          fontFamily: 'Gabarito',
          fontSize: 17,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _sectionContainer({required String title, required String content}) {
    return Container(
      width: 370,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'Gabarito',
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            content,
            style: const TextStyle(
              fontFamily: 'Gabarito',
              fontSize: 13,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  BoxDecoration _glassCardDecoration() {
    return BoxDecoration(
      color: Colors.white.withOpacity(0.1),
      border: Border.all(color: Colors.white.withOpacity(0.5)),
      borderRadius: BorderRadius.circular(10),
    );
  }
}
