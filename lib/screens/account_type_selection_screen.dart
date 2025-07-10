import 'package:flutter/material.dart';
import '../models/account_type.dart';
import '../widgets/account_type_option_card.dart';
import 'household_invite_screen.dart';

class AccountTypeSelectionScreen extends StatefulWidget {
  const AccountTypeSelectionScreen({super.key});

  @override
  State<AccountTypeSelectionScreen> createState() => _AccountTypeSelectionScreenState();
}

class _AccountTypeSelectionScreenState extends State<AccountTypeSelectionScreen> {
  AccountType? selectedAccountType;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    
    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
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
                      'Who is this account for?',
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
                'Choose the option that best describes your setup',
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: colorScheme.onSurface.withValues(alpha: 0.7),
                ),
                textAlign: TextAlign.center,
              ),
              
              const SizedBox(height: 48),
              
              // Account Type Options
              Expanded(
                child: Column(
                  children: [
                    AccountTypeOptionCard(
                      accountType: AccountType.individual,
                      isSelected: selectedAccountType == AccountType.individual,
                      onTap: () => _handleAccountTypeSelection(AccountType.individual),
                    ),
                    AccountTypeOptionCard(
                      accountType: AccountType.household,
                      isSelected: selectedAccountType == AccountType.household,
                      onTap: () => _handleAccountTypeSelection(AccountType.household),
                    ),
                  ],
                ),
              ),
              
              // Progress Indicator
              Container(
                margin: const EdgeInsets.only(top: 24),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildProgressDot(isActive: true),
                        const SizedBox(width: 8),
                        _buildProgressDot(isActive: false),
                        const SizedBox(width: 8),
                        _buildProgressDot(isActive: false),
                        const SizedBox(width: 8),
                        _buildProgressDot(isActive: false),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Step 1 of 4',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: colorScheme.onSurface.withValues(alpha: 0.6),
                      ),
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 32),
            ],
          ),
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

  void _handleAccountTypeSelection(AccountType accountType) {
    setState(() {
      selectedAccountType = accountType;
    });
    
    // Add a small delay for visual feedback before navigation
    Future.delayed(const Duration(milliseconds: 300), () {
      if (mounted) {
        // Navigate to next screen based on account type
        _navigateToNextScreen(accountType);
      }
    });
  }

  void _navigateToNextScreen(AccountType accountType) {
    if (accountType == AccountType.household) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const HouseholdInviteScreen(),
        ),
      );
    } else {
      // TODO: Implement navigation for individual account type
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Individual Account Selected'),
          content: const Text('Navigation to individual setup not yet implemented'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }
}