import 'package:flutter/material.dart';
import 'package:meerut_skill/customwidgets/CustomDocuments/CustomDocuments.dart';

class HomeLoanPage extends StatefulWidget {
  const HomeLoanPage({super.key});

  @override
  State<HomeLoanPage> createState() => _HomeLoanPageState();
}

class _HomeLoanPageState extends State<HomeLoanPage> {
  // Personal Info Controllers
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _dobDayController = TextEditingController();
  final TextEditingController _dobMonthController = TextEditingController();
  final TextEditingController _dobYearController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _maritalStatusController =
      TextEditingController();
  final TextEditingController _fathersNameController = TextEditingController();
  final TextEditingController _mothersNameController = TextEditingController();
  final TextEditingController _spouseNameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _emailAddressController = TextEditingController();
  final TextEditingController _currentAddressController =
      TextEditingController();
  final TextEditingController _permanentAddressController =
      TextEditingController();

  // Identity Info Controllers
  final TextEditingController _panNumberController = TextEditingController();
  final TextEditingController _aadhaarNumberController =
      TextEditingController();

  // Employment Info Controllers
  final TextEditingController _companyNameController = TextEditingController();
  final TextEditingController _jobTitleController = TextEditingController();
  final TextEditingController _workExperienceController =
      TextEditingController();
  final TextEditingController _monthlyIncomeController =
      TextEditingController();

  // Loan Info Controllers
  final TextEditingController _amountRequiredController =
      TextEditingController();
  final TextEditingController _loanTenureController = TextEditingController();
  final TextEditingController _loanPurposeController = TextEditingController();
  final TextEditingController _interestTypeController = TextEditingController();

  String? _idProofType = 'PAN';
  String? _employmentType = 'Salaried';

  @override
  void dispose() {
    _fullNameController.dispose();
    _dobDayController.dispose();
    _dobMonthController.dispose();
    _dobYearController.dispose();
    _genderController.dispose();
    _maritalStatusController.dispose();
    _fathersNameController.dispose();
    _mothersNameController.dispose();
    _spouseNameController.dispose();
    _phoneNumberController.dispose();
    _emailAddressController.dispose();
    _currentAddressController.dispose();
    _permanentAddressController.dispose();
    _panNumberController.dispose();
    _aadhaarNumberController.dispose();
    _companyNameController.dispose();
    _jobTitleController.dispose();
    _workExperienceController.dispose();
    _monthlyIncomeController.dispose();
    _amountRequiredController.dispose();
    _loanTenureController.dispose();
    _loanPurposeController.dispose();
    _interestTypeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const TextStyle headerStyle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );

