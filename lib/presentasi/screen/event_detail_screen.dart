import 'package:flutter/material.dart';

class EventDetailScreen extends StatefulWidget {
  const EventDetailScreen({super.key});

  @override
  State<EventDetailScreen> createState() => _EventDetailScreenState();
}

class _EventDetailScreenState extends State<EventDetailScreen> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Container(
        width: double.infinity,
        decoration: _buildBackgroundGradient(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30),
              _buildImageBanner(),
              const SizedBox(height: 20),
              _buildRegistrationInfo(),
              const SizedBox(height: 20),
              _buildDescription(),
              const SizedBox(height: 20),
              _buildLocationSection(),
              const SizedBox(height: 20),
              _buildDateSection(),
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
        'Baparekraf Developer Day 2023',
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
          'assets/images/event_1.png',
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
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(14),
      width: 370,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Description',
            style: TextStyle(
              fontFamily: 'Gabarito',
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 5),
          Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry...',
            style: TextStyle(
              fontFamily: 'Gabarito',
              fontSize: 13,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLocationSection() {
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
              gradient: const LinearGradient(
                colors: [Color(0xff355F86), Color(0xff352B70)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.location_on,
                  color: Colors.white,
                ),
                const Text(
                  'Gedung 574 Bekasi Barat',
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
          _locationDetail(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy '),
        ],
      ],
    );
  }

  Widget _buildDateSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _guidebookHeader(),
        _guidebookLink(),
      ],
    );
  }

  Widget _buildTimelineSection() {
    return Container(
      alignment: Alignment.centerLeft,
      width: 370,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _timelineItem(
            title: 'Registration Deadline',
            date: '24 March 2025',
            previousDate: '24 April 2025',
            isLast: false,
          ),
          _timelineItem(
            title: 'Project Submission Deadline',
            date: '30 March 2025',
            previousDate: '24 March 2025',
            isLast: true,
          ),
          const SizedBox(height: 20),
          // ElevatedButton(
          //   style: ElevatedButton.styleFrom(
          //     backgroundColor: Colors.white.withOpacity(0.4),
          //     minimumSize: const Size(370, 50),
          //     side: BorderSide(color: Colors.white.withOpacity(0.5)),
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(10),
          //     ),
          //   ),
          //   onPressed: () {},
          //   child: const Text(
          //     'Timeline Detail',
          //     style: TextStyle(fontSize: 18, color: Colors.white),
          //   ),
          // ),
        ],
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
      onPressed: () {},
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

  BoxDecoration _glassCardDecoration() {
    return BoxDecoration(
      color: Colors.white.withOpacity(0.1),
      border: Border.all(color: Colors.white.withOpacity(0.5)),
      borderRadius: BorderRadius.circular(10),
    );
  }

  Widget _locationDetail(
    String title,
  ) {
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
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _guidebookHeader() {
    return Container(
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
          Icon(Icons.calendar_month, color: Colors.white),
          SizedBox(width: 10),
          Text(
            'Event Date',
            style: TextStyle(
              fontFamily: 'Gabarito',
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _guidebookLink() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      alignment: Alignment.centerLeft,
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
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '30 March 2025',
            style: TextStyle(
              fontFamily: 'Gabarito',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          // SizedBox(
          //   height: 5,
          // ),
          Text(
            'Time : 09:00',
            style: TextStyle(
              fontFamily: 'Gabarito',
              fontSize: 11,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _timelineItem({
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
}
