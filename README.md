# foodbank

## Overview
The Food Bank Assistance App connects donors and volunteers with food banks, helping bridge the gap between community needs and resources. Users can donate items, volunteer for food banks, and manage account settings through a user-friendly interface.

## Features
Account Management:
User registration and login.
Account page with user details, volunteer status, and edit options.

Donation:
Choose a food bank to donate to.
Confirm donation details via popup messages.
Reset the donation page after submission for ease of continued donations.

Volunteering:
Select food banks to volunteer for.
Receive verification email.
Provide additional information required for volunteering via a popup form.

Password Reset:
Users can reset forgotten passwords via email.

## Screens and Functionality

Login 
- Existing users can log in with email and password.
- Links to the Forgot Password page.
- Register page

Register
- New users to register by providing name, email, password.

Forgot Password
- Reset password by submitting the registered email.

Home Screen
- Overview and links to all main features.

Donation Page
- Users can select a food bank from a list and specify items for donation.
- Confirms donation via a dialog.

Volunteer Page
- Choose a food bank to volunteer with and confirm details.
- Shows a popup for verification via email and requests additional information if needed.

Account Page
- Displays user information, volunteer status, and account details.
- Options to edit username and password, with a separate screen for modifications.

Edit Details Page
- Allows users to update their username and password.
- Validates password confirmation and provides success feedback.

## Technology Stack
Framework: Flutter (Dart)
Platform: Android, iOS
UI Components: Material Design for UI elements such as Snackbars, Dialogs, Cards, and Elevated Buttons.

## Setup and Installation
Prerequisites:

Flutter SDK: Install from flutter.dev.
Dart SDK (comes with Flutter).

Clone the Repository:
git clone https://github.com/RR21-R7/Foodbridge.git

Install Dependencies:
flutter pub get

Run the App:

Connect an Android or iOS emulator, or a physical device.
Run the following command:
flutter run

## Folder Structure
lib/
├── main.dart          
├── pages/             
│   ├── AccountPage.dart
│   ├── DonateScreen.dart
│   ├── EditDetailsPage.dart
│   ├── FoodBank.dart
│   ├── FoodBankDetailScreen.dart
│   ├── FoodBankDetailScreen.dart
│   ├── ForgotPasswordPage.dart
│   ├── HomeScreen.dart
│   ├── LoginPage.dart
│   ├── main.dart
│   ├── RegisterPage.dart
│   └──VolunteerScreen.dart
└── widgets/          

## Contributing

Fork the repository.
Create a new branch for your feature (git checkout -b feature-donate).
Commit your changes (git commit -am 'Add Donate feature').
Push to the branch (git push origin feature-donate).
Open a pull request.

## License
This project is licensed under the MIT License.