    const TextStyle labelStyle = TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: Color(0xFF555555),
    );

    return Scaffold(
      backgroundColor: const Color(0xFFF3F2F7),
      appBar: AppBar(
        backgroundColor: const Color(0xFF261947),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white, size: 28),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Home Loan\nApplication form",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 80,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        child: Column(
          children: [
            // Personal Information Card
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade300, width: 1.5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Personal Information:", style: headerStyle),
                  const SizedBox(height: 16),
                  _buildFormRow("Full Name", _fullNameController, labelStyle),
                  const SizedBox(height: 12),

                  // Date of Birth Row
                  Row(
                    children: [
                      const Text('Date of Birth', style: labelStyle),
                      const SizedBox(width: 8),
                      SizedBox(
                        width: 45,
                        height: 35,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey.shade400,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: TextField(
                            controller: _dobDayController,
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            maxLength: 2,
                            decoration: const InputDecoration(
                              hintText: 'DD',
                              counterText: '',
                              contentPadding: EdgeInsets.zero,
                              border: InputBorder.none,
                            ),
                            style: const TextStyle(fontSize: 14),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        child: Text(
                          '/',
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                      ),
                      SizedBox(
                        width: 45,
                        height: 35,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey.shade400,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: TextField(
                            controller: _dobMonthController,
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            maxLength: 2,
                            decoration: const InputDecoration(
                              hintText: 'MM',
                              counterText: '',
                              contentPadding: EdgeInsets.zero,
                              border: InputBorder.none,
                            ),
                            style: const TextStyle(fontSize: 14),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        child: Text(
                          '/',
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                      ),
                      SizedBox(
                        width: 65,
                        height: 35,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey.shade400,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: TextField(
                            controller: _dobYearController,
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            maxLength: 4,
                            decoration: const InputDecoration(
                              hintText: 'YYYY',
                              counterText: '',
                              contentPadding: EdgeInsets.zero,
                              border: InputBorder.none,
                            ),
                            style: const TextStyle(fontSize: 14),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Gender & Marital Status side-by-side
                  Row(
                    children: [
                      const Text('Gender', style: labelStyle),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Container(
                          height: 35,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey.shade400,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: TextField(
                            controller: _genderController,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 8,
                              ),
                              isDense: true,
                              border: InputBorder.none,
                            ),
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Text('Marital Status', style: labelStyle),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Container(
                          height: 35,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey.shade400,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: TextField(
                            controller: _maritalStatusController,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 8,
                              ),
                              isDense: true,
                              border: InputBorder.none,
                            ),
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  _buildFormRow(
                    "Father's Name",
                    _fathersNameController,
                    labelStyle,
                  ),
                  const SizedBox(height: 12),
                  _buildFormRow(
                    "Mother's Name",
                    _mothersNameController,
                    labelStyle,
                  ),
                  const SizedBox(height: 12),
                  _buildFormRow(
                    "Spouse's Name",
                    _spouseNameController,
                    labelStyle,
                  ),
                  const SizedBox(height: 4),
                  const Padding(
                    padding: EdgeInsets.only(left: 4.0),
                    child: Text(
                      "*Write N/A if the field is not applicable.",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF2B1D4F),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),

                  _buildFormRow(
                    "Phone Number",
                    _phoneNumberController,
                    labelStyle,
                    keyboardType: TextInputType.phone,
                  ),
                  const SizedBox(height: 12),
                  _buildFormRow(
                    "Email address",
                    _emailAddressController,
                    labelStyle,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 12),
                  _buildFormRow(
                    "Current address",
                    _currentAddressController,
                    labelStyle,
                    isMultiline: true,
                  ),
                  const SizedBox(height: 12),
                  _buildFormRow(
                    "Permanent address",
                    _permanentAddressController,
                    labelStyle,
                    isMultiline: true,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Identity Details Card
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade300, width: 1.5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Identity Details:", style: headerStyle),
                  const SizedBox(height: 16),
                  _buildFormRow("PAN Number", _panNumberController, labelStyle),
                  const SizedBox(height: 12),
                  _buildFormRow(
                    "Aadhaar Number",
                    _aadhaarNumberController,
                    labelStyle,
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 12),

                  const Text("ID Proof Type:", style: labelStyle),
                  const SizedBox(height: 8),
                  RadioGroup<String>(
                    groupValue: _idProofType,
                    onChanged: (value) {
                      setState(() {
                        _idProofType = value;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildRadioOption('PAN'),
                        _buildRadioOption('Aadhaar'),
                        _buildRadioOption('Passport'),
                        _buildRadioOption('License'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Employment Details Card
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade300, width: 1.5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Employment Details", style: headerStyle),
                  const SizedBox(height: 16),
                  const Text("Employment Type:", style: labelStyle),
                  const SizedBox(height: 8),
                  RadioGroup<String>(
                    groupValue: _employmentType,
                    onChanged: (value) {
                      setState(() {
                        _employmentType = value;
                      });
                    },
                    child: Row(
                      children: [
                        _buildRadioOption('Salaried'),
                        const SizedBox(width: 24),
                        _buildRadioOption('Self-employed'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  _buildFormRow(
                    "Company Name",
                    _companyNameController,
                    labelStyle,
                  ),
                  const SizedBox(height: 12),
                  _buildFormRow("Job Title", _jobTitleController, labelStyle),
                  const SizedBox(height: 12),
                  _buildFormRow(
                    "Work Experience",
                    _workExperienceController,
                    labelStyle,
                  ),
                  const SizedBox(height: 12),
                  _buildFormRow(
                    "Monthly Income",
                    _monthlyIncomeController,
                    labelStyle,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Loan Details Card
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade300, width: 1.5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Loan Details", style: headerStyle),
                  const SizedBox(height: 16),
                  _buildFormRow(
                    "Amount Required",
                    _amountRequiredController,
                    labelStyle,
                  ),
                  const SizedBox(height: 12),
                  _buildFormRow(
                    "Loan Tenure",
                    _loanTenureController,
                    labelStyle,
                  ),
                  const SizedBox(height: 12),
                  _buildFormRow(
                    "Loan Purpose",
                    _loanPurposeController,
                    labelStyle,
                  ),
                  const SizedBox(height: 12),
                  _buildFormRow(
                    "Interest Type",
                    _interestTypeController,
                    labelStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFormRow(
    String label,
    TextEditingController controller,
    TextStyle labelStyle, {
    bool isMultiline = false,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(label, style: labelStyle),
        const SizedBox(width: 8),
        Expanded(
          child: Container(
            height: isMultiline ? 60 : 35,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade400, width: 1),
              borderRadius: BorderRadius.circular(6),
            ),
            child: TextField(
              controller: controller,
              keyboardType: keyboardType,
              maxLines: isMultiline ? 3 : 1,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 8,
                ),
                isDense: true,
                border: InputBorder.none,
              ),
              style: const TextStyle(fontSize: 14, color: Colors.black87),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildRadioOption(String value) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Radio<String>(
          value: value,
          activeColor: Colors.black,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
        ),
        const SizedBox(width: 4),
        Text(
          value,
          style: const TextStyle(fontSize: 14, color: Colors.black87),
        ),
      ],
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
