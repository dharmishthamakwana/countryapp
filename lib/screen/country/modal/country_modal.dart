class CountryModel {
  List? tld, capital, altSpellings, latlng, timezones, continents;
  String? cca2,
      ccn3,
      cca3,
      cioc,
      status,
      region,
      subregion,
      flag,
      fifa,
      startOfWeek;
  bool? independent, unMember, landlocked;
  int? population;
  double? area;
  nameModel? n1;
  currenciesModel? c1;
  iddModel? i1;
  languagesModel? l1;
  translationsModel? t1;
  demonymsModel? d1;
  mapsModel? m1;
  carModel? c2;
  flagsModel? f1;
  coatOfArmsModel? c3;
  capitalInfoModel? c4;
  postalCodeModel? p1;

  CountryModel({
    this.tld,
    this.capital,
    this.altSpellings,
    this.latlng,
    this.timezones,
    this.continents,
    this.cca2,
    this.ccn3,
    this.cca3,
    this.cioc,
    this.status,
    this.region,
    this.subregion,
    this.flag,
    this.fifa,
    this.startOfWeek,
    this.independent,
    this.unMember,
    this.landlocked,
    this.area,
    this.population,
    this.n1,
    this.c1,
    this.i1,
    this.l1,
    this.t1,
    this.d1,
    this.m1,
    this.c2,
    this.f1,
    this.c3,
    this.c4,
    this.p1,
  });

  CountryModel nameFromJson(Map M1) {
    tld = M1['tld'];
    cca2 = M1['cca2'];
    ccn3 = M1['ccn3'];
    cca3 = M1['cca3'];
    cioc = M1['cioc'];
    independent = M1['independent'];
    status = M1['status'];
    unMember = M1['unMember'];
    capital = M1['capital'];
    altSpellings = M1['altSpellings'];
    region = M1['region'];
    subregion = M1['subregion'];
    latlng = M1['latlng'];
    landlocked = M1['landlocked'];
    area = M1['area'];
    flag = M1['flag'];
    population = M1['population'];
    fifa = M1['fifa'];
    timezones = M1['timezones'];
    continents = M1['continents'];
    startOfWeek = M1['startOfWeek'];
    n1 = nameModel().nameFromJson(M1['name']);
    // c1 = currenciesModel().currenciesFromJson(M1['currencies']);
    i1 = iddModel().iddFromJson(M1['idd']);
    // l1 = languagesModel().languagesFromJson(M1['languages']);
    t1 = translationsModel().translationsFromJson(M1['translations']);
    // d1 = demonymsModel().demonymsFromJson(M1['demonyms']);
    m1 = mapsModel().mapsFromJson(M1['maps']);
    c2 = carModel().carFromJson(M1['car']);
    f1 = flagsModel().flagsFromJson(M1['flags']);
    c3 = coatOfArmsModel().coatOfArmsFromjson(M1['coatOfArms']);
    c4 = capitalInfoModel().capitalinfoFromJson(M1['capitalInfo']);
    // p1 = postalCodeModel().postalCodeFromJson(M1['postalCode']);

    CountryModel C1 = CountryModel(
      n1: n1,
      f1: f1,
      continents: continents,
      latlng: latlng,
      status: status,
      altSpellings: altSpellings,
      area: area,
      c1: c1,
      c2: c2,
      c3: c3,
      c4: c4,
      capital: capital,
      cca2: cca2,
      cca3: cca3,
      ccn3: cca3,
      cioc: cioc,
      d1: d1,
      fifa: fifa,
      flag: flag,
      i1: i1,
      independent: independent,
      l1: l1,
      landlocked: landlocked,
      m1: m1,
      p1: p1,
      population: population,
      region: region,
      startOfWeek: startOfWeek,
      subregion: subregion,
      t1: t1,
      timezones: timezones,
      tld: tld,
      unMember: unMember,
    );

    return C1;
  }
}

