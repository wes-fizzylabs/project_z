enum AccountType {
  individual,
  household,
}

extension AccountTypeExtension on AccountType {
  String get title {
    switch (this) {
      case AccountType.individual:
        return 'Just me';
      case AccountType.household:
        return 'My household';
    }
  }

  String get subtitle {
    switch (this) {
      case AccountType.individual:
        return 'Set up an individual account. You can always add other members in the future.';
      case AccountType.household:
        return 'Add 2 or more individuals up front to set up your household.';
    }
  }

  String get iconPath {
    switch (this) {
      case AccountType.individual:
        return 'assets/icons/person.png';
      case AccountType.household:
        return 'assets/icons/household.png';
    }
  }
}