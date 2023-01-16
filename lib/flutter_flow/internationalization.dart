import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'id', 'ms'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? idText = '',
    String? msText = '',
  }) =>
      [enText, idText, msText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Login
  {
    '3p97u62u': {
      'en': 'Bem vindo!',
      'id': 'Selamat Datang kembali!',
      'ms': 'Selamat kembali!',
    },
    'xkz4xjo6': {
      'en': 'Insira suas credenciais para acessar sua conta.',
      'id': 'Gunakan formulir di bawah ini untuk mengakses akun Anda.',
      'ms': 'Gunakan borang di bawah untuk mengakses akaun anda.',
    },
    'k9u5spqi': {
      'en': 'Endereço de e-mail',
      'id': 'Alamat email',
      'ms': 'Alamat emel',
    },
    'f4xxyrqv': {
      'en': 'Insira seu e-mail aqui...',
      'id': 'Masukkan email Anda disini...',
      'ms': 'Masukkan e-mel anda di sini...',
    },
    'lfzvgi5q': {
      'en': 'Senha',
      'id': 'Kata sandi',
      'ms': 'Kata laluan',
    },
    'wt8sx5du': {
      'en': 'Insira sua senha aqui...',
      'id': 'Masukkan kata sandi Anda di sini...',
      'ms': 'Masukkan kata laluan anda di sini...',
    },
    's8bicxzh': {
      'en': 'Esqueceu sua senha?',
      'id': 'Tidak ingat kata sandi?',
      'ms': 'Lupa kata laluan?',
    },
    'm9klj9ah': {
      'en': 'Login',
      'id': 'Gabung',
      'ms': 'Log masuk',
    },
    'tcu0c8bu': {
      'en': 'Ainda não possui conta?',
      'id': 'Tidak punya akun?',
      'ms': 'Tiada akaun?',
    },
    'kk2rdqi2': {
      'en': 'Cria Conta',
      'id': 'Buat Akun',
      'ms': 'Buat akaun',
    },
    'iha5socs': {
      'en': 'Home',
      'id': 'Rumah',
      'ms': 'Rumah',
    },
  },
  // createAccount
  {
    'l2xxy1gf': {
      'en': 'Registrar',
      'id': 'Memulai',
      'ms': 'Mulakan',
    },
    '59g0bt96': {
      'en': 'Use os campos abaixo para se registrar.',
      'id': 'Gunakan formulir di bawah ini untuk memulai.',
      'ms': 'Gunakan borang di bawah untuk bermula.',
    },
    'seheok8a': {
      'en': 'Nome Completo',
      'id': 'Alamat email',
      'ms': 'Alamat emel',
    },
    '0uknk55c': {
      'en': 'Insira seu nome e sobrenome...',
      'id': 'Masukkan email Anda disini...',
      'ms': 'Masukkan e-mel anda di sini...',
    },
    'e3issp9t': {
      'en': 'CPF',
      'id': 'Alamat email',
      'ms': 'Alamat emel',
    },
    'wagbsile': {
      'en': 'Insira seu CPF sem pontuação...',
      'id': 'Masukkan email Anda disini...',
      'ms': 'Masukkan e-mel anda di sini...',
    },
    '02lcv7br': {
      'en': 'Endereço de e-mail',
      'id': 'Alamat email',
      'ms': 'Alamat emel',
    },
    'p0eualac': {
      'en': 'Insira seu e-mail aqui...',
      'id': 'Masukkan email Anda disini...',
      'ms': 'Masukkan e-mel anda di sini...',
    },
    'dc1eym6u': {
      'en': 'Data de Nascimento',
      'id': 'Alamat email',
      'ms': 'Alamat emel',
    },
    'drrt5inh': {
      'en': 'Insira sua data de nascimento...',
      'id': 'Masukkan email Anda disini...',
      'ms': 'Masukkan e-mel anda di sini...',
    },
    'wwxuev1r': {
      'en': 'Senha',
      'id': 'Kata sandi',
      'ms': 'Kata laluan',
    },
    'eextb60x': {
      'en': 'Insira sua senha aqui...',
      'id': 'Masukkan email Anda disini...',
      'ms': 'Masukkan e-mel anda di sini...',
    },
    'dodos76d': {
      'en': 'Confirme sua senha',
      'id': 'konfirmasi sandi',
      'ms': 'Sahkan Kata Laluan',
    },
    '3srve1dx': {
      'en': 'Insira sua senha aqui...',
      'id': 'Masukkan email Anda disini...',
      'ms': 'Masukkan e-mel anda di sini...',
    },
    '29ut49wi': {
      'en': 'Registrar',
      'id': 'Buat Akun',
      'ms': 'Buat akaun',
    },
    'ysqhbhpe': {
      'en': 'Já possui uma conta?',
      'id': 'Sudah memiliki akun?',
      'ms': 'Sudah mempunyai akaun?',
    },
    'ud92zl8z': {
      'en': 'Entrar',
      'id': 'Gabung',
      'ms': 'Log masuk',
    },
    'zuuuklky': {
      'en': 'Home',
      'id': 'Rumah',
      'ms': 'Rumah',
    },
  },
  // forgotPassword
  {
    '3hcuc8v6': {
      'en': 'Redefinir Senha',
      'id': 'Tidak ingat kata sandi',
      'ms': 'Lupa kata laluan',
    },
    'sjjd1jb9': {
      'en':
          'Não se lembra da sua senha? Digite o e-mail associado à sua conta abaixo e enviaremos um novo link para você.',
      'id':
          'Tidak ingat kata sandi Anda? Masukkan email yang terkait dengan akun Anda di bawah ini dan kami akan mengirimkan tautan baru kepada Anda.',
      'ms':
          'Tidak ingat kata laluan anda? Masukkan e-mel yang dikaitkan dengan akaun anda di bawah dan kami akan menghantar pautan baharu kepada anda.',
    },
    '49qn17ga': {
      'en': 'Endereço de e-mail',
      'id': 'Alamat email',
      'ms': 'Alamat emel',
    },
    '2q95175a': {
      'en': 'Insira seu e-mail aqui...',
      'id': 'Masukkan email Anda disini...',
      'ms': 'Masukkan e-mel anda di sini...',
    },
    '3sdzjivm': {
      'en': 'Enviar E-mail',
      'id': 'Kirim Setel Ulang Tautan',
      'ms': 'Hantar Pautan Tetapan Semula',
    },
    '8p6xd6cl': {
      'en': 'Home',
      'id': 'Rumah',
      'ms': 'Rumah',
    },
  },
  // Home
  {
    '3bi54x5g': {
      'en': 'Painel',
      'id': 'Dasbor',
      'ms': 'Papan pemuka',
    },
    'nnv46x35': {
      'en': 'Resumo de atividades da equipe.',
      'id': 'Di bawah ini adalah ringkasan aktivitas tim Anda.',
      'ms': 'Di bawah ialah ringkasan aktiviti pasukan anda.',
    },
    'jqevo63s': {
      'en': 'Total de Lojas Onboarding',
      'id': 'pelanggan baru',
      'ms': 'pelanggan baru',
    },
    'd0r4w3cc': {
      'en': '221',
      'id': '24',
      'ms': '24',
    },
    '8vot9bzj': {
      'en': 'Pontos para aprovação',
      'id': 'Kontrak Baru',
      'ms': 'Kontrak Baru',
    },
    '463rfkem': {
      'en': '79',
      'id': '3.200',
      'ms': '3,200',
    },
    'saxskj92': {
      'en': 'Contratos Assinados',
      'id': 'Kontrak Kedaluwarsa',
      'ms': 'Kontrak Tamat',
    },
    '2wlrr5lg': {
      'en': '46',
      'id': '4300',
      'ms': '4300',
    },
    '3i15njfe': {
      'en': 'Lojas Inauguradas',
      'id': 'Kontrak Kedaluwarsa',
      'ms': 'Kontrak Tamat',
    },
    '0jkurr1o': {
      'en': '179',
      'id': '4300',
      'ms': '4300',
    },
    'nqnyy9gc': {
      'en': 'Lojas em Implantação',
      'id': 'Kontrak Baru',
      'ms': 'Kontrak Baru',
    },
    'uytcyfyn': {
      'en': '56%',
      'id': '',
      'ms': '',
    },
    'xlzf8qqx': {
      'en': 'Gráfico Geral',
      'id': 'Tim Desain UI',
      'ms': 'Pasukan Reka Bentuk UI',
    },
    '3wx2w8fu': {
      'en': 'Franquias',
      'id': '',
      'ms': '',
    },
    'hr9t7fa1': {
      'en': '23%',
      'id': '',
      'ms': '',
    },
    'ulah768o': {
      'en': 'Lojas em busca de ponto',
      'id': '',
      'ms': '',
    },
    'ltf3mkhm': {
      'en': '93%',
      'id': '',
      'ms': '',
    },
    'u9qqpn7v': {
      'en': 'Lojas em processo de locação de ponto',
      'id': '',
      'ms': '',
    },
    'puy8obok': {
      'en': 'Visita Técnica',
      'id': 'Aktivitas Kontrak',
      'ms': 'Aktiviti Kontrak',
    },
    'zlovh0zt': {
      'en': 'Um resumo das atividades.',
      'id': 'Di bawah ini adalah ringkasan kegiatan.',
      'ms': 'Di bawah ialah ringkasan aktiviti.',
    },
    'g1uaaovn': {
      'en': 'Lojas para cessão / Paradas',
      'id': 'Aktivitas Pelanggan',
      'ms': 'Aktiviti Pelanggan',
    },
    'e5q3ows1': {
      'en': 'Um resumo das atividades.',
      'id': 'Di bawah ini adalah ringkasan kegiatan.',
      'ms': 'Di bawah ialah ringkasan aktiviti.',
    },
    'uj7jsxmo': {
      'en': 'Contract Activity',
      'id': 'Aktivitas Kontrak',
      'ms': 'Aktiviti Kontrak',
    },
    'hkk2zmjw': {
      'en': 'Below is an a summary of activity.',
      'id': 'Di bawah ini adalah ringkasan kegiatan.',
      'ms': 'Di bawah ialah ringkasan aktiviti.',
    },
    'jkgae0vc': {
      'en': 'Customer Activity',
      'id': 'Aktivitas Pelanggan',
      'ms': 'Aktiviti Pelanggan',
    },
    'g4os7kcp': {
      'en': 'Below is an a summary of activity.',
      'id': 'Di bawah ini adalah ringkasan kegiatan.',
      'ms': 'Di bawah ialah ringkasan aktiviti.',
    },
    'y24lcr13': {
      'en': 'Dashboard',
      'id': 'Dasbor',
      'ms': 'Papan pemuka',
    },
    'xdxbdj20': {
      'en': '•',
      'id': '__',
      'ms': '__',
    },
  },
  // myTeam
  {
    '8jlklje5': {
      'en': 'Contatos',
      'id': 'Kelompok ku',
      'ms': 'Pasukan saya',
    },
    '9iuss6gl': {
      'en': 'Procurar por contatos..',
      'id': 'Cari pelanggan Anda...',
      'ms': 'Cari pelanggan anda...',
    },
    '5mtplc2u': {
      'en': 'Membro',
      'id': 'Nama anggota',
      'ms': 'Nama ahli',
    },
    'xsqhz5g4': {
      'en': 'Telefone',
      'id': 'Surel',
      'ms': 'E-mel',
    },
    'xkijgi68': {
      'en': 'Função',
      'id': 'Aktif Terakhir',
      'ms': 'Aktif Terakhir',
    },
    'dtsi2m5j': {
      'en': 'Email',
      'id': 'Tanggal Diciptakan',
      'ms': 'Tarikh Dibuat',
    },
    'qriboqj2': {
      'en': 'Whatsapp',
      'id': 'Status',
      'ms': 'Status',
    },
    'yxvgnrrg': {
      'en': 'Alex Smithhhhh',
      'id': 'Alex Smith',
      'ms': 'Alex Smith',
    },
    'hbvgee7f': {
      'en': 'user@domainname.com',
      'id': 'pengguna@namadomain.com',
      'ms': 'pengguna@nama domain.com',
    },
    'cxqbcilh': {
      'en': '83-987461266',
      'id': 'pengguna@domain.com',
      'ms': 'pengguna@domain.com',
    },
    'o29xbym8': {
      'en': 'Médico',
      'id': '',
      'ms': '',
    },
    'iswrug43': {
      'en': 'user@hi.com.br',
      'id': '',
      'ms': '',
    },
    'mv4x7wmh': {
      'en': 'Enviar Mensagem',
      'id': 'Status',
      'ms': 'Status',
    },
    'w2zw9cr7': {
      'en': 'Andrea Rudolph',
      'id': 'Andrea Rudolph',
      'ms': 'Andrea Rudolph',
    },
    '975lfxpw': {
      'en': 'user@domainname.com',
      'id': 'pengguna@namadomain.com',
      'ms': 'pengguna@nama domain.com',
    },
    'cr4tpu01': {
      'en': '83-987461266',
      'id': 'pengguna@domain.com',
      'ms': 'pengguna@domain.com',
    },
    'm0k9uxm6': {
      'en': 'Médico',
      'id': '',
      'ms': '',
    },
    'ei610bah': {
      'en': 'user@hi.com.br',
      'id': '',
      'ms': '',
    },
    '65466g2l': {
      'en': 'Enviar Mensagem',
      'id': 'Status',
      'ms': 'Status',
    },
    '6wt4aamp': {
      'en': 'Andrea Rudolph',
      'id': 'Andrea Rudolph',
      'ms': 'Andrea Rudolph',
    },
    'l96eacgw': {
      'en': 'user@domainname.com',
      'id': 'pengguna@namadomain.com',
      'ms': 'pengguna@nama domain.com',
    },
    'l2l3xguz': {
      'en': '83-987461266',
      'id': 'pengguna@domain.com',
      'ms': 'pengguna@domain.com',
    },
    'ywb0p6gp': {
      'en': 'Médico',
      'id': '',
      'ms': '',
    },
    '3ts8llen': {
      'en': 'user@hi.com.br',
      'id': '',
      'ms': '',
    },
    'j5fz217z': {
      'en': 'Enviar Mensagem',
      'id': 'Status',
      'ms': 'Status',
    },
    'aa3kj1vf': {
      'en': 'Andrea Rudolph',
      'id': 'Andrea Rudolph',
      'ms': 'Andrea Rudolph',
    },
    'a34fke7r': {
      'en': 'user@domainname.com',
      'id': 'pengguna@namadomain.com',
      'ms': 'pengguna@nama domain.com',
    },
    'anzvwh88': {
      'en': '83-987461266',
      'id': 'pengguna@domain.com',
      'ms': 'pengguna@domain.com',
    },
    '3o9rt53n': {
      'en': 'Médico',
      'id': '',
      'ms': '',
    },
    'wlv2fo7e': {
      'en': 'user@hi.com.br',
      'id': '',
      'ms': '',
    },
    'pmybqcyj': {
      'en': 'Enviar Mensagem',
      'id': 'Status',
      'ms': 'Status',
    },
    'ejpiipnj': {
      'en': 'Andrea Rudolph',
      'id': 'Andrea Rudolph',
      'ms': 'Andrea Rudolph',
    },
    'xhwmudov': {
      'en': 'user@domainname.com',
      'id': 'pengguna@namadomain.com',
      'ms': 'pengguna@nama domain.com',
    },
    '55rj4ws9': {
      'en': '83-987461266',
      'id': 'pengguna@domain.com',
      'ms': 'pengguna@domain.com',
    },
    'sm0efvyc': {
      'en': 'Médico',
      'id': '',
      'ms': '',
    },
    'mys8nua3': {
      'en': 'user@hi.com.br',
      'id': '',
      'ms': '',
    },
    '7fin6z7v': {
      'en': 'Enviar Mensagem',
      'id': 'Status',
      'ms': 'Status',
    },
    '54fbheio': {
      'en': 'Andrea Rudolph',
      'id': 'Andrea Rudolph',
      'ms': 'Andrea Rudolph',
    },
    '5zdg3l5v': {
      'en': 'user@domainname.com',
      'id': 'pengguna@namadomain.com',
      'ms': 'pengguna@nama domain.com',
    },
    'pfrreymz': {
      'en': '83-987461266',
      'id': 'pengguna@domain.com',
      'ms': 'pengguna@domain.com',
    },
    'iq06y3q4': {
      'en': 'Médico',
      'id': '',
      'ms': '',
    },
    'fos7tglu': {
      'en': 'user@hi.com.br',
      'id': '',
      'ms': '',
    },
    'r47lqzrc': {
      'en': 'Enviar Mensagem',
      'id': 'Status',
      'ms': 'Status',
    },
    'ym579y79': {
      'en': 'Dashboard',
      'id': 'Dasbor',
      'ms': 'Papan pemuka',
    },
    'smtxdnbn': {
      'en': '•',
      'id': '__',
      'ms': '__',
    },
  },
  // Main_customerList
  {
    'n99lg1qh': {
      'en': 'Franqueados',
      'id': 'Pelanggan',
      'ms': 'Pelanggan',
    },
    'lvnskphp': {
      'en': '  Todos',
      'id': 'Semua',
      'ms': 'Semua',
    },
    'a258xeav': {
      'en': 'Randy Alcorn',
      'id': 'Randy Alcorn',
      'ms': 'Randy Alcorn',
    },
    'wduyui67': {
      'en': 'Head of Procurement',
      'id': 'Kepala Pengadaan',
      'ms': 'Ketua Perolehan',
    },
    'riw99ssl': {
      'en': 'ACME Co.',
      'id': 'ACME Co.',
      'ms': 'ACME Co.',
    },
    'u0su8kte': {
      'en': 'James Wiseman',
      'id': 'James Wiseman',
      'ms': 'James Wiseman',
    },
    'nyfsg4hw': {
      'en': 'Account Manager',
      'id': 'Manajer Akuntansi',
      'ms': 'Pengurus akaun',
    },
    'gzwu4cjr': {
      'en': 'ACME Co.',
      'id': 'ACME Co.',
      'ms': 'ACME Co.',
    },
    'v1ffzm93': {
      'en': 'Ignacious Rodriguez',
      'id': 'Rodriguez yang kejam',
      'ms': 'Ignacious Rodriguez',
    },
    '8jo402mn': {
      'en': 'Sales Manager',
      'id': 'Manajer penjualan',
      'ms': 'Pengurus jualan',
    },
    'r658c9dm': {
      'en': 'Robin HQ',
      'id': 'Robin HQ',
      'ms': 'Robin HQ',
    },
    'l5cpbw6i': {
      'en': 'Elena Williams',
      'id': 'Elena Williams',
      'ms': 'Elena Williams',
    },
    '9ico69uv': {
      'en': 'Head of Product & Innovation',
      'id': 'Kepala Produk &amp; Inovasi',
      'ms': 'Ketua Produk &amp; Inovasi',
    },
    'i1898004': {
      'en': 'Robin HQ',
      'id': 'Robin HQ',
      'ms': 'Robin HQ',
    },
    's8kuamom': {
      'en': 'Greg Brown',
      'id': 'Greg Brown',
      'ms': 'Greg Brown',
    },
    'uu60i528': {
      'en': 'Account Manager',
      'id': 'Manajer Akuntansi',
      'ms': 'Pengurus akaun',
    },
    '6nuzim8s': {
      'en': 'Robin HQ',
      'id': 'Robin HQ',
      'ms': 'Robin HQ',
    },
    'lwflemu4': {
      'en': 'June Williamson',
      'id': 'Juni Williamson',
      'ms': 'June Williamson',
    },
    'rxejb1ds': {
      'en': 'Sr. Account Manager',
      'id': 'Manajer Akun Senior',
      'ms': 'Tuan Pengurus Akaun',
    },
    'k5yutyp7': {
      'en': 'HealthAi',
      'id': 'KesehatanAi',
      'ms': 'KesihatanAi',
    },
    'z6bqikmn': {
      'en': 'June Williamson',
      'id': 'Juni Williamson',
      'ms': 'June Williamson',
    },
    'rm4hba82': {
      'en': 'Sr. Account Manager',
      'id': 'Manajer Akun Senior',
      'ms': 'Tuan Pengurus Akaun',
    },
    'id05iiyh': {
      'en': 'HealthAi',
      'id': 'KesehatanAi',
      'ms': 'KesihatanAi',
    },
    'fcyoodds': {
      'en': 'Customers',
      'id': 'Pelanggan',
      'ms': 'Pelanggan',
    },
    '3ourv2w9': {
      'en': '•',
      'id': '__',
      'ms': '__',
    },
  },
  // Main_agenda
  {
    '25davdrp': {
      'en': 'Dashboard',
      'id': 'Dasbor',
      'ms': 'Papan pemuka',
    },
    '2y41yqfb': {
      'en': '•',
      'id': '__',
      'ms': '__',
    },
  },
  // Main_Contracts
  {
    '4h88trkp': {
      'en': 'Contracts',
      'id': 'Kontrak',
      'ms': 'Kontrak',
    },
    'smh1o93d': {
      'en': 'Contratos',
      'id': 'Kontrak',
      'ms': 'Kontrak',
    },
    't967eizl': {
      'en': 'Projetos',
      'id': 'Proyek',
      'ms': 'Projek',
    },
    'dpt94d56': {
      'en': 'Contratos Finalizados',
      'id': 'Desain Platform Tanpa Kode',
      'ms': 'Reka Bentuk Platform Tanpa Kod',
    },
    '2a7y5e2w': {
      'en': 'Contratos em Andamento',
      'id': 'Dokumen Tim Desain',
      'ms': 'Dokumen Pasukan Reka Bentuk',
    },
    'dlt46loo': {
      'en': 'Contratos',
      'id': 'Kontrak',
      'ms': 'Kontrak',
    },
    'sqmgdsam': {
      'en': 'ACME Co.',
      'id': 'ACME Co.',
      'ms': 'ACME Co.',
    },
    '8t72ssfn': {
      'en': 'Novas Oportunidades',
      'id': 'Kontrak untuk Peluang Baru',
      'ms': 'Kontrak untuk Peluang Baru',
    },
    'h9kiq8rj': {
      'en': 'Next Action',
      'id': 'Tindakan Selanjutnya',
      'ms': 'Tindakan Seterusnya',
    },
    '7mjz03wi': {
      'en': 'Tuesday, 10:00am',
      'id': 'Selasa, 10:00',
      'ms': 'Selasa, 10:00 pagi',
    },
    '8e820p1r': {
      'en': 'Em Progresso',
      'id': 'Sedang berlangsung',
      'ms': 'Sedang Berlangsung',
    },
    '7wcrhzda': {
      'en': 'HealthAi',
      'id': 'KesehatanAi',
      'ms': 'KesihatanAi',
    },
    'sen48p1q': {
      'en': 'Client Acquisition for Q3',
      'id': 'Akuisisi Klien untuk Q3',
      'ms': 'Pemerolehan Pelanggan untuk S3',
    },
    'fp6xlmv9': {
      'en': 'Next Action',
      'id': 'Tindakan Selanjutnya',
      'ms': 'Tindakan Seterusnya',
    },
    'k0rirjak': {
      'en': 'Tuesday, 10:00am',
      'id': 'Selasa, 10:00',
      'ms': 'Selasa, 10:00 pagi',
    },
    'nanoxp6w': {
      'en': 'Em Progresso',
      'id': 'Sedang berlangsung',
      'ms': 'Sedang Berlangsung',
    },
    'j08eiorc': {
      'en': '•',
      'id': '__',
      'ms': '__',
    },
  },
  // Main_LojasFinalizadas
  {
    'no8i0kcz': {
      'en': 'Dashboard',
      'id': 'Dasbor',
      'ms': 'Papan pemuka',
    },
    'oy99e8mw': {
      'en': '•',
      'id': '__',
      'ms': '__',
    },
  },
  // Main_profilePage
  {
    'qrxn5crt': {
      'en': 'Meu Perfil',
      'id': 'Profil saya',
      'ms': 'Profil saya',
    },
    'yj2g6q7m': {
      'en': 'Bruno Alexandria',
      'id': '',
      'ms': '',
    },
    'o00ofpw5': {
      'en': '🎂 Nascimento:',
      'id': 'andrew@namaperusahaan.com',
      'ms': 'andrew@companyname.com',
    },
    'tj6kb3hv': {
      'en': '18/09/1991',
      'id': 'andrew@namaperusahaan.com',
      'ms': 'andrew@companyname.com',
    },
    'fd32173v': {
      'en': '📞 Telefone:',
      'id': 'andrew@namaperusahaan.com',
      'ms': 'andrew@companyname.com',
    },
    'gpx1hxq9': {
      'en': '(83)987461265',
      'id': 'andrew@namaperusahaan.com',
      'ms': 'andrew@companyname.com',
    },
    '3j0ivgwq': {
      'en': '📃CPF:',
      'id': 'andrew@namaperusahaan.com',
      'ms': 'andrew@companyname.com',
    },
    'bvs9mnjb': {
      'en': '054.797.884-77',
      'id': 'andrew@namaperusahaan.com',
      'ms': 'andrew@companyname.com',
    },
    'wbn9jnrr': {
      'en': '✉️  E-mail:',
      'id': 'andrew@namaperusahaan.com',
      'ms': 'andrew@companyname.com',
    },
    'r1lmgjye': {
      'en': 'Bruno@GrupoHi.com.br',
      'id': 'andrew@namaperusahaan.com',
      'ms': 'andrew@companyname.com',
    },
    'v1hh7jlp': {
      'en': 'Alternar para o modo Escuro',
      'id': 'Beralih ke Mode Gelap',
      'ms': 'Tukar kepada Mod Gelap',
    },
    'sh7q15l6': {
      'en': 'Alternar para o modo Claro ',
      'id': 'Beralih ke Mode Cahaya',
      'ms': 'Tukar kepada Mod Cahaya',
    },
    'fyxsf6vn': {
      'en': 'Configurações de Conta',
      'id': 'Pengaturan akun',
      'ms': 'Tetapan Akaun',
    },
    'h43llaan': {
      'en': 'Mudar Senha',
      'id': 'Ganti kata sandi',
      'ms': 'Tukar kata laluan',
    },
    'b1lw0hfu': {
      'en': 'Editar Perfil',
      'id': 'Sunting profil',
      'ms': 'Sunting profil',
    },
    'abqf147c': {
      'en': 'Deslogar',
      'id': 'Keluar',
      'ms': 'Log keluar',
    },
    'o3dp9tss': {
      'en': '•',
      'id': '__',
      'ms': '__',
    },
  },
  // userDetails
  {
    'pjujz35p': {
      'en': 'Editar Perfil',
      'id': '',
      'ms': '',
    },
    '3rbr58d9': {
      'en': 'Nome',
      'id': '',
      'ms': '',
    },
    'g8ds1puc': {
      'en': '[Some hint text...]',
      'id': '',
      'ms': '',
    },
    'j608u4w3': {
      'en': 'Sobrenome',
      'id': '',
      'ms': '',
    },
    'zui5wdip': {
      'en': '[Some hint text...]',
      'id': '',
      'ms': '',
    },
    'iwg9gl3n': {
      'en': 'E-mail',
      'id': '',
      'ms': '',
    },
    'thsdsa60': {
      'en': '[Some hint text...]',
      'id': '',
      'ms': '',
    },
    'ablkhs2i': {
      'en': 'Data de nascimento',
      'id': '',
      'ms': '',
    },
    '5j4uql78': {
      'en': '[Some hint text...]',
      'id': '',
      'ms': '',
    },
    'xd1w45y3': {
      'en': 'CPF',
      'id': '',
      'ms': '',
    },
    'vumkj68e': {
      'en': '[Some hint text...]',
      'id': '',
      'ms': '',
    },
    'buvzo524': {
      'en': 'CNPJ',
      'id': '',
      'ms': '',
    },
    'c4795icm': {
      'en': '[Some hint text...]',
      'id': '',
      'ms': '',
    },
    'io1ekeig': {
      'en': 'RG',
      'id': '',
      'ms': '',
    },
    'ht2r8o52': {
      'en': '[Some hint text...]',
      'id': '',
      'ms': '',
    },
    'xx618p5f': {
      'en': 'Órgão expeditor',
      'id': '',
      'ms': '',
    },
    'xrwzfy5z': {
      'en': '[Some hint text...]',
      'id': '',
      'ms': '',
    },
    'hgln72i1': {
      'en': 'Data de emissão',
      'id': '',
      'ms': '',
    },
    'mgd87zj6': {
      'en': '[Some hint text...]',
      'id': '',
      'ms': '',
    },
    '1ex2pknj': {
      'en': 'CEP',
      'id': '',
      'ms': '',
    },
    'rhmfiivi': {
      'en': '[Some hint text...]',
      'id': '',
      'ms': '',
    },
    'cj4vss0k': {
      'en': 'Logradouro',
      'id': '',
      'ms': '',
    },
    'tq3tc2b2': {
      'en': '[Some hint text...]',
      'id': '',
      'ms': '',
    },
    'vd5hvc94': {
      'en': 'Número',
      'id': '',
      'ms': '',
    },
    'f582hg0b': {
      'en': '[Some hint text...]',
      'id': '',
      'ms': '',
    },
    'wh9r95p3': {
      'en': 'Complemento',
      'id': '',
      'ms': '',
    },
    'tewyhevs': {
      'en': '[Some hint text...]',
      'id': '',
      'ms': '',
    },
    'dbm8phji': {
      'en': 'Bairro',
      'id': '',
      'ms': '',
    },
    'gbh5ibse': {
      'en': '[Some hint text...]',
      'id': '',
      'ms': '',
    },
    'uaightm6': {
      'en': 'Cidade',
      'id': '',
      'ms': '',
    },
    'xtptneep': {
      'en': '[Some hint text...]',
      'id': '',
      'ms': '',
    },
    '3e3qokm1': {
      'en': 'Estado',
      'id': '',
      'ms': '',
    },
    'zg61nzuw': {
      'en': '[Some hint text...]',
      'id': '',
      'ms': '',
    },
    'wwahpk8m': {
      'en': 'Nacionalidade',
      'id': '',
      'ms': '',
    },
    '9psbnhhl': {
      'en': '[Some hint text...]',
      'id': '',
      'ms': '',
    },
    'lveuof9e': {
      'en': 'Telefone whatsapp 01',
      'id': '',
      'ms': '',
    },
    'phso0s24': {
      'en': '[Some hint text...]',
      'id': '',
      'ms': '',
    },
    'zqeu4gz8': {
      'en': 'Telefone whatsapp 02',
      'id': '',
      'ms': '',
    },
    '2h2bux7m': {
      'en': '[Some hint text...]',
      'id': '',
      'ms': '',
    },
    'q2jr0umu': {
      'en': 'Loja',
      'id': '',
      'ms': '',
    },
    'iurneraj': {
      'en': 'SP09',
      'id': '',
      'ms': '',
    },
    'ojt8e0s7': {
      'en': 'Loja',
      'id': '',
      'ms': '',
    },
    'f7mibme1': {
      'en': 'SP10',
      'id': '',
      'ms': '',
    },
    '8o2mce98': {
      'en': 'Loja',
      'id': '',
      'ms': '',
    },
    'rq6lba2j': {
      'en': 'SP11',
      'id': '',
      'ms': '',
    },
    '9t913b44': {
      'en': 'Home',
      'id': 'Rumah',
      'ms': 'Rumah',
    },
  },
  // editProfile
  {
    'mk8nnw94': {
      'en': 'Mudar foto',
      'id': '',
      'ms': '',
    },
    '4no7ue4a': {
      'en': 'Seu Nome',
      'id': '',
      'ms': '',
    },
    '2rqce1pj': {
      'en': 'O e-mail associado a esta conta:',
      'id': '',
      'ms': '',
    },
    'rr8ksatz': {
      'en': 'Salvar',
      'id': '',
      'ms': '',
    },
    '20uycztj': {
      'en': 'Editar Perfl',
      'id': '',
      'ms': '',
    },
  },
  // projectDetails
  {
    'olng4jgs': {
      'en': 'Ikli Tecnologia.',
      'id': 'ACME Co.',
      'ms': 'ACME Co.',
    },
    'auzixtnu': {
      'en': 'Contratos para Novas Oportunidades',
      'id': 'Kontrak untuk Peluang Baru',
      'ms': 'Kontrak untuk Peluang Baru',
    },
    'b5izv7nf': {
      'en': 'Próxima Ação:',
      'id': 'Tindakan Selanjutnya',
      'ms': 'Tindakan Seterusnya',
    },
    'vhaascws': {
      'en': 'Sexta-feira, 13:00',
      'id': 'Selasa, 10:00',
      'ms': 'Selasa, 10:00 pagi',
    },
    'u5if4r56': {
      'en': 'Em Progresso',
      'id': 'Sedang berlangsung',
      'ms': 'Sedang Berlangsung',
    },
    'xmoxp4eg': {
      'en': 'Detalhes do contrato',
      'id': 'Detail Kontrak',
      'ms': 'Butiran Kontrak',
    },
    'nftjvt9b': {
      'en': 'R\$210,000',
      'id': '\$210.000',
      'ms': '\$210,000',
    },
    'gpz3q8k6': {
      'en':
          'Detalhes adicionais sobre este contrato e quem está trabalhando nele neste cartão!',
      'id':
          'Detail Tambahan seputar kontrak ini dan siapa yang mengerjakannya di kartu ini!',
      'ms':
          'Butiran Tambahan mengenai kontrak ini dan siapa yang mengusahakannya dalam kad ini!',
    },
    'yltv0mu8': {
      'en': 'Marcar como Completo',
      'id': 'Tandai sebagai Selesai',
      'ms': 'Tandai sebagai Selesai',
    },
    'rqfytlxg': {
      'en': 'Detalhes do contrato',
      'id': 'Detail Kontrak',
      'ms': 'Butiran Kontrak',
    },
    'dlykg4gm': {
      'en': 'R\$120,000',
      'id': '\$120,000',
      'ms': '\$120,000',
    },
    'hsx3k6c4': {
      'en':
          'Detalhes adicionais sobre este contrato e quem está trabalhando nele neste cartão!',
      'id':
          'Detail Tambahan seputar kontrak ini dan siapa yang mengerjakannya di kartu ini!',
      'ms':
          'Butiran Tambahan mengenai kontrak ini dan siapa yang mengusahakannya dalam kad ini!',
    },
    'okb12i1r': {
      'en': 'Marcar como Completo',
      'id': 'Tandai sebagai Selesai',
      'ms': 'Tandai sebagai Selesai',
    },
    'c0s3jdsy': {
      'en': 'Home',
      'id': 'Rumah',
      'ms': 'Rumah',
    },
  },
  // projectDetailsHealthAi
  {
    'mxf4vrjw': {
      'en': 'Lavanderia 60 Minutos.',
      'id': 'KesehatanAi',
      'ms': 'KesihatanAi',
    },
    'wsgonkz2': {
      'en': 'Contratos para Novas Oportunidades',
      'id': 'Akuisisi Klien untuk Q3',
      'ms': 'Pemerolehan Pelanggan untuk S3',
    },
    'ynyuwhqo': {
      'en': 'Próxima Ação:',
      'id': 'Tindakan Selanjutnya',
      'ms': 'Tindakan Seterusnya',
    },
    'zk7z07v0': {
      'en': 'Sexta-feira, 13:00',
      'id': 'Selasa, 10:00',
      'ms': 'Selasa, 10:00 pagi',
    },
    'lux9j0yp': {
      'en': 'In Progress',
      'id': 'Sedang berlangsung',
      'ms': 'Sedang Berlangsung',
    },
    'ry6jvd0g': {
      'en': 'Detalhes do contrato',
      'id': 'Detail Kontrak',
      'ms': 'Butiran Kontrak',
    },
    'hu32scl5': {
      'en': 'R\$125,000',
      'id': '\$125.000',
      'ms': '\$125,000',
    },
    'sfu6o269': {
      'en':
          'Detalhes adicionais sobre este contrato e quem está trabalhando nele neste cartão!',
      'id':
          'Detail Tambahan seputar kontrak ini dan siapa yang mengerjakannya di kartu ini!',
      'ms':
          'Butiran Tambahan mengenai kontrak ini dan siapa yang mengusahakannya dalam kad ini!',
    },
    '5sv9a4ka': {
      'en': 'Marcar como Completo',
      'id': 'Tandai sebagai Selesai',
      'ms': 'Tandai sebagai Selesai',
    },
    'rrgcwkj1': {
      'en': 'Detalhes do contrato',
      'id': 'Detail Kontrak',
      'ms': 'Butiran Kontrak',
    },
    '8bwk4oui': {
      'en': 'R\$67,000',
      'id': '\$67.000',
      'ms': '\$67,000',
    },
    'p2hoxaq9': {
      'en':
          'Detalhes adicionais sobre este contrato e quem está trabalhando nele neste cartão!',
      'id':
          'Detail Tambahan seputar kontrak ini dan siapa yang mengerjakannya di kartu ini!',
      'ms':
          'Butiran Tambahan mengenai kontrak ini dan siapa yang mengusahakannya dalam kad ini!',
    },
    'ww95wm3k': {
      'en': 'Marcar como Completo',
      'id': 'Tandai sebagai Selesai',
      'ms': 'Tandai sebagai Selesai',
    },
    '54l7ivhw': {
      'en': 'Home',
      'id': 'Rumah',
      'ms': 'Rumah',
    },
  },
  // searchPage
  {
    'ao46xsuv': {
      'en': 'Adicionar Membros',
      'id': 'Tambahkan Anggota',
      'ms': 'Tambah Ahli',
    },
    'g8rv8zhr': {
      'en': 'Procurar membros...',
      'id': 'Cari anggota...',
      'ms': 'Cari ahli...',
    },
    'op7ngmsb': {
      'en': 'Option 1',
      'id': 'Pilihan 1',
      'ms': 'Pilihan 1',
    },
    '5x8u4g0u': {
      'en': 'Adicionar Membros',
      'id': 'Tambahkan Anggota',
      'ms': 'Tambah Ahli',
    },
    '4cek35uo': {
      'en': 'Ver',
      'id': 'Melihat',
      'ms': 'Lihat',
    },
    'mvx2sb5k': {
      'en': 'Home',
      'id': 'Rumah',
      'ms': 'Rumah',
    },
  },
  // modal_success
  {
    'kred63vb': {
      'en': 'Enviar Contrato',
      'id': 'Kirim Konfirmasi Kontrak',
      'ms': 'Hantar Pengesahan Kontrak',
    },
    'hywgg8eu': {
      'en': 'Um novo contrato foi gerado para:',
      'id': 'Kontrak baru telah dibuat untuk:',
      'ms': 'Kontrak baru telah dijana untuk:',
    },
    'kmp2gbpy': {
      'en': 'Randy Alcorn',
      'id': 'Randy Alcorn',
      'ms': 'Randy Alcorn',
    },
    'a7nc1dt4': {
      'en': 'Head of Procurement',
      'id': 'Kepala Pengadaan',
      'ms': 'Ketua Perolehan',
    },
    '2f2nxucv': {
      'en': 'ACME Co.',
      'id': 'ACME Co.',
      'ms': 'ACME Co.',
    },
    'vcm4fijj': {
      'en': 'Próximos Passos',
      'id': 'Langkah selanjutnya',
      'ms': 'Langkah seterusnya',
    },
    '60n0fqw5': {
      'en':
          'Enviaremos um e-mail com detalhes para o cliente e permitiremos que você gerencie em seu painel.',
      'id':
          'Kirim informasi di bawah ini. Dan kami akan mengirimkan email dengan detail kepada pelanggan dan memungkinkan Anda untuk mengelolanya di dasbor Anda.',
      'ms':
          'Hantar maklumat di bawah. Dan kami akan menghantar e-mel dengan butiran kepada pelanggan dan membenarkan anda mengurusnya dalam papan pemuka anda.',
    },
    'e408bhw6': {
      'en': 'Enviar Informações',
      'id': 'Kirim Informasi',
      'ms': 'Hantar Maklumat',
    },
    'wo1onxhi': {
      'en': 'Depois',
      'id': 'Sudahlah',
      'ms': 'Tidak mengapa',
    },
  },
  // modal_Message
  {
    'wa4vkne2': {
      'en': 'Parabéns! 🎈',
      'id': 'Selamat!',
      'ms': 'tahniah!',
    },
    '3hf2ocig': {
      'en':
          'Agora que um contrato foi gerado para este cliente, entre em contato com ele informando a data em que você enviará o contrato assinado.',
      'id':
          'Sekarang kontrak telah dibuat untuk pelanggan ini, silakan hubungi mereka dengan tanggal Anda akan mengirim perjanjian yang ditandatangani.',
      'ms':
          'Memandangkan kontrak telah dijana untuk pelanggan ini, sila hubungi mereka dengan tarikh anda akan menghantar perjanjian yang ditandatangani.',
    },
    'q0jvi1lp': {
      'en': 'Ok',
      'id': 'Oke',
      'ms': 'baik',
    },
    'oo4y13nf': {
      'en': 'Continuar',
      'id': 'Melanjutkan',
      'ms': 'teruskan',
    },
  },
  // modal_Welcome
  {
    '00flvi93': {
      'en': 'Parabéns!',
      'id': 'Selamat!',
      'ms': 'tahniah!',
    },
    'fmzceh74': {
      'en': 'Um novo contrato foi gerado',
      'id': 'Kontrak baru telah dibuat untuk:',
      'ms': 'Kontrak baru telah dijana untuk:',
    },
    'g8q2u55w': {
      'en': 'Continuar',
      'id': 'Melanjutkan',
      'ms': 'teruskan',
    },
  },
  // createComment
  {
    'l2jlnhye': {
      'en': 'Criar Anotação',
      'id': 'Buat Catatan',
      'ms': 'Cipta Nota',
    },
    'd6yfe8tj': {
      'en': 'Achar membros por pesquisa.',
      'id': 'Temukan anggota dengan mencari di bawah',
      'ms': 'Cari ahli dengan mencari di bawah',
    },
    'p3rj5ra0': {
      'en': 'Ricky Rodriguez',
      'id': 'Ricky Rodriguez',
      'ms': 'Ricky Rodriguez',
    },
    '9gf6o5ss': {
      'en': 'Adicionar nota aqui...',
      'id': 'Masukkan catatan Anda di sini...',
      'ms': 'Masukkan nota anda di sini...',
    },
    'farrki57': {
      'en': 'Criar Nota',
      'id': 'Buat Catatan',
      'ms': 'Cipta Nota',
    },
  },
  // mobileNav
  {
    'sy0pxvma': {
      'en': 'Dashboard',
      'id': 'Dasbor',
      'ms': 'Papan pemuka',
    },
    't5c3aiuy': {
      'en': 'My Team',
      'id': 'Kelompok ku',
      'ms': 'Pasukan saya',
    },
    'nkz3c58a': {
      'en': 'Customers',
      'id': 'Pelanggan',
      'ms': 'Pelanggan',
    },
    '1mkyyjwj': {
      'en': 'Contracts',
      'id': 'Kontrak',
      'ms': 'Kontrak',
    },
    'eg79coc6': {
      'en': 'Profile',
      'id': 'Profil',
      'ms': 'Profil',
    },
  },
  // webNav
  {
    'yg07zi4c': {
      'en': 'Dashboard',
      'id': 'Dasbor',
      'ms': 'Papan pemuka',
    },
    '5s0d776i': {
      'en': 'Contatos',
      'id': 'Kelompok ku',
      'ms': 'Pasukan saya',
    },
    'lbojdpxg': {
      'en': 'Franqueados',
      'id': 'Pelanggan',
      'ms': 'Pelanggan',
    },
    '44yql7ay': {
      'en': 'Agenda',
      'id': 'Profil',
      'ms': 'Profil',
    },
    '9pjba90p': {
      'en': 'Lojas (Andamento)',
      'id': 'Kontrak',
      'ms': 'Kontrak',
    },
    'f5lo1udn': {
      'en': 'Lojas (Finalizadas)',
      'id': 'Profil',
      'ms': 'Profil',
    },
    'nek17ojc': {
      'en': 'Configurações',
      'id': 'Profil',
      'ms': 'Profil',
    },
    'oiaq6vgq': {
      'en': 'Bruno Alexandria',
      'id': '',
      'ms': '',
    },
    '9o7elpci': {
      'en': 'Bruno@GrupoHi.com.br',
      'id': '',
      'ms': '',
    },
  },
  // commandPalette
  {
    'jt9g5o8v': {
      'en': 'Procurar na Plataforma...',
      'id': 'Cari platform...',
      'ms': 'Platform carian...',
    },
    'b3bd9y8w': {
      'en': 'Procurar',
      'id': 'Mencari',
      'ms': 'Cari',
    },
    'pw6kvl1f': {
      'en': 'Links Rápidos',
      'id': 'tautan langsung',
      'ms': 'Pautan Pantas',
    },
    'gckukxjv': {
      'en': 'Procurar Contrato ',
      'id': 'Temukan Kontrak',
      'ms': 'Cari Kontrak',
    },
    'zsq8vj02': {
      'en': 'Procurar Colaborador',
      'id': 'Temukan Pelanggan',
      'ms': 'Cari Pelanggan',
    },
    'iqxwv326': {
      'en': 'Novo Contrato',
      'id': 'Kontrak baru',
      'ms': 'Kontrak Baru',
    },
    's60yfg0g': {
      'en': 'Nova Loja',
      'id': 'Pelanggan baru',
      'ms': 'Pelanggan baru',
    },
    'lwrh59bb': {
      'en': 'Procuras Recentes',
      'id': 'pencarian terkini',
      'ms': 'Carian Terkini',
    },
    'o6lqlfr1': {
      'en': 'RN14',
      'id': 'Keuangan Newport',
      'ms': 'Kewangan Newport',
    },
    '6zpaywwg': {
      'en': 'Isaelson Ramos',
      'id': 'Harry Styles',
      'ms': 'gaya Harry',
    },
  },
  // editProfilePhoto
  {
    '6bnefz1c': {
      'en': 'Mudar Foto',
      'id': '',
      'ms': '',
    },
    'yaxe7q8v': {
      'en':
          'Carregue uma nova foto abaixo para alterar seu avatar visto por outras pessoas.',
      'id': '',
      'ms': '',
    },
    're4x0sz7': {
      'en': 'Enviar Imagem',
      'id': '',
      'ms': '',
    },
    'sr54fsk6': {
      'en': 'Salvar',
      'id': '',
      'ms': '',
    },
  },
  // popup
  {
    '34xdbwjp': {
      'en': 'Adicionar contato',
      'id': '',
      'ms': '',
    },
    '6ahsjrw9': {
      'en': 'Primeiro Nome',
      'id': '',
      'ms': '',
    },
    'aax401b2': {
      'en': 'Sobrenome',
      'id': '',
      'ms': '',
    },
    'x82p3iep': {
      'en': 'Rhoncus',
      'id': '',
      'ms': '',
    },
    '11dhiq6f': {
      'en': 'Aliquam AC',
      'id': '',
      'ms': '',
    },
    'mr74a3vu': {
      'en': 'Email',
      'id': '',
      'ms': '',
    },
    'rex2hpsf': {
      'en': 'manishprajapati179@gmail.com',
      'id': '',
      'ms': '',
    },
    'tashnvlc': {
      'en': 'Profissão',
      'id': '',
      'ms': '',
    },
    'ts1zlew3': {
      'en': 'Número de telefone',
      'id': '',
      'ms': '',
    },
    '9eh4bbwk': {
      'en': 'Digite aqui',
      'id': '',
      'ms': '',
    },
    'ccfglm6h': {
      'en': '(83) 9999-9999',
      'id': '',
      'ms': '',
    },
    '4dlxa49m': {
      'en': 'Gênero',
      'id': '',
      'ms': '',
    },
    '642szmqa': {
      'en': 'Masculino',
      'id': '',
      'ms': '',
    },
    'c3pet5l4': {
      'en': 'Feminino',
      'id': '',
      'ms': '',
    },
    '8c0byjlq': {
      'en': 'Outros',
      'id': '',
      'ms': '',
    },
    '0pywvjm8': {
      'en': 'SALVAR',
      'id': '',
      'ms': '',
    },
  },
  // popup2
  {
    't67dq0j4': {
      'en': 'Dados da loja',
      'id': '',
      'ms': '',
    },
    '3n6zv7vd': {
      'en': 'Código da loja',
      'id': '',
      'ms': '',
    },
    'ncad03gb': {
      'en': 'Endereço',
      'id': '',
      'ms': '',
    },
    'vzmjkoiz': {
      'en': 'SP09',
      'id': '',
      'ms': '',
    },
    'jmh51x1m': {
      'en': 'Rua Fulano de Tal, 500,  Jradim Sol, São Palo. São Pailo -SP',
      'id': '',
      'ms': '',
    },
    'n2p5qmuj': {
      'en': 'Razão social',
      'id': '',
      'ms': '',
    },
    '18lhw4pb': {
      'en': 'Nome Fantasia',
      'id': '',
      'ms': '',
    },
    'najvq3lm': {
      'en': 'CNPJ',
      'id': '',
      'ms': '',
    },
    '41e3qdk9': {
      'en': 'CNPJ',
      'id': '',
      'ms': '',
    },
    '9cw0b3qc': {
      'en': 'Fulano de tal',
      'id': '',
      'ms': '',
    },
    'oxcdx8ft': {
      'en': 'Fulano de tal',
      'id': '',
      'ms': '',
    },
    'gevawhif': {
      'en': '000000-0000',
      'id': '',
      'ms': '',
    },
    's301gbdg': {
      'en': '000000-0000',
      'id': '',
      'ms': '',
    },
    'xwbn6u9s': {
      'en': 'CARREGAR FOTOS',
      'id': '',
      'ms': '',
    },
    '8i8t6w32': {
      'en': 'SALVAR',
      'id': '',
      'ms': '',
    },
  },
  // Miscellaneous
  {
    'yyod2lrs': {
      'en': '',
      'id': '',
      'ms': '',
    },
    '63ny2old': {
      'en': '',
      'id': '',
      'ms': '',
    },
    '65e2tfs2': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'ddazihx4': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'db03cpjj': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'fdb9078p': {
      'en': '',
      'id': '',
      'ms': '',
    },
    '80ouzj9q': {
      'en': '',
      'id': '',
      'ms': '',
    },
    '6rzhptp9': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'ce8c4ty0': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'kcvqa08x': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'dqrzd6sq': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'dpqtohyf': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'v01vf71s': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'gcv6def1': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'um9es99m': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'o4enbz4j': {
      'en': '',
      'id': '',
      'ms': '',
    },
    '8z4tvfh7': {
      'en': '',
      'id': '',
      'ms': '',
    },
    '2ybzla8x': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'd1wdf5i1': {
      'en': '',
      'id': '',
      'ms': '',
    },
    '2py80kgi': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'p6lsrh2a': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'ne8cclp9': {
      'en': '',
      'id': '',
      'ms': '',
    },
  },
].reduce((a, b) => a..addAll(b));