class nameModel {
  String? common, official;
  nativeNameModel? n1;

  nameModel({
    this.common,
    this.official,
    this.n1,
  });

  nameModel nameFromJson(Map m1) {
    official = m1['official'];
    common = m1['common'];
    // n1 = nativeNameModel().nativeNameFormJson(m1['nativeName']);

    nameModel name1 = nameModel(
      common: common,
      official: official,
      // n1: n1,
    );
    return name1;
  }
}

class nativeNameModel {
  eng1Model? e1;

  nativeNameModel({
    this.e1,
  });

  nativeNameModel? nativeNameFormJson(Map? m1) {
    if (m1 != null) {
      e1 = eng1Model().eng1FromJson(m1['eng']);

      nativeNameModel n1 = nativeNameModel(e1: e1);

      return n1;
    }
    return null;
  }
}

class eng1Model {
  String? common, official;

  eng1Model({
    this.common,
    this.official,
  });

  eng1Model eng1FromJson(Map m1) {
    common = m1['common'];
    official = m1['official'];

    eng1Model e1 = eng1Model(
      official: official,
      common: common,
    );

    return e1;
  }
}

class currenciesModel {
  BBDModel? bbdModel;

  currenciesModel({
    this.bbdModel,
  });

  currenciesModel currenciesFromJson(Map m1) {
    bbdModel = BBDModel().BBDFromJson(m1['BBD']);

    currenciesModel c1 = currenciesModel(
      bbdModel: bbdModel,
    );

    return c1;
  }
}

class BBDModel {
  String? name, symbol;

  BBDModel({
    this.name,
    this.symbol,
  });

  BBDModel BBDFromJson(Map m1) {
    name = m1['name'];
    symbol = m1['symbol'];

    BBDModel b1 = BBDModel(
      name: name,
      symbol: symbol,
    );

    return b1;
  }
}

class iddModel {
  String? root;
  List? suffixes;

  iddModel({
    this.root,
    this.suffixes,
  });

  iddModel iddFromJson(Map m1) {
    root = m1['root'];
    suffixes = m1['suffixes'];

    iddModel i1 = iddModel(
      root: root,
      suffixes: suffixes,
    );

    return i1;
  }
}

class languagesModel {
  String? eng;

  languagesModel({
    this.eng,
  });

  languagesModel languagesFromJson(Map m1) {
    eng = m1['eng'];

    languagesModel l1 = languagesModel(
      eng: eng,
    );

    return l1;
  }
}

class translationsModel {
  araModel? are;
  breModel? bre;
  cesModel? ces;
  cymModel? cym;
  deuModel? deu;
  estModel? est;
  finModel? fin;
  fraModel? fra;
  hrvModel? hrv;
  hunModel? hun;
  itaModel? ita;
  jpnModel? jpn;
  korModel? kor;
  nldModel? nld;
  perModel? per;
  polModel? pol;
  porModel? por;
  rusModel? rus;
  slkModel? slk;
  spaModel? spa;
  srpModel? srp;
  sweModel? swe;
  turModel? tur;
  urdModel? urd;
  zhoModel? zho;

  translationsModel({
    this.are,
    this.bre,
    this.ces,
    this.cym,
    this.deu,
    this.est,
    this.fin,
    this.fra,
    this.hrv,
    this.hun,
    this.ita,
    this.jpn,
    this.kor,
    this.nld,
    this.per,
    this.pol,
    this.por,
    this.rus,
    this.slk,
    this.spa,
    this.srp,
    this.swe,
    this.tur,
    this.urd,
    this.zho,
  });

