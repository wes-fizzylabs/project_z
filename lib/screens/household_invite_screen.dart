import 'package:flutter/material.dart';

class HouseholdInviteScreen extends StatefulWidget {
  const HouseholdInviteScreen({super.key});

  @override
  State<HouseholdInviteScreen> createState() => _HouseholdInviteScreenState();
}

class _HouseholdInviteScreenState extends State<HouseholdInviteScreen> {
  final TextEditingController _emailController = TextEditingController();
  final FocusNode _emailFocusNode = FocusNode();

  @override
  void dispose() {
    _emailController.dispose();
    _emailFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    
    return Scaffold(
      backgroundColor: colorScheme.surface,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            // Scrollable content area
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height - 
                              MediaQuery.of(context).viewInsets.bottom - 
                              MediaQuery.of(context).padding.top - 
                              MediaQuery.of(context).padding.bottom - 200,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 40),
                      
                      // Header Section
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Let\'s get everyone onboard!',
                              style: theme.textTheme.headlineMedium?.copyWith(
                                fontWeight: FontWeight.w700,
                                color: colorScheme.onSurface,
                              ),
                            ),
                            const SizedBox(height: 8),
                          ],
                        ),
                      ),
                      
                      // Center-aligned subtitle
                      Text(
                        'Invite other members to join your household. You can always add more later.',
                        style: theme.textTheme.bodyLarge?.copyWith(
                          color: colorScheme.onSurface.withValues(alpha: 0.7),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      
                      const SizedBox(height: 48),
                      
                      // Email Input Section
                      Container(
                        decoration: BoxDecoration(
                          color: colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: colorScheme.outline.withValues(alpha: 0.2),
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Email address',
                                style: theme.textTheme.labelLarge?.copyWith(
                                  color: colorScheme.onSurface.withValues(alpha: 0.8),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 12),
                              TextField(
                                controller: _emailController,
                                focusNode: _emailFocusNode,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  hintText: 'Enter email address',
                                  hintStyle: theme.textTheme.bodyLarge?.copyWith(
                                    color: colorScheme.onSurface.withValues(alpha: 0.5),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: colorScheme.outline.withValues(alpha: 0.3),
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: colorScheme.outline.withValues(alpha: 0.3),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: Color(0xFF4CAF50),
                                      width: 2,
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: colorScheme.surface,
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 16,
                                  ),
                                ),
                                style: theme.textTheme.bodyLarge?.copyWith(
                                  color: colorScheme.onSurface,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            
            // Fixed bottom section with buttons and progress
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  // Navigation Buttons
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () => Navigator.of(context).pop(),
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            side: BorderSide(
                              color: colorScheme.outline.withValues(alpha: 0.3),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            'Back',
                            style: theme.textTheme.labelLarge?.copyWith(
                              color: colorScheme.onSurface.withValues(alpha: 0.8),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: _handleNext,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF4CAF50),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 0,
                          ),
                          child: Text(
                            'Next',
                            style: theme.textTheme.labelLarge?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 24),
                  
                  // Progress Indicator
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildProgressDot(isActive: true),
                          const SizedBox(width: 8),
                          _buildProgressDot(isActive: true),
                          const SizedBox(width: 8),
                          _buildProgressDot(isActive: false),
                          const SizedBox(width: 8),
                          _buildProgressDot(isActive: false),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'Step 2 of 4',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurface.withValues(alpha: 0.6),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProgressDot({required bool isActive}) {
    final colorScheme = Theme.of(context).colorScheme;
    const lightGreen = Color(0xFF4CAF50);
    
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color: isActive ? lightGreen : colorScheme.outline.withValues(alpha: 0.3),
        shape: BoxShape.circle,
      ),
    );
  }

  void _handleNext() {
    final email = _emailController.text.trim();
    
    if (email.isEmpty) {
      _showError('Please enter an email address');
      return;
    }
    
    if (!_isValidEmail(email)) {
      _showError('Please enter a valid email address');
      return;
    }
    
    // TODO: Implement navigation to next screen
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Invitation Sent'),
        content: Text('Invitation sent to: $email'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  bool _isValidEmail(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red.shade600,
      ),
    );
  }
}