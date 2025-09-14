
import '../models/models.dart';

final List<FreelancerModel> infoOfFreelances = [
  FreelancerModel(
    freelancerName: "Wizard",
    freelancerJob: "UI Designer",
    freelancerImage: 'assets/images/2.png',
    freelancerRate: 4.5,
  ),
  FreelancerModel(
    freelancerName: "Mohammed",
    freelancerJob: "App Designer",
    freelancerImage: 'assets/images/3.png',
    freelancerRate: 4.4,
  ),
  FreelancerModel(
    freelancerName: "Yara",
    freelancerJob: "Web Developer",
    freelancerImage: 'assets/images/4.png',
    freelancerRate: 3,
  ),
  FreelancerModel(
    freelancerName: "Aseel",
    freelancerJob: "Graphics Designer",
    freelancerImage: 'assets/images/5.png',
    freelancerRate: 2.4,
  ),
];
final List<ServiceModel> servicesNamesAndDescription = [
  ServiceModel(
    serviceImage: 'assets/images/6.png',
    cardImage: 'assets/images/2.png',
    serviceName: 'Miss Zachary Will',
    serverJob: infoOfFreelances[0].freelancerName,
    serviceDescription: 'Doloribus saepe aut necessit qui non qui.',
    serviceRate: 4.9,
  ),
  ServiceModel(
    serviceImage: 'assets/images/7.png',
    cardImage: 'assets/images/3.png',
    serviceName: 'Miss loveta darling',
    serverJob: infoOfFreelances[1].freelancerName,
    serviceDescription: 'El mucha aut necessit qui non qui.',
    serviceRate: 4.7,
  ),
  ServiceModel(
    serviceImage: 'assets/images/8.png',
    cardImage: 'assets/images/4.png',
    serviceName: 'Miss Nails serv',
    serverJob: infoOfFreelances[2].freelancerName,
    serviceDescription: 'Seneora la verse saepe aut necessit.',
    serviceRate: 3.9,
  ),
];