  translationsModel translationsFromJson(Map m1) {
    are = araModel().araFromJson(m1['ara']);
    bre = breModel().breFromJson(m1['bre']);
    ces = cesModel().cesFromJson(m1['ces']);
    cym = cymModel().cymFromJson(m1['cym']);
    deu = deuModel().deuFromJson(m1['deu']);
    est = estModel().estFromJson(m1['est']);
    fin = finModel().finFromJson(m1['fin']);
    fra = fraModel().fraFromJson(m1['fra']);
    // hrv = hrvModel().hrvFromJson(m1['hrv']);
    hun = hunModel().hunFromJson(m1['hun']);
    ita = itaModel().itaFromJson(m1['ita']);
    // jpn = jpnModel().jpnFromJson(m1['jpn']);
    kor = korModel().korFormJson(m1['kor']);
    nld = nldModel().nldFormJson(m1['nld']);
    // per = perModel().preFormJson(m1['per']);
    pol = polModel().polFormJson(m1['pol']);
    por = porModel().porFormJson(m1['por']);
    rus = rusModel().rusFormJson(m1['rus']);
    slk = slkModel().zhoFormJson(m1['slk']);
    spa = spaModel().spaFormJson(m1['spa']);
    srp = srpModel().srpFormJson(m1['srp']);
    swe = sweModel().sweFormJson(m1['swe']);
    tur = turModel().zhoFormJson(m1['tur']);
    urd = urdModel().urdFormJson(m1['urd']);
    // zho = zhoModel().zhoFormJson(m1['zho']);

    translationsModel t1 = translationsModel(
      are: are,
      bre: bre,
      ces: ces,
      cym: cym,
      deu: deu,
      est: est,
      fin: fin,
      fra: fra,
      hrv: hrv,
      hun: hun,
      ita: ita,
      jpn: jpn,
      kor: kor,
      nld: nld,
      per: per,
      pol: pol,
      por: por,
      rus: rus,
      slk: slk,
      spa: spa,
      srp: srp,
      swe: swe,
      tur: tur,
      urd: urd,
      zho: zho,
    );
    return t1;
  }
}

class araModel {
  String? official, common;

  araModel({
    this.official,
    this.common,
  });

  araModel araFromJson(Map m1) {
    common = m1['common'];
    official = m1['official'];

    araModel a1 = araModel(
      common: common,
      official: official,
    );

    return a1;
  }
}

class breModel {
  String? official, common;

  breModel({
    this.official,
    this.common,
  });

  breModel breFromJson(Map m1) {
    common = m1['common'];
    official = m1['official'];

    breModel b1 = breModel(
      common: common,
      official: official,
    );

    return b1;
  }
}

class cesModel {
  String? official, common;

  cesModel({
    this.official,
    this.common,
  });

  cesModel cesFromJson(Map m1) {
    common = m1['common'];
    official = m1['official'];

    cesModel c1 = cesModel(
      common: common,
      official: official,
    );

    return c1;
  }
}

class cymModel {
  String? official, common;

  cymModel({
    this.official,
    this.common,
  });

  cymModel cymFromJson(Map m1) {
    common = m1['common'];
    official = m1['official'];

    cymModel c1 = cymModel(
      common: common,
      official: official,
    );

    return c1;
  }
}

class deuModel {
  String? official, common;

  deuModel({
    this.official,
    this.common,
  });

  deuModel deuFromJson(Map m1) {
    common = m1['common'];
    official = m1['official'];

    deuModel d1 = deuModel(
      common: common,
      official: official,
    );

    return d1;
  }
}

class estModel {
  String? official, common;

  estModel({
    this.official,
    this.common,
  });

  estModel estFromJson(Map m1) {
    common = m1['common'];
    official = m1['official'];

    estModel e1 = estModel(
      common: common,
      official: official,
    );

    return e1;
  }
}

class finModel {
  String? official, common;

  finModel({
    this.official,
    this.common,
  });

  finModel finFromJson(Map m1) {
    common = m1['common'];
    official = m1['official'];

    finModel f1 = finModel(
      common: common,
      official: official,
    );

    return f1;
  }
}

class fra1Model {
  String? official, common;

  fra1Model({
    this.official,
    this.common,
  });

