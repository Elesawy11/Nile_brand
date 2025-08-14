# Nile Bran
![pic1](https://github.com/user-attachments/assets/f9e10052-f044-49d6-8134-87890c8547a3)
# Demo
Welcome to the Nile Brand App repository! This Flutter app is designed to provide a seamless e-commerce experience, featuring API handling, authentication, shared preferences,payment, and more.

# Over View
A sophisticated eCommerce application built with Flutter, delivering a seamless and modern user experience across Android platforms. The app features an engaging start screen, secure OTP-based authentication, and robust API integration for dynamic content management. It supports three distinct user roles:
Admin: Oversees the entire app, with capabilities to monitor activities and manage brand visibility (enabling or disabling brands).
User: Can browse products, add them to the cart, make purchases, and leave comments.
Owner: Manages their brand’s content, including products and associated details.
With a responsive user interface, the app offers an interactive and flexible experience, catering to both shoppers and business owners alike.

# Features
- **API Handling**: Utilizes Dio for seamless handling of API requests, supporting GET, POST, DELETE, PUT, and update operations.
- **API Authentication**: Implements user authentication functionalities such as Sign In, Sign Up, Change Password, and Profile updates.
- **Professionally Shared Preferences**: Securely stores user data and preferences using shared preferences, ensuring a professional and reliable data storage solution.
- **Smooth Page Indicator**: Enhances user experience with a smooth page indicator for easy navigation within the app.
- **Page View**: Implements a page view for seamless scrolling through different sections or categories.
- **Reusable Components**: Promotes code reusability by incorporating reusable components for a more modular and maintainable codebase.
- **State Management (Cubit)**: Adopts the cubit pattern for efficient state management, ensuring a scalable and organized application architecture.
- **Stripe payment**.
- **Chats** between user and owner using firebase features.

# Project Structure 
```
lib/
├── core/
│   ├── constants/
│   ├── helpers/
│   ├── local_storage/
│   ├── models/
│   ├── network/
│   ├── routes/
│   ├── utils/
│   └── widgets/
├── features/
│   ├── feature_name/
│   │   ├── data/
│   │   │   ├── remote_data_source.dart
│   │   │   └── repository_implementation.dart
│   │   ├── domain/
│   │   │   ├── repository.dart
│   │   │   └── use_cases/
│   │   └── presentation/
│   │       ├── bloc/
│   │       ├── screens/
│   │       └── widgets/
│   └── ...
└── main.dart
```
# Packages Used
| Category          | Package                          | Purpose                                    |
|:------------------|:---------------------------------|:-------------------------------------------|
| Networking        | dio- Retrofit                    | For making API requests.                   |
| State Management  | flutter_bloc                     | For managing app state efficiently.        |
| Persistence       | shared_preferences               | To save token .                            |
| UI/UX             | flutter_screenutil, flutter_svg  | For responsive UI and SVG handling.        |
| Utilities         | infinite_scroll_pagination, fluttertoast | For pagination and user notifications. |
| error             | frezeed - json_seralizable       | error handling and cubit states            |
| navigation        | Go_router                        | control navigation in app                  |
| Other             | get_it                           | Dependency injection .                     |
