class OnboardingModel {
  final String img;
  final String title;
  final int index;
  OnboardingModel({required this.img, required this.title, required this.index});
  
  
  static List<OnboardingModel> items = [
    OnboardingModel(img: "assets/images/onboarding/doctor1.png", title: "Consult only with a doctor you trust", index: 0),
    OnboardingModel(img: "assets/images/onboarding/doctor2.png", title: "Find a lot of specialist doctors in one place", index: 1),
    OnboardingModel(img: "assets/images/onboarding/doctor3.png", title: "Get connect our Online Consultation", index: 2),
  ];
}