  fra1Model fra1FromJson(Map m1) {
    common = m1['common'];
    official = m1['official'];

    fra1Model f1 = fra1Model(
      common: common,
      official: official,
    );

    return f1;
  }
}

class hrvModel {
  String? official, common;

  hrvModel({
    this.official,
    this.common,
  });

  hrvModel hrvFromJson(Map m1) {
    common = m1['common'];
    official = m1['official'];

    hrvModel h1 = hrvModel(
      common: common,
      official: official,
    );

    return h1;
  }
}

class hunModel {
  String? official, common;

  hunModel({
    this.official,
    this.common,
  });

  hunModel hunFromJson(Map m1) {
    common = m1['common'];
    official = m1['official'];

    hunModel h1 = hunModel(
      common: common,
      official: official,
    );

    return h1;
  }
}

class itaModel {
  String? official, common;

  itaModel({
    this.official,
    this.common,
  });

  itaModel itaFromJson(Map m1) {
    common = m1['common'];
    official = m1['official'];

    itaModel i1 = itaModel(
      common: common,
      official: official,
    );

    return i1;
  }
}

class jpnModel {
  String? official, common;

  jpnModel({
    this.official,
    this.common,
  });

  jpnModel jpnFromJson(Map m1) {
    common = m1['common'];
    official = m1['official'];

    jpnModel j1 = jpnModel(
      common: common,
      official: official,
    );

    return j1;
  }
}

class korModel {
  String? official, common;

  korModel({this.official, this.common});

  korModel korFormJson(Map m1) {
    official = m1['official'];
    common = m1['common'];

    korModel k1 = korModel(common: common, official: official);
    return k1;
  }
}

class nldModel {
  String? official, common;

  nldModel({this.official, this.common});

  nldModel nldFormJson(Map m1) {
    official = m1['official'];
    common = m1['common'];

    nldModel n1 = nldModel(common: common, official: official);
    return n1;
  }
}

class perModel {
  String? official, common;

  perModel({this.official, this.common});

  perModel preFormJson(Map m1) {
    official = m1['official'];
    common = m1['common'];

    perModel p1 = perModel(common: common, official: official);
    return p1;
  }
}

class polModel {
  String? official, common;

  polModel({this.official, this.common});

  polModel polFormJson(Map m1) {
    official = m1['official'];
    common = m1['common'];

    polModel p1 = polModel(common: common, official: official);
    return p1;
  }
}

class porModel {
  String? official, common;

  porModel({this.official, this.common});

  porModel porFormJson(Map m1) {
    official = m1['official'];
    common = m1['common'];

    porModel p1 = porModel(common: common, official: official);
    return p1;
  }
}

class rusModel {
  String? official, common;

  rusModel({this.official, this.common});

  rusModel rusFormJson(Map m1) {
    official = m1['official'];
    common = m1['common'];

    rusModel r1 = rusModel(common: common, official: official);
    return r1;
  }
}

class slkModel {
  String? official, common;

  slkModel({this.official, this.common});

  slkModel zhoFormJson(Map m1) {
    official = m1['official'];
    common = m1['common'];

    slkModel s1 = slkModel(common: common, official: official);
    return s1;
  }
}

class spaModel {
  String? official, common;

  spaModel({this.official, this.common});

  spaModel spaFormJson(Map m1) {
    official = m1['official'];
    common = m1['common'];

    spaModel s1 = spaModel(common: common, official: official);
    return s1;
  }
}

class srpModel {
  String? official, common;

  srpModel({this.official, this.common});

  srpModel srpFormJson(Map m1) {
    official = m1['official'];
    common = m1['common'];

    srpModel s1 = srpModel(common: common, official: official);
    return s1;
  }
}

class sweModel {
  String? official, common;

  sweModel({this.official, this.common});

  sweModel sweFormJson(Map m1) {
    official = m1['official'];
    common = m1['common'];

    sweModel s1 = sweModel(common: common, official: official);
    return s1;
  }
}

