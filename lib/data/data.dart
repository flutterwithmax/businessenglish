import 'package:newbusinessapp/models/quiz.dart';
import 'package:newbusinessapp/models/word.dart';

import '../models/topic.dart';

import '../models/phrase.dart';
import '../data/words_data.dart';

final dummy_data = [
  Topic(
    quiz: [
      Quiz(
          question: 'Salomlashishni toping',
          answers: {
            'Watch': 'uach',
            'Hello': 'helo',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Hello'),
      Quiz(
          question: 'Xayrni toping',
          answers: {
            'Watch': 'uach',
            'Goodbye': 'gudbay',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Goodbye'),
      Quiz(
          question: 'Iltimosni toping',
          answers: {
            'Please': 'plis',
            'Hello': 'helo',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Please'),
    ],
    name: 'Greetings',
    imagePath: 'assets/images/greeting.png',
    phrases: [
      Phrase(
          uzPhrase: "Salom",
          engPhase: "Hello",
          transcription: "həˈloʊ",
          soundUrl:
              'https://drive.google.com/uc?id=1tBk-rcBaDjOPBdAw3ubPc01PgokslN5p&export=download'),
      Phrase(
          uzPhrase: "Xayr",
          engPhase: "Goodbye",
          transcription: "ɡʊdˈbaɪ",
          soundUrl: ''),
      Phrase(
          uzPhrase: "Yaxshi, rahmat.",
          engPhase: "I'm fine, thank you.",
          transcription: "aɪm faɪn θæŋk juː",
          soundUrl:
              'https://drive.google.com/uc?export=download&id=1sCgNqJLRJ9CNGIa0WP30gvFDRyaKiGIH'),
      Phrase(
          uzPhrase: "Qanday hol?",
          engPhase: "How are you?",
          transcription: "haʊ ɑːr juː",
          soundUrl: ''),
      Phrase(
        uzPhrase: "Iltimos",
        engPhase: "Please",
        transcription: "pliːz",
        soundUrl: '',
      ),
      Phrase(
          uzPhrase: "Rahmat",
          engPhase: "Thank you",
          transcription: "ˈθæŋk juː",
          soundUrl: ''),
      Phrase(
        uzPhrase: "Kechirasiz",
        engPhase: "Excuse me",
        transcription: "ɪksˈkjuːz miː",
        soundUrl: '',
      ),
      Phrase(
        uzPhrase: "Kechirasiz, qayta aytishingiz mumkinmi?",
        engPhase: "Excuse me, can you repeat that?",
        transcription: "ɪksˈkjuːz miː kæn juː rɪˈpiːt ðæt",
        soundUrl: '',
      ),
      Phrase(
        uzPhrase: "Qayerda uchraysiz?",
        engPhase: "Where are you from?",
        transcription: "weər ɑːr juː frɒm",
        soundUrl: '0',
      ),
      Phrase(
        uzPhrase: "Qayerdasiz?",
        engPhase: "Where are you?",
        transcription: "weər ɑːr juː",
        soundUrl: '',
      ),
    ],
    words: greetingsWords,
  ),
  Topic(
    quiz: [
      Quiz(
          question: 'Salomlashishni toping',
          answers: {
            'Watch': 'uach',
            'Hello': 'helo',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Hello'),
      Quiz(
          question: 'Xayrni toping',
          answers: {
            'Watch': 'uach',
            'Goodbye': 'gudbay',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Goodbye'),
      Quiz(
          question: 'Iltimosni toping',
          answers: {
            'Please': 'plis',
            'Hello': 'helo',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Please'),
    ],
    name: 'Appointment',
    imagePath: 'assets/images/appointment.png',
    phrases: [
      Phrase(
        uzPhrase: "Uchrashuv",
        engPhase: "Meeting",
        transcription: "ˈmiːtɪŋ",
        soundUrl: '',
      ),
      Phrase(
        uzPhrase: "Uchrashish",
        engPhase: "Appointment",
        transcription: "əˈpɔɪntmənt",
        soundUrl: '',
      ),
      Phrase(
          uzPhrase: "Uchrashuv vaqti",
          engPhase: "Meeting time",
          transcription: "ˈmiːtɪŋ taɪm"),
      Phrase(
          uzPhrase: "Uchrashuv joyi",
          engPhase: "Meeting place",
          transcription: "ˈmiːtɪŋ pleɪs"),
      Phrase(
          uzPhrase: "Uchrashish kerakmi?",
          engPhase: "Do we need an appointment?",
          transcription: "du wiː niːd ən əˈpɔɪntmənt"),
      Phrase(
          uzPhrase: "Uchrashuv o'tkazish",
          engPhase: "Hold a meeting",
          transcription: "hoʊld ə ˈmiːtɪŋ"),
      Phrase(
          uzPhrase: "Uchrashuv tayyorlash",
          engPhase: "Prepare for a meeting",
          transcription: "prɪˈpɛr fɔr ə ˈmiːtɪŋ"),
      Phrase(
          uzPhrase: "Uchrashishga qabul qilish",
          engPhase: "Accepting appointments",
          transcription: "əkˈsɛptɪŋ əˈpɔɪntmənts"),
      Phrase(
          uzPhrase: "Uchrashuvni rad etish",
          engPhase: "Rejecting a meeting",
          transcription: "rɪˈdʒɛktɪŋ ə ˈmiːtɪŋ"),
      Phrase(
          uzPhrase: "Qachon uchrashish kerak?",
          engPhase: "When do we need to meet?",
          transcription: "wɛn du wiː niːd tuː miːt"),
    ],
    words: appointmentWords,
  ),
  Topic(
    quiz: [
      Quiz(
          question: 'Salomlashishni toping',
          answers: {
            'Watch': 'uach',
            'Hello': 'helo',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Hello'),
      Quiz(
          question: 'Xayrni toping',
          answers: {
            'Watch': 'uach',
            'Goodbye': 'gudbay',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Goodbye'),
      Quiz(
          question: 'Iltimosni toping',
          answers: {
            'Please': 'plis',
            'Hello': 'helo',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Please'),
    ],
    name: 'Career',
    imagePath: 'assets/images/career.png',
    phrases: [
      Phrase(uzPhrase: "Karyera", engPhase: "Career", transcription: "kəˈrɪr"),
      Phrase(uzPhrase: "Ish", engPhase: "Job", transcription: "dʒɑːb"),
      Phrase(
          uzPhrase: "Ish topish",
          engPhase: "Find a job",
          transcription: "faɪnd ə dʒɑːb"),
      Phrase(
          uzPhrase: "Ish topish bo'yicha maslahat",
          engPhase: "Job search advice",
          transcription: "dʒɑːb sɜːrtʃ ədˈvaɪs"),
      Phrase(
          uzPhrase: "Ish joyi",
          engPhase: "Workplace",
          transcription: "wɜrkˌpleɪs"),
      Phrase(
          uzPhrase: "Ish va hayotning to'g'risida fikr-mulohazalar",
          engPhase: "Discussions on work and life",
          transcription: "dɪˈskʌʃənz ɒn wɜrk ænd laɪf"),
      Phrase(
          uzPhrase: "Ish va odamlar",
          engPhase: "Work and people",
          transcription: "wɜrk ænd ˈpipəl"),
      Phrase(
          uzPhrase: "Karyera dasturi",
          engPhase: "Career plan",
          transcription: "kəˈrɪr plæn"),
      Phrase(
          uzPhrase: "Ish stol",
          engPhase: "Work desk",
          transcription: "wɜrk dɛsk"),
      Phrase(
          uzPhrase: "Xizmatkarlar",
          engPhase: "Office workers",
          transcription: "ˈɔfɪs ˈwɜːkərz"),
    ],
    words: careerWords,
  ),
  Topic(
    quiz: [
      Quiz(
          question: 'Salomlashishni toping',
          answers: {
            'Watch': 'uach',
            'Hello': 'helo',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Hello'),
      Quiz(
          question: 'Xayrni toping',
          answers: {
            'Watch': 'uach',
            'Goodbye': 'gudbay',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Goodbye'),
      Quiz(
          question: 'Iltimosni toping',
          answers: {
            'Please': 'plis',
            'Hello': 'helo',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Please'),
    ],
    name: 'Office',
    imagePath: 'assets/images/office.png',
    phrases: [
      Phrase(uzPhrase: "Ofis", engPhase: "Office", transcription: "ˈɔfɪs"),
      Phrase(
          uzPhrase: "Ofis binosi",
          engPhase: "Office building",
          transcription: "ˈɔfɪs ˈbɪldɪŋ"),
      Phrase(
          uzPhrase: "Ish joyi",
          engPhase: "Workplace",
          transcription: "ˈwɜrkˌpleɪs"),
      Phrase(
          uzPhrase: "Ofis mebellari",
          engPhase: "Office furniture",
          transcription: "ˈɔfɪs ˈfɜːrnɪtʃər"),
      Phrase(
          uzPhrase: "Ofis malumoti",
          engPhase: "Office knowledge",
          transcription: "ˈɔfɪs ˈnɒlɪdʒ"),
      Phrase(
          uzPhrase: "Ofis xizmati",
          engPhase: "Office service",
          transcription: "ˈɔfɪs ˈsɜːrvɪs"),
      Phrase(
          uzPhrase: "Ofis texnika",
          engPhase: "Office equipment",
          transcription: "ˈɔfɪs ɪˈkwɪpmənt"),
      Phrase(
          uzPhrase: "Ofis dizayni",
          engPhase: "Office design",
          transcription: "ˈɔfɪs dɪˈzaɪn"),
      Phrase(
          uzPhrase: "Ofis qo'riqchisi",
          engPhase: "Office cleaner",
          transcription: "ˈɔfɪs ˈklɪnər"),
      Phrase(
          uzPhrase: "Ofis boshqaruvchi",
          engPhase: "Office manager",
          transcription: "ˈɔfɪs ˈmænɪdʒər"),
    ],
    words: officeWords,
  ),
  Topic(
    quiz: [
      Quiz(
          question: 'Salomlashishni toping',
          answers: {
            'Watch': 'uach',
            'Hello': 'helo',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Hello'),
      Quiz(
          question: 'Xayrni toping',
          answers: {
            'Watch': 'uach',
            'Goodbye': 'gudbay',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Goodbye'),
      Quiz(
          question: 'Iltimosni toping',
          answers: {
            'Please': 'plis',
            'Hello': 'helo',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Please'),
    ],
    name: 'Telephoning',
    imagePath: 'assets/images/telephoning.png',
    phrases: [
      Phrase(
          uzPhrase: "Telefon qilish",
          engPhase: "Making a phone call",
          transcription: "ˈmeɪkɪŋ ə foʊn kɔːl"),
      Phrase(
          uzPhrase: "Qo'ng'iroq qilish",
          engPhase: "Making a call",
          transcription: "ˈmeɪkɪŋ ə kɔːl"),
      Phrase(
          uzPhrase: "Telefon raqami",
          engPhase: "Phone number",
          transcription: "ˈfoʊn ˈnʌmbər"),
      Phrase(
          uzPhrase: "Telefon gaplashish",
          engPhase: "Phone conversation",
          transcription: "ˈfoʊn ˌkɒnvəˈseɪʃən"),
      Phrase(
          uzPhrase: "Telefon qilishni to'xtatish",
          engPhase: "Stop calling",
          transcription: "stɑp ˈkɔlɪŋ"),
      Phrase(
          uzPhrase: "Telefon qilmoqchi bo'lgan kishi",
          engPhase: "Caller",
          transcription: "ˈkɔːlər"),
      Phrase(
          uzPhrase: "Telefon gaplashish uchun vaqt so'rayman",
          engPhase: "I'm calling to talk",
          transcription: "aɪm ˈkɔlɪŋ tuː tɔːk"),
      Phrase(
          uzPhrase: "Meni oldindan boshqaruvchi bilan bog'laning",
          engPhase: "Connect me to the manager",
          transcription: "kəˈnɛkt miː tuː ðə ˈmænɪdʒər"),
      Phrase(
          uzPhrase: "Telefon kutish",
          engPhase: "Waiting for a call",
          transcription: "ˈweɪtɪŋ fɔr ə kɔːl"),
      Phrase(
          uzPhrase: "Telefon gaplashishni boshlash",
          engPhase: "Start a phone conversation",
          transcription: "stɑrt ə foʊn ˌkɒnvəˈseɪʃən"),
    ],
    words: telephoningWords,
  ),
  Topic(
    quiz: [
      Quiz(
          question: 'Salomlashishni toping',
          answers: {
            'Watch': 'uach',
            'Hello': 'helo',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Hello'),
      Quiz(
          question: 'Xayrni toping',
          answers: {
            'Watch': 'uach',
            'Goodbye': 'gudbay',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Goodbye'),
      Quiz(
          question: 'Iltimosni toping',
          answers: {
            'Please': 'plis',
            'Hello': 'helo',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Please'),
    ],
    name: 'Email',
    imagePath: 'assets/images/email.png',
    phrases: [
      Phrase(
          uzPhrase: "Elektron pochta",
          engPhase: "Email",
          transcription: "ˈiːmeɪl"),
      Phrase(
          uzPhrase: "Elektron pochtangizga borish uchun iltimos",
          engPhase: "Please go to your email.",
          transcription: "pliːz ɡoʊ tuː jɔːr ˈiːmeɪl"),
      Phrase(
          uzPhrase: "Yangi elektron pochta olish",
          engPhase: "Receive new emails.",
          transcription: "rɪˈsiːv ˈnjuː ˈiːmeɪlz"),
      Phrase(
          uzPhrase: "Bundan tashqari, qo'shimcha ma'lumotlarni ham bering.",
          engPhase: "Also, provide additional information.",
          transcription: "ˈɔːlsoʊ prəˈvaɪd əˈdɪʃənl ˌɪnfərˈmeɪʃən"),
      Phrase(
          uzPhrase: "Urgutish vaqtida elektron pochtalarni tekshirish",
          engPhase: "Checking emails in a hurry.",
          transcription: "ˈtʃɛkɪŋ ˈiːmeɪlz ɪn ə ˈhʌri"),
      Phrase(
          uzPhrase: "Elektron pochtalarni muammo emasini tekshirish",
          engPhase: "Checking for email issues.",
          transcription: "ˈtʃɛkɪŋ fɔr ˈiːmeɪl ˈɪʃuz"),
      Phrase(
          uzPhrase: "Elektron pochta",
          engPhase: "Email",
          transcription: "ˈiːmeɪl"),
      Phrase(
          uzPhrase: "Elektron pochta",
          engPhase: "Email",
          transcription: "ˈiːmeɪl"),
      Phrase(
          uzPhrase: "Elektron pochta",
          engPhase: "Email",
          transcription: "ˈiːmeɪl"),
      Phrase(
          uzPhrase: "Elektron pochta",
          engPhase: "Email",
          transcription: "ˈiːmeɪl"),
    ],
    words: emailWords,
  ),
  Topic(
    quiz: [
      Quiz(
          question: 'Salomlashishni toping',
          answers: {
            'Watch': 'uach',
            'Hello': 'helo',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Hello'),
      Quiz(
          question: 'Xayrni toping',
          answers: {
            'Watch': 'uach',
            'Goodbye': 'gudbay',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Goodbye'),
      Quiz(
          question: 'Iltimosni toping',
          answers: {
            'Please': 'plis',
            'Hello': 'helo',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Please'),
    ],
    name: 'Purchases',
    imagePath: 'assets/images/purchasing.png',
    phrases: [
      Phrase(
          uzPhrase: "Sotib olish",
          engPhase: "Purchases",
          transcription: "ˈpɜːrtʃəsɪz"),
      Phrase(
          uzPhrase: "Mahsulot sotib olish",
          engPhase: "Buying a product.",
          transcription: "ˈbaɪɪŋ ə ˈprɑːdʌkt"),
      Phrase(
          uzPhrase: "Mijozning keraklari",
          engPhase: "Customer needs.",
          transcription: "ˈkʌstəmər niːdz"),
      Phrase(
          uzPhrase: "Sotib olish muammolari",
          engPhase: "Buying issues.",
          transcription: "ˈbaɪɪŋ ˈɪʃuz"),
      Phrase(
          uzPhrase: "Buyurtma qilish",
          engPhase: "Placing an order.",
          transcription: "ˈpleɪsɪŋ ən ˈɔːrdər"),
      Phrase(
          uzPhrase: "Mijozdan buyurtma qilish",
          engPhase: "Ordering from a customer.",
          transcription: "ˈɔːrdərɪŋ frɒm ə ˈkʌstəmər"),
      Phrase(
          uzPhrase: "Sotib olishni amalga oshirish",
          engPhase: "Completing a purchase.",
          transcription: "kəmˈpliːtɪŋ ə ˈpɜːrtʃɪs"),
      Phrase(
          uzPhrase: "Xarid qilish",
          engPhase: "Buying",
          transcription: "ˈbaɪɪŋ"),
      Phrase(
          uzPhrase: "Xarid qilish usullari",
          engPhase: "Methods of buying.",
          transcription: "ˈmɛθədz ʌv ˈbaɪɪŋ"),
      Phrase(
          uzPhrase: "Xaridlar bo'yicha maslahat",
          engPhase: "Advice on purchases.",
          transcription: "ədˈvaɪs ɒn ˈpɜːrtʃɪsɪz"),
    ],
    words: purchasesWords,
  ),
  Topic(
    quiz: [
      Quiz(
          question: 'Salomlashishni toping',
          answers: {
            'Watch': 'uach',
            'Hello': 'helo',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Hello'),
      Quiz(
          question: 'Xayrni toping',
          answers: {
            'Watch': 'uach',
            'Goodbye': 'gudbay',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Goodbye'),
      Quiz(
          question: 'Iltimosni toping',
          answers: {
            'Please': 'plis',
            'Hello': 'helo',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Please'),
    ],
    name: 'Job Interview',
    imagePath: 'assets/images/interview.png',
    phrases: [
      Phrase(
          uzPhrase: "Ish intervyusi",
          engPhase: "Job interview",
          transcription: "dʒɑːb ˈɪntərvjuː"),
      Phrase(
          uzPhrase: "Ish intervyusiga tayyorlash",
          engPhase: "Preparing for a job interview",
          transcription: "prɪˈpɛrɪŋ fɔr ə dʒɑːb ˈɪntərvjuː"),
      Phrase(
          uzPhrase: "Ish intervyusi haqida gaplashish",
          engPhase: "Discussing job interviews",
          transcription: "dɪsˈkʌsɪŋ dʒɑːb ˈɪntərvjuːz"),
      Phrase(
          uzPhrase: "Ish intervyusi uchun imkoniyatlar",
          engPhase: "Opportunities for job interviews",
          transcription: "ˌɒpərˈtjuːnɪtiz fɔr dʒɑːb ˈɪntərvjuːz"),
      Phrase(
          uzPhrase: "Ish intervyusi bo'yicha maslahat",
          engPhase: "Advice on job interviews",
          transcription: "ədˈvaɪs ɒn dʒɑːb ˈɪntərvjuːz"),
      Phrase(
          uzPhrase: "Ish intervyusi so'rovnoma",
          engPhase: "Job interview questionnaire",
          transcription: "dʒɑːb ˈɪntərvjuː ˌkwɛsʧəˈnɛr"),
      Phrase(
          uzPhrase: "Ish intervyusi",
          engPhase: "Job interview",
          transcription: "dʒɑːb ˈɪntərvjuː"),
      Phrase(
          uzPhrase: "Ish intervyusi",
          engPhase: "Job interview",
          transcription: "dʒɑːb ˈɪntərvjuː"),
      Phrase(
          uzPhrase: "Ish intervyusi",
          engPhase: "Job interview",
          transcription: "dʒɑːb ˈɪntərvjuː"),
      Phrase(
          uzPhrase: "Ish intervyusi",
          engPhase: "Job interview",
          transcription: "dʒɑːb ˈɪntərvjuː"),
    ],
    words: jobInterviewWords,
  ),
  Topic(
    quiz: [
      Quiz(
          question: 'Salomlashishni toping',
          answers: {
            'Watch': 'uach',
            'Hello': 'helo',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Hello'),
      Quiz(
          question: 'Xayrni toping',
          answers: {
            'Watch': 'uach',
            'Goodbye': 'gudbay',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Goodbye'),
      Quiz(
          question: 'Iltimosni toping',
          answers: {
            'Please': 'plis',
            'Hello': 'helo',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Please'),
    ],
    name: 'Complaints',
    imagePath: 'assets/images/complaining.png',
    phrases: [
      Phrase(
          uzPhrase: "Shikoyatlar",
          engPhase: "Complaints",
          transcription: "kəmˈpleɪnts"),
      Phrase(
          uzPhrase: "O'yin gaplashish",
          engPhase: "Game conversation.",
          transcription: "ɡeɪm ˌkɒnvəˈseɪʃən"),
      Phrase(uzPhrase: "Xatolar", engPhase: "Errors.", transcription: "ˈɛrərz"),
      Phrase(
          uzPhrase: "Shikoyat qiluvchilar",
          engPhase: "Complainants.",
          transcription: "kəmˈpleɪnənts"),
      Phrase(
          uzPhrase: "Kutilayotgan natijalar",
          engPhase: "Expected results.",
          transcription: "ɪkˈspɛktɪd rɪˈzʌlts"),
      Phrase(
          uzPhrase: "Qaysi tomonda shikoyat qilishga ruxsat bormi?",
          engPhase: "Which side allows complaints?",
          transcription: "wɪtʃ saɪd əˈlaʊz kəmˈpleɪnts"),
      Phrase(
          uzPhrase: "Qarorlar",
          engPhase: "Decisions.",
          transcription: "dɪˈsɪʒənz"),
      Phrase(
          uzPhrase: "Shikoyat qilish usullari",
          engPhase: "Complaint methods.",
          transcription: "kəmˈpleɪnt ˈmɛθədz"),
      Phrase(
          uzPhrase: "Shikoyatlar",
          engPhase: "Complaints",
          transcription: "kəmˈpleɪnts"),
      Phrase(
          uzPhrase: "Shikoyatlar",
          engPhase: "Complaints",
          transcription: "kəmˈpleɪnts"),
    ],
    words: complaintsWords,
  ),
  Topic(
    quiz: [
      Quiz(
          question: 'Salomlashishni toping',
          answers: {
            'Watch': 'uach',
            'Hello': 'helo',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Hello'),
      Quiz(
          question: 'Xayrni toping',
          answers: {
            'Watch': 'uach',
            'Goodbye': 'gudbay',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Goodbye'),
      Quiz(
          question: 'Iltimosni toping',
          answers: {
            'Please': 'plis',
            'Hello': 'helo',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Please'),
    ],
    name: 'Advertisement',
    imagePath: 'assets/images/ads.png',
    phrases: [
      Phrase(
          uzPhrase: "Reklama",
          engPhase: "Advertisement",
          transcription: "ədˈvɜːrtɪsmənt"),
      Phrase(
          uzPhrase: "Buyurtma", engPhase: "Order.", transcription: "ˈɔːrdər"),
      Phrase(
          uzPhrase: "Tavsiyalar",
          engPhase: "Recommendations.",
          transcription: "ˌrɛkəmɛnˈdeɪʃənz"),
      Phrase(
          uzPhrase: "Reklama xizmati",
          engPhase: "Advertisement service.",
          transcription: "ədˈvɜːrtɪsmənt ˈsɜːrvɪs"),
      Phrase(
          uzPhrase: "Qabul qilish",
          engPhase: "Acceptance.",
          transcription: "əkˈsɛptəns"),
      Phrase(
          uzPhrase: "Qulaylik",
          engPhase: "Convenience.",
          transcription: "kənˈviːniəns"),
      Phrase(
          uzPhrase: "Reklama texnologiyasi",
          engPhase: "Advertisement technology.",
          transcription: "ədˈvɜːrtɪsmənt tɛkˈnɑːlədʒi"),
      Phrase(
          uzPhrase: "Xizmat ko'rsatish",
          engPhase: "Service provision.",
          transcription: "ˈsɜːrvɪs prəˈvɪʒən"),
      Phrase(
          uzPhrase: "Reklama",
          engPhase: "Advertisement",
          transcription: "ədˈvɜːrtɪsmənt"),
      Phrase(
          uzPhrase: "Reklama",
          engPhase: "Advertisement",
          transcription: "ədˈvɜːrtɪsmənt"),
    ],
    words: advertisementWords,
  ),
  Topic(
    quiz: [
      Quiz(
          question: 'Salomlashishni toping',
          answers: {
            'Watch': 'uach',
            'Hello': 'helo',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Hello'),
      Quiz(
          question: 'Xayrni toping',
          answers: {
            'Watch': 'uach',
            'Goodbye': 'gudbay',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Goodbye'),
      Quiz(
          question: 'Iltimosni toping',
          answers: {
            'Please': 'plis',
            'Hello': 'helo',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Please'),
    ],
    name: 'Leadership',
    imagePath: 'assets/images/leadership.png',
    phrases: [
      Phrase(
          uzPhrase: "Rahbarlik",
          engPhase: "Leadership",
          transcription: "ˈliːdərʃɪp"),
      Phrase(uzPhrase: "Rahbar", engPhase: "Leader", transcription: "ˈliːdər"),
      Phrase(
          uzPhrase: "Jamoa rahbari",
          engPhase: "Team leader",
          transcription: "tiːm ˈliːdər"),
      Phrase(
          uzPhrase: "Xizmatkorlar uchun qo'llanma",
          engPhase: "Guide for employees",
          transcription: "ɡaɪd fɔr ɪˈmplɔɪiz"),
      Phrase(
          uzPhrase: "Rahbarlik va menejment",
          engPhase: "Leadership and management",
          transcription: "ˈliːdərʃɪp ænd ˈmænɪdʒmənt"),
      Phrase(
          uzPhrase: "Ommaviy rahbarlik",
          engPhase: "Public leadership",
          transcription: "ˈpʌblɪk ˈliːdərʃɪp"),
      Phrase(
          uzPhrase: "So'rovlar va javoblar",
          engPhase: "Questions and answers",
          transcription: "ˈkwɛsʧənz ænd ɑːn.sərz"),
      Phrase(
          uzPhrase: "Rahbar bo'lishning omillari",
          engPhase: "Factors of becoming a leader",
          transcription: "ˈfæktərz ʌv bɪˈkʌmɪŋ ə ˈliːdər"),
      Phrase(
          uzPhrase: "Rahbarlikning shakllari",
          engPhase: "Forms of leadership",
          transcription: "fɔrmz ʌv ˈliːdərʃɪp"),
      Phrase(
          uzPhrase: "Xodimlarga rahbarlik",
          engPhase: "Leadership for employees",
          transcription: "ˈliːdərʃɪp fɔr ɪˈmplɔɪiz"),
    ],
    words: leadershipWords,
  ),
  Topic(
    quiz: [
      Quiz(
          question: 'Salomlashishni toping',
          answers: {
            'Watch': 'uach',
            'Hello': 'helo',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Hello'),
      Quiz(
          question: 'Xayrni toping',
          answers: {
            'Watch': 'uach',
            'Goodbye': 'gudbay',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Goodbye'),
      Quiz(
          question: 'Iltimosni toping',
          answers: {
            'Please': 'plis',
            'Hello': 'helo',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Please'),
    ],
    name: 'Presentation',
    imagePath: 'assets/images/presentation.png',
    phrases: [
      Phrase(
          uzPhrase: "Prezentatsiya",
          engPhase: "Presentation",
          transcription: "ˌprɛzənˈteɪʃən"),
      Phrase(
          uzPhrase: "Prezentatsiyani tayyorlash",
          engPhase: "Preparing a presentation",
          transcription: "prɪˈpɛrɪŋ ə ˌprɛzənˈteɪʃən"),
      Phrase(
          uzPhrase: "Prezentatsiya joylashish",
          engPhase: "Placing a presentation",
          transcription: "pleɪsɪŋ ə ˌprɛzənˈteɪʃən"),
      Phrase(
          uzPhrase: "Prezentatsiyani ochish",
          engPhase: "Opening a presentation",
          transcription: "ˈoʊpənɪŋ ə ˌprɛzənˈteɪʃən"),
      Phrase(
          uzPhrase: "Prezentatsiyani tugatish",
          engPhase: "Finishing a presentation",
          transcription: "ˈfɪnɪʃɪŋ ə ˌprɛzənˈteɪʃən"),
      Phrase(
          uzPhrase: "Prezentatsiyani yaratish",
          engPhase: "Creating a presentation",
          transcription: "kriˈeɪtɪŋ ə ˌprɛzənˈteɪʃən"),
      Phrase(
          uzPhrase: "Prezentatsiya sifatini ta'minlash",
          engPhase: "Ensuring presentation quality",
          transcription: "ɪnˈʃʊrɪŋ ˌprɛzənˈteɪʃən ˈkwɑːlɪti"),
      Phrase(
          uzPhrase: "Prezentatsiyada ko'rsatma",
          engPhase: "Showing in a presentation",
          transcription: "ˈʃoʊɪŋ ɪn ə ˌprɛzənˈteɪʃən"),
      Phrase(
          uzPhrase: "Prezentatsiya chizish",
          engPhase: "Drawing a presentation",
          transcription: "ˈdrɔɪŋ ə ˌprɛzənˈteɪʃən"),
      Phrase(
          uzPhrase: "Prezentatsiyani baholash",
          engPhase: "Evaluating a presentation",
          transcription: "ɪˈvæljʊˌeɪtɪŋ ə ˌprɛzənˈteɪʃən"),
    ],
    words: [
      Word(
        uzWord: 'Taqdimot',
        engWord: 'Presentation',
        transcription: '[ˌprɛzənˈteɪʃən]',
        soundUrl: 'https://example.com/sounds/presentation.mp3',
      ),
      Word(
        uzWord: 'Slayd',
        engWord: 'Slide',
        transcription: '[slaɪd]',
        soundUrl: 'https://example.com/sounds/slide.mp3',
      ),
      Word(
        uzWord: 'Ma\'lumot',
        engWord: 'Information',
        transcription: '[ˌɪnfərˈmeɪʃən]',
        soundUrl: 'https://example.com/sounds/information.mp3',
      ),
      Word(
        uzWord: 'Diagramma',
        engWord: 'Chart',
        transcription: '[tʃɑːrt]',
        soundUrl: 'https://example.com/sounds/chart.mp3',
      ),
      Word(
        uzWord: 'Mavzu',
        engWord: 'Topic',
        transcription: '[ˈtɒpɪk]',
        soundUrl: 'https://example.com/sounds/topic.mp3',
      ),
      Word(
        uzWord: 'Ekran',
        engWord: 'Screen',
        transcription: '[skriːn]',
        soundUrl: 'https://example.com/sounds/screen.mp3',
      ),
      Word(
        uzWord: 'Matn',
        engWord: 'Text',
        transcription: '[tɛkst]',
        soundUrl: 'https://example.com/sounds/text.mp3',
      ),
      Word(
        uzWord: 'Tasvir',
        engWord: 'Image',
        transcription: '[ˈɪmɪdʒ]',
        soundUrl: 'https://example.com/sounds/image.mp3',
      ),
      Word(
        uzWord: 'Izoh',
        engWord: 'Comment',
        transcription: '[ˈkɒmɛnt]',
        soundUrl: 'https://example.com/sounds/comment.mp3',
      ),
      Word(
        uzWord: 'Tayyorlash',
        engWord: 'Preparation',
        transcription: '[ˌprɛpəˈreɪʃən]',
        soundUrl: 'https://example.com/sounds/preparation.mp3',
      ),
    ],
  ),
  Topic(
    quiz: [
      Quiz(
          question: 'Salomlashishni toping',
          answers: {
            'Watch': 'uach',
            'Hello': 'helo',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Hello'),
      Quiz(
          question: 'Xayrni toping',
          answers: {
            'Watch': 'uach',
            'Goodbye': 'gudbay',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Goodbye'),
      Quiz(
          question: 'Iltimosni toping',
          answers: {
            'Please': 'plis',
            'Hello': 'helo',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Please'),
    ],
    name: 'Business Deal',
    imagePath: 'assets/images/deal.png',
    phrases: [
      Phrase(
          uzPhrase: "Biznes kelishuv",
          engPhase: "Business negotiation",
          transcription: "ˈbɪznɪs nɪˌɡoʊʃiˈeɪʃən"),
      Phrase(
          uzPhrase: "Kelishuv",
          engPhase: "Negotiation",
          transcription: "nɪˌɡoʊʃiˈeɪʃən"),
      Phrase(
          uzPhrase: "Buyurtma qilish",
          engPhase: "Ordering",
          transcription: "ˈɔːrdərɪŋ"),
      Phrase(
          uzPhrase: "Sotib olish",
          engPhase: "Purchasing",
          transcription: "ˈpɜːrtʃəsɪŋ"),
      Phrase(
          uzPhrase: "Sotib olish", engPhase: "Buying", transcription: "ˈbaɪɪŋ"),
      Phrase(
          uzPhrase: "Maxfiylik",
          engPhase: "Confidentiality",
          transcription: "kɒnˌfɪˌdɛnʃiˈælɪti"),
      Phrase(
          uzPhrase: "Maxfiylik",
          engPhase: "Confidentiality",
          transcription: "kɒnˌfɪˌdɛnʃiˈælɪti"),
      Phrase(
          uzPhrase: "Kelishilgan",
          engPhase: "Negotiated",
          transcription: "nɪˈɡoʊʃiˌeɪtɪd"),
      Phrase(
          uzPhrase: "Taqdim etish",
          engPhase: "Presentation",
          transcription: "ˌprɛzənˈteɪʃən"),
      Phrase(
          uzPhrase: "Taqdim etish",
          engPhase: "Presenting",
          transcription: "prɪˈzɛntɪŋ"),
      Phrase(
          uzPhrase: "Birja", engPhase: "Exchange", transcription: "ɪksˈʧeɪndʒ"),
    ],
    words: leadershipWords,
  ),
  Topic(
    quiz: [
      Quiz(
          question: 'Salomlashishni toping',
          answers: {
            'Watch': 'uach',
            'Hello': 'helo',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Hello'),
      Quiz(
          question: 'Xayrni toping',
          answers: {
            'Watch': 'uach',
            'Goodbye': 'gudbay',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Goodbye'),
      Quiz(
          question: 'Iltimosni toping',
          answers: {
            'Please': 'plis',
            'Hello': 'helo',
            'test': 'test',
            'test2': 'test2'
          },
          answer: 'Please'),
    ],
    name: 'Banking',
    imagePath: 'assets/images/bank.png',
    phrases: [
      Phrase(uzPhrase: "Bank", engPhase: "Bank", transcription: "bæŋk"),
      Phrase(uzPhrase: "Hisob", engPhase: "Account", transcription: "əˈkaʊnt"),
      Phrase(uzPhrase: "Karta", engPhase: "Card", transcription: "kɑːrd"),
      Phrase(uzPhrase: "Kredit", engPhase: "Credit", transcription: "ˈkrɛdɪt"),
      Phrase(uzPhrase: "Debet", engPhase: "Debit", transcription: "ˈdɛbɪt"),
      Phrase(uzPhrase: "Pul", engPhase: "Money", transcription: "ˈmʌni"),
      Phrase(uzPhrase: "Kassa", engPhase: "Cash", transcription: "kæʃ"),
      Phrase(
          uzPhrase: "Kredit olish",
          engPhase: "Get a loan",
          transcription: "ɡɛt ə loʊn"),
      Phrase(
          uzPhrase: "Hisobraqam",
          engPhase: "Account number",
          transcription: "əˈkaʊnt ˈnʌmbər"),
      Phrase(
          uzPhrase: "Bank to'lov",
          engPhase: "Bank payment",
          transcription: "bæŋk ˈpeɪmənt"),
    ],
    words: jobInterviewWords,
  ),
];
