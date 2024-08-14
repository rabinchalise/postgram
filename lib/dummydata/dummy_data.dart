import 'package:job_finder/models/chat_model.dart';

import '../models/job_model.dart';

class DummyData {
  static final List<Job> jobs = [
    Job(
        isRecentJobs: false,
        isPopular: true,
        companyName: 'MicroSoft',
        jobTitle: 'Graphic Designer',
        day: '7 Days Ago',
        applicantNo: '22',
        location: 'Washington, USA',
        price: 220,
        jobNature: 'Full Time',
        workingModel: 'On-site',
        experienceLevel: 'Mid Senior ',
        companyLogo: 'assets/icons/microsoft.png',
        description:
            'As a Graphic Designer, you will play a crucial role in shaping the visual identity of our brand and creating compelling visual assets across various mediums. Your creativity and design expertise will be instrumental in communicating our brand message and engaging our target audience. You will collaborate closely with cross-functional teams to develop innovative designs that align with our brand guidelines and marketing objectives.',
        requirement: [
          '',
          '',
          '',
        ],
        responsibilities: [
          '',
          '',
          ''
        ]),
    Job(
        isRecentJobs: false,
        isPopular: true,
        companyName: 'Apple',
        jobTitle: 'React Devloper',
        day: '15 Days Ago',
        applicantNo: '34',
        location: 'Cupertino, California',
        price: 200,
        jobNature: 'Full Time',
        workingModel: 'On-site',
        experienceLevel: 'Senior ',
        companyLogo: 'assets/icons/apple.png',
        description:
            'As a React Developer, you will be an integral part of our development team, responsible for building dynamic and interactive user interfaces for web applications using React.js. You will collaborate closely with other developers, designers, and stakeholders to translate design mockups and user requirements into responsive and high-performance front-end components. Your expertise in React.js and front-end development best practices will contribute to the creation of seamless user experiences and scalable software solutions.',
        requirement: [
          '',
          '',
          '',
        ],
        responsibilities: [
          '',
          '',
          ''
        ]),
    Job(
        isRecentJobs: true,
        isPopular: false,
        companyName: 'Slack',
        jobTitle: 'Project Manager',
        day: '2 Days Ago',
        applicantNo: '16',
        location: 'San Francisco, California',
        price: 220,
        jobNature: 'Freelance',
        workingModel: 'Remote',
        experienceLevel: 'Internship',
        companyLogo: 'assets/icons/slack.png',
        description:
            'As a Project Manager, you will be responsible for overseeing and managing the successful execution of projects from initiation to completion. You will collaborate closely with cross-functional teams, stakeholders, and clients to ensure that project objectives are met within scope, schedule, budget, and quality constraints. Your leadership, organization, and communication skills will be critical in driving project success and fostering effective teamwork.',
        requirement: [
          '',
          '',
          '',
        ],
        responsibilities: [
          '',
          '',
          ''
        ]),
    Job(
        isRecentJobs: true,
        isPopular: false,
        companyName: 'Figma',
        jobTitle: 'React Developer',
        day: '3 Days Ago',
        applicantNo: '70',
        location: 'San Francisco, USA',
        price: 150,
        jobNature: 'Freelance',
        workingModel: 'Remote',
        experienceLevel: 'Entry Level',
        companyLogo: 'assets/icons/figma.png',
        description:
            'As a React Developer, you will be an integral part of our development team, responsible for building dynamic and interactive user interfaces for web applications using React.js. You will collaborate closely with other developers, designers, and stakeholders to translate design mockups and user requirements into responsive and high-performance front-end components. Your expertise in React.js and front-end development best practices will contribute to the creation of seamless user experiences and scalable software solutions.',
        requirement: [
          '',
          '',
          '',
        ],
        responsibilities: [
          '',
          '',
          ''
        ]),
    Job(
        isRecentJobs: false,
        isPopular: true,
        companyName: 'Google',
        jobTitle: 'Flutter Developer',
        day: '5 Days Ago',
        applicantNo: '1k',
        jobNature: 'Full Time',
        workingModel: 'Hybrid',
        experienceLevel: 'Internship',
        location: 'California, USA',
        price: 300,
        companyLogo: 'assets/icons/google.png',
        description:
            'As a Flutter Developer, you will be responsible for designing and developing cross-platform mobile applications using the Flutter framework. You will collaborate closely with product managers, designers, and other developers to create high-quality, performant, and visually appealing mobile applications that meet the needs of our users. Your expertise in Flutter and mobile app development will be instrumental in delivering innovative solutions and enhancing the user experience across multiple platforms.',
        requirement: [
          '',
          '',
          '',
        ],
        responsibilities: [
          '',
          '',
          ''
        ]),
    Job(
        isRecentJobs: false,
        isPopular: true,
        companyName: 'Amazon',
        jobTitle: 'UI/UX Designer',
        day: '7 Days Ago',
        applicantNo: '2k',
        jobNature: 'Full Time',
        workingModel: 'Remote',
        experienceLevel: 'Entry Level',
        location: 'Washington, USA',
        price: 700,
        companyLogo: 'assets/icons/amazon.png',
        description:
            'As a UI Designer, you will be responsible for crafting engaging and intuitive user interfaces for our digital products. You will collaborate closely with cross-functional teams to create visually stunning designs that enhance user experience and drive engagement. Your role will involve translating user needs and business requirements into elegant and functional interface designs. You will play a pivotal role in shaping the visual identity of our products and ensuring consistency across various platforms and devices.',
        requirement: [
          '',
          '',
          '',
        ],
        responsibilities: [
          '',
          '',
          ''
        ]),
    Job(
        isRecentJobs: false,
        isPopular: false,
        companyName: 'Tesla',
        jobTitle: 'Video Editor',
        day: '2 weeks Ago',
        applicantNo: '150',
        jobNature: 'Full Time',
        workingModel: 'On-site',
        experienceLevel: 'Internship',
        location: 'Texas, USA',
        price: 550,
        companyLogo: 'assets/icons/tesla.png',
        description:
            'As a Video Editor, you will play a crucial role in crafting compelling visual stories through the art of video editing. You will be responsible for assembling raw footage into polished videos that effectively communicate the intended message and resonate with our audience. Working closely with creative teams, producers, and clients, you will bring creative concepts to life and ensure that the final product meets quality standards and project requirements.',
        requirement: [
          '',
          '',
          '',
        ],
        responsibilities: [
          '',
          '',
          ''
        ]),
    Job(
        isRecentJobs: false,
        isPopular: true,
        companyName: 'Comcast',
        jobTitle: 'Full Stack Developer',
        day: '7 Days Ago',
        applicantNo: '290',
        location: 'Pennsylvania, USA',
        jobNature: 'Freelance',
        workingModel: 'Remote',
        experienceLevel: 'Entry Level',
        price: 120,
        companyLogo: 'assets/icons/comcast.png',
        description:
            'As a Full Stack Developer, you will be responsible for designing, developing, and maintaining both the front-end and back-end components of web applications. You will work on all layers of the application stack, from user interface design and client-side scripting to server-side logic and database integration. Your expertise in both front-end and back-end technologies will be essential in creating scalable, robust, and user-friendly web applications that meet the needs of our users and clients.',
        requirement: [
          '',
          '',
          '',
        ],
        responsibilities: [
          '',
          '',
          ''
        ])
  ];

