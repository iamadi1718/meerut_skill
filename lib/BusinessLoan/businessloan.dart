import 'package:flutter/material.dart';

class BusinessLoanPage extends StatefulWidget {
  const BusinessLoanPage({super.key});

  @override
  State<BusinessLoanPage> createState() => _BusinessLoanPageState();
}

class _BusinessLoanPageState extends State<BusinessLoanPage> {
  // Business Info Controllers
  final TextEditingController _businessNameController = TextEditingController();
  final TextEditingController _businessAddressController =
      TextEditingController();
  final TextEditingController _yearOfEstablishmentController =
      TextEditingController();
  final TextEditingController _gstNumberController = TextEditingController();
  final TextEditingController _udyamRegNoController = TextEditingController();
  final TextEditingController _industryTypeController = TextEditingController();

  // Owner Info Controllers
  final TextEditingController _ownerNameController = TextEditingController();
  final TextEditingController _panNumberController = TextEditingController();
  final TextEditingController _aadhaarNumberController =
      TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _emailAddressController = TextEditingController();

  // financial info controllers
  final TextEditingController _annualtournoverController =
      TextEditingController();
  final TextEditingController _netprofitController = TextEditingController();
  final TextEditingController _existingloanidController =
      TextEditingController();

  // loan info controllers
  final TextEditingController _amountrequiredController =
      TextEditingController();
  final TextEditingController _loantenureController = TextEditingController();
  final TextEditingController _loanpurposeController = TextEditingController();
  final TextEditingController _collateralController = TextEditingController();
  String? _businessType = 'Proprietorship';

  @override
  void dispose() {
    _businessNameController.dispose();
    _businessAddressController.dispose();
    _yearOfEstablishmentController.dispose();
    _gstNumberController.dispose();
    _udyamRegNoController.dispose();
    _industryTypeController.dispose();
    _ownerNameController.dispose();
    _panNumberController.dispose();
    _aadhaarNumberController.dispose();
    _phoneNumberController.dispose();
    _emailAddressController.dispose();
    _annualtournoverController.dispose();
    _netprofitController.dispose();
    _existingloanidController.dispose();
    _amountrequiredController.dispose();
    _loantenureController.dispose();
    _loanpurposeController.dispose();
    _collateralController.dispose();
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
          "Business Loan\nApplication form",
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
            // Business Information Card
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
                  const Text("Business Information:", style: headerStyle),
                  const SizedBox(height: 24),
                  _buildFormRow(
                    "Business Name",
                    _businessNameController,
                    labelStyle,
                  ),
                  const SizedBox(height: 12),

                  // Business Type section
                  const Text("Business Type", style: labelStyle),
                  const SizedBox(height: 8),
                  _buildBusinessTypeRadioGrid(),
                  const SizedBox(height: 12),

                  _buildFormRow(
                    "Business Address",
                    _businessAddressController,
                    labelStyle,
                    isMultiline: true,
                  ),
                  const SizedBox(height: 12),
                  _buildFormRow(
                    "Year of Establishment",
                    _yearOfEstablishmentController,
                    labelStyle,
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 12),
                  _buildFormRow("GST Number", _gstNumberController, labelStyle),
                  const SizedBox(height: 12),
                  _buildFormRow(
                    "Udyam Registration no.",
                    _udyamRegNoController,
                    labelStyle,
                  ),
                  const SizedBox(height: 12),
                  _buildFormRow(
                    "Industry Type",
                    _industryTypeController,
                    labelStyle,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Owner Information Card
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
                  const Text("Owner Information:", style: headerStyle),
                  const SizedBox(height: 16),
                  _buildFormRow("Owner Name", _ownerNameController, labelStyle),
                  const SizedBox(height: 12),
                  _buildFormRow("PAN Number", _panNumberController, labelStyle),
                  const SizedBox(height: 12),
                  _buildFormRow(
                    "Aadhaar Number",
                    _aadhaarNumberController,
                    labelStyle,
                    keyboardType: TextInputType.number,
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
                    "Email Address",
                    _emailAddressController,
                    labelStyle,
                    keyboardType: TextInputType.emailAddress,
                  ),
                ],
              ),
            ),
            //Financial Details card
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
                  const Text("Financial Details:", style: headerStyle),
                  const SizedBox(height: 16),
                  _buildFormRow(
                    "Annual Turnover",
                    _annualtournoverController,
                    labelStyle,
                  ),
                  const SizedBox(height: 12),
                  _buildFormRow("Net Profit", _netprofitController, labelStyle),
                  const SizedBox(height: 12),
                  _buildFormRow(
                    "Existing Loan ID",
                    _existingloanidController,
                    labelStyle,
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 4),
                  const Padding(
                    padding: EdgeInsets.only(left: 4.0),
                    child: Text(
                      "*Write N/A if the field is not applicable.",
                      style: TextStyle(fontSize: 12, color: Color(0xFF2B1D4F)),
                    ),
                  ),
                ],
              ),
            ),
            //Loan Details card
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
                  const Text("Loan Details:", style: headerStyle),
                  const SizedBox(height: 16),
                  _buildFormRow(
                    "Amount Required",
                    _amountrequiredController,
                    labelStyle,
                  ),
                  const SizedBox(height: 12),
                  _buildFormRow(
                    "Loan Tenure",
                    _loantenureController,
                    labelStyle,
                  ),
                  const SizedBox(height: 12),
                  _buildFormRow(
                    "Loan Purpose",
                    _loanpurposeController,
                    labelStyle,
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(height: 12),
                  _buildFormRow(
                    "Collateral (y/n)",
                    _collateralController,
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

  Widget _buildBusinessTypeRadioGrid() {
    return RadioGroup<String>(
      groupValue: _businessType,
      onChanged: (value) {
        setState(() {
          _businessType = value;
        });
      },
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Radio<String>(
                      value: 'Proprietorship',
                      activeColor: Colors.black,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      visualDensity: const VisualDensity(
                        horizontal: -4,
                        vertical: -4,
                      ),
                    ),
                    const SizedBox(width: 6),
                    const Text(
                      'Proprietorship',
                      style: TextStyle(fontSize: 15, color: Colors.black87),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Radio<String>(
                      value: 'Partnership',
                      activeColor: Colors.black,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      visualDensity: const VisualDensity(
                        horizontal: -4,
                        vertical: -4,
                      ),
                    ),
                    const SizedBox(width: 6),
                    const Text(
                      'Partnership',
                      style: TextStyle(fontSize: 15, color: Colors.black87),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Radio<String>(
                      value: 'LLP',
                      activeColor: Colors.black,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      visualDensity: const VisualDensity(
                        horizontal: -4,
                        vertical: -4,
                      ),
                    ),
                    const SizedBox(width: 6),
                    const Text(
                      'LLP',
                      style: TextStyle(fontSize: 15, color: Colors.black87),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Radio<String>(
                      value: 'Private Ltd.',
                      activeColor: Colors.black,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      visualDensity: const VisualDensity(
                        horizontal: -4,
                        vertical: -4,
                      ),
                    ),
                    const SizedBox(width: 6),
                    const Text(
                      'Private Ltd.',
                      style: TextStyle(fontSize: 15, color: Colors.black87),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
