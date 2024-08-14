class Job {
  String companyName;
  String jobTitle;
  String day;
  String applicantNo;
  String location;
  int price;
  String companyLogo;
  bool? isRecentJobs;
  bool? isPopular;
  String jobNature;
  String workingModel;
  String experienceLevel;
  String description;
  List<String> requirement;
  List<String> responsibilities;

  Job(
      {required this.companyName,
      this.isPopular,
      required this.description,
      required this.requirement,
      required this.responsibilities,
      required this.jobNature,
      required this.workingModel,
      required this.experienceLevel,
      this.isRecentJobs,
      required this.companyLogo,
      required this.jobTitle,
      required this.day,
      required this.applicantNo,
      required this.location,
      required this.price});
}
