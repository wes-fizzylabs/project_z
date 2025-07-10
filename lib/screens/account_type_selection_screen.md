# iOS Account Type Selection Screen

## Feature Overview
Step one in the app sign-up/sign-in flow for iOS. Users select whether they're setting up an individual account or a household account.

## Screen Layout

### Header Section
- **Title**: "Who is this account for?"
  - Left-aligned with proper spacing
  - Use primary heading style
- **Subtitle**: Placeholder descriptive text
  - Center-aligned
  - Secondary text style

### Body Section - Account Type Options
Two selectable option cards with the following structure:

#### Option 1: "Just me"
- **Icon**: Left-aligned placeholder icon
- **Title**: "Just me"
- **Subtitle**: "Set up an individual account. You can always add other members in the future."
- **Behavior**: Tapping proceeds to next step

#### Option 2: "My household"
- **Icon**: Left-aligned placeholder icon  
- **Title**: "My household"
- **Subtitle**: "Add 2 or more individuals up front to set up your household."
- **Behavior**: Tapping proceeds to next step

### Footer Section
- **Progress Indicator**: Step indicator with light green coloring
- Shows current step in onboarding flow
- No next/back buttons needed

## UI Specifications

### Typography
- Main title: Left-aligned, prominent heading
- Subtitle: Center-aligned, secondary text
- Option titles: Bold, medium size
- Option subtitles: Regular weight, smaller size

### Layout
- Vertical stack layout
- Proper spacing between sections
- Option cards should be easily tappable
- Responsive design for different iPhone screen sizes

### Colors
- Light green progress indicator
- Standard iOS text colors
- Subtle card backgrounds for options

### Interactions
- Tap on option card navigates to next screen
- Visual feedback on tap (highlight/selection state)
- Smooth transitions between screens

## Implementation Notes

### File Structure
- Screen: `lib/screens/account_type_selection_screen.dart`
- Widgets: `lib/widgets/account_type_option_card.dart`
- Model: `lib/models/account_type.dart`

### iOS-Specific Considerations
- Use iOS-appropriate fonts and spacing
- Follow iOS Human Interface Guidelines
- Implement proper safe area handling
- Support iOS accessibility features

### Navigation
- Route name: '/account-type-selection'
- Navigation triggered by option selection
- Pass selected account type to next screen

## Testing Requirements
- Widget tests for option selection
- Integration tests for navigation flow
- iOS-specific UI tests in Xcode
- Accessibility testing with VoiceOver

## Assets Needed
- Placeholder icons for both options
- Progress indicator graphics
- Any custom fonts or color definitions