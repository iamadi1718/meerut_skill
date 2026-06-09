import 'package:flutter/material.dart';
import 'package:meerut_skill/customwidgets/CustomDocuments/CustomDocuments.dart';

class Inquirepage extends StatelessWidget {
  const Inquirepage({super.key});

  @override
  Widget build(BuildContext context) {
    // FAQ Data
    final List<Map<String, String>> faqs = [
      {
        "question": "What are the eligibility criteria?",
        "answer": "Age,income,employment type, credit score, document require ",
      },
      {
        "question": "How do I apply for a loan?",
        "answer": "Age,income,employment type, credit score, document require ",
      },
      {
        "question": "How long does loan approval take?",
        "answer": "Age,income,employment type, credit score, document require ",
      },
      {
        "question": "What is the interest rate?",
        "answer": "Age,income,employment type, credit score, document require ",
      },
      {
        "question": "Is my personal data safe?",
        "answer": "Age,income,employment type, credit score, document require ",
      },
      {
        "question": "How do I contact customer support?",
        "answer": "Age,income,employment type, credit score, document require ",
      },
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                // Purple Header
                Container(
                  height: 180,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF2E1A5E), Color(0xFF5B42B6)],
                    ),
                  ),
                ),

                // White Curved Section
                Positioned(
                  top: 80,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 120,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(140),
                      ),
                    ),
                  ),
                ),

                // Floating Card (Inquiry Point Label)
                Positioned(
                  top: 45,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Container(
                      width: 150,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 8,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          "Inquiry Point",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2E1A5E),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // FAQs Section
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 8.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "FAQs",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2E1A5E),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // List of FAQ items
                  ...faqs.map(
                    (faq) => FaqItem(
                      question: faq["question"]!,
                      answer: faq["answer"]!,
                    ),
                  ),

                  const SizedBox(height: 32),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FaqItem extends StatefulWidget {
  final String question;
  final String answer;

  const FaqItem({super.key, required this.question, required this.answer});

  @override
  State<FaqItem> createState() => _FaqItemState();
}

class _FaqItemState extends State<FaqItem> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFE5E5E5), // Light grey background
        borderRadius: BorderRadius.circular(12),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: ExpansionTile(
          title: Text(
            widget.question,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
          trailing: Icon(
            _isExpanded ? Icons.remove : Icons.add,
            color: Colors.black87,
            size: 24,
          ),
          onExpansionChanged: (expanded) {
            setState(() {
              _isExpanded = expanded;
            });
          },
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.answer,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                    height: 1.4,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Uploaddocuments extends StatefulWidget {
  const Uploaddocuments({super.key});

  @override
  State<Uploaddocuments> createState() => _UploaddocumentsState();
}

class _UploaddocumentsState extends State<Uploaddocuments> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
      width: 406,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1, color: Colors.grey),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.25),
            blurRadius: 4,
            spreadRadius: 1,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Customdocuments(text: 'Aadhar Card'),
          Customdocuments(text: 'PAN Card'),
          Customdocuments(text: 'Property Papers'),
          Customdocuments(text: 'Salary slips'),
          Customdocuments(text: 'Bank Statements'),
          Customdocuments(text: 'NOC Certificates'),
          Customdocuments(text: 'Sale Deed'),
        ],
      ),
    );
  }
}