  static final List<Chat> chats = [
    Chat(
        chatMessage: 'Hey, how are you doing?',
        imgUrl: 'assets/images/anil.jpeg',
        profileName: 'Anil Thapa',
        time: '10:18'),
    Chat(
        chatMessage: 'Hello, whats up',
        imgUrl: 'assets/images/dinesh.jpeg',
        profileName: 'Dinesh Bohora',
        time: '12:30'),
    Chat(
        chatMessage: 'I want to join the job..',
        imgUrl: 'assets/images/bijay.jpeg',
        profileName: 'Bijay Bhandari',
        time: '10:00'),
    Chat(
        chatMessage: 'I would like to internship sir.',
        imgUrl: 'assets/images/shiva.webp',
        profileName: 'Shiva Thapa',
        time: '11:00'),
    Chat(
        chatMessage: 'Call me, have some work?',
        imgUrl: 'assets/images/sabin.jpeg',
        profileName: 'Sabin Gurung',
        time: '12:00'),
    Chat(
        chatMessage: 'Yo!!!!! Long time, no see!?',
        imgUrl: 'assets/images/sita.webp',
        profileName: 'Sita poudel',
        time: '9:08'),
    Chat(
        chatMessage: 'Yo!!!!! Long time, no see!?',
        imgUrl: 'assets/images/sita.webp',
        profileName: 'Sita poudel',
        time: '9:08'),
    Chat(
        chatMessage: 'Call me, have some work?',
        imgUrl: 'assets/images/sabin.jpeg',
        profileName: 'Sabin Gurung',
        time: '12:00'),
  ];
}