class turModel {
  String? official, common;

  turModel({this.official, this.common});

  turModel zhoFormJson(Map m1) {
    official = m1['official'];
    common = m1['common'];

    turModel t1 = turModel(common: common, official: official);
    return t1;
  }
}

class urdModel {
  String? official, common;

  urdModel({this.official, this.common});

  urdModel urdFormJson(Map m1) {
    official = m1['official'];
    common = m1['common'];

    urdModel u1 = urdModel(common: common, official: official);
    return u1;
  }
}

class zhoModel {
  String? official, common;

  zhoModel({this.official, this.common});

  zhoModel zhoFormJson(Map m1) {
    official = m1['official'];
    common = m1['common'];

    zhoModel z1 = zhoModel(common: common, official: official);
    return z1;
  }
}

class demonymsModel {
  engModel? e1;
  fraModel? f1;

  demonymsModel({
    this.e1,
    this.f1,
  });

  demonymsModel demonymsFromJson(Map m1) {
    e1 = engModel().engFromJson(m1['eng']);
    // f1 = fraModel().fraFromJson(m1['fra']);

    demonymsModel d1 = demonymsModel(e1: e1, f1: f1);

    return d1;
  }
}

class engModel {
  String? f, m;

  engModel({
    this.f,
    this.m,
  });

  engModel engFromJson(Map m1) {
    f = m1['f'];
    m = m1['m'];

    engModel e1 = engModel(
      f: f,
      m: m,
    );

    return e1;
  }
}

class fraModel {
  String? f, m;

  fraModel({
    this.f,
    this.m,
  });

  fraModel fraFromJson(Map m1) {
    f = m1['f'];
    m = m1['m'];

    fraModel f1 = fraModel(
      f: f,
      m: m,
    );

    return f1;
  }
}

class mapsModel {
  String? googleMaps, openStreetMaps;

  mapsModel({
    this.googleMaps,
    this.openStreetMaps,
  });

  mapsModel mapsFromJson(Map m1) {
    googleMaps = m1['googleMaps'];
    openStreetMaps = m1['openStreetMaps'];

    mapsModel M1 = mapsModel();
    return M1;
  }
}

class carModel {
  String? side;
  List? signs;

  carModel({
    this.side,
    this.signs,
  });

  carModel carFromJson(Map m1) {
    side = m1['side'];
    signs = m1['signs'];

    carModel c1 = carModel(
      side: side,
      signs: signs,
    );

    return c1;
  }
}

class flagsModel {
  String? png, svg, alt;

  flagsModel({
    this.png,
    this.svg,
    this.alt,
  });

  flagsModel flagsFromJson(Map m1) {
    png = m1['png'];
    svg = m1['svg'];
    alt = m1['alt'];

    flagsModel f1 = flagsModel(
      svg: svg,
      png: png,
      alt: alt,
    );

    return f1;
  }
}

class coatOfArmsModel {
  String? png, svg;

  coatOfArmsModel({
    this.png,
    this.svg,
  });

  coatOfArmsModel coatOfArmsFromjson(Map m1) {
    png = m1['png'];
    svg = m1['svg'];

    coatOfArmsModel c1 = coatOfArmsModel(
      png: png,
      svg: svg,
    );

    return c1;
  }
}

class capitalInfoModel {
  List? latlng;

  capitalInfoModel({this.latlng});

  capitalInfoModel capitalinfoFromJson(Map m1) {
    latlng = m1['latlng'];

    capitalInfoModel c1 = capitalInfoModel(
      latlng: latlng,
    );
    return c1;
  }
}

class postalCodeModel {
  String? format, regex;

  postalCodeModel({
    this.format,
    this.regex,
  });

  postalCodeModel postalCodeFromJson(Map m1) {
    format = m1['format'];
    regex = m1['regex'];

    postalCodeModel p1 = postalCodeModel(
      format: format,
      regex: regex,
    );

    return p1;
  }
}
