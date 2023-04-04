
class CountryModal {
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
      side,
      startOfWeek;
  bool? landlocked, independent, unMember;
  int? area, population;
  NameModal? nameModal;
  currencies? c0;
  idd? i2;
  languagesModal? langugesModal;
  TranslationsMOdal? translationsMOdal;
  car? c1;
  coatOfArms? c2;
  FlagsModal? flagsModal;
  postalCode? p1;
  demonyms? d2;
  MapsModal? mapsModal;
  capitalInfo? c3;
  List<CountryModal>? countryList = [];

  CountryModal(
      {this.tld,
        this.countryList,
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
        this.side,
        this.startOfWeek,
        this.landlocked,
        this.independent,
        this.unMember,
        this.area,
        this.population,
        this.nameModal,
        this.c0,
        this.i2,
        this.langugesModal,
        this.translationsMOdal,
        this.c1,
        this.c2,
        this.flagsModal,
        this.p1,
        this.d2,
        this.mapsModal,
        this.c3});

  CountryModal CountryFromJson(Map m1) {
    i2 = m1[''];
    capital = m1['capital'];
    latlng = m1['latlng'];
    c0 = currencies().currenciesFromJson(m1['currencies']);
    status = m1['status'];
    cca2 = m1['cca2'];
    cca3 = m1['cca3'];
    ccn3 = m1['ccn3'];
    independent = m1['indepemdent'];
    unMember = m1['unMember'];
    // i2 = idd().iddFromJson(m1['idd']);
    tld = m1['tld'];
    altSpellings = m1['altSpellings'];
    region = m1['region'];
    subregion = m1['subregion'];
    landlocked = m1['landlocked'];
    flag = m1['flag'];
    nameModal = NameModal().nameFromJson(m1['name']);
    mapsModal = MapsModal().mapsFromJson(m1['maps']);
    population = m1['population'];
    fifa = m1['fifa'];
    // c1 = car().carFromJson(m1['car']);
    timezones = m1['timezones'];
    continents = m1['continents'];
    c2 = coatOfArms().coatOfArmsFromJson(m1['coatOfArms']);
    startOfWeek = m1['startOfWeek'];
    c3 = capitalInfo().capitalInfoFromJson(m1['capitalInfo']);
    List alist = m1['Country'];

    countryList =
        countryList?.map((e) => CountryModal().CountryFromJson(m1)).toList();

    CountryModal countryModal1 = CountryModal(
      countryList: countryList,
      latlng: latlng,
      p1: p1,
      flagsModal: flagsModal,
      side: side,
      status: status,
      altSpellings: altSpellings,
      area: area,
      c0: c0,
      c1: c1,
      c2: c2,
      c3: c3,
      capital: capital,
      cca2: cca2,
      cca3: cca3,
      ccn3: ccn3,
      cioc: cioc,
      continents: continents,
      d2: d2,
      fifa: fifa,
      flag: flag,
      i2: i2,
      independent: independent,
      langugesModal: langugesModal,
      landlocked: landlocked,
      mapsModal: mapsModal,
      nameModal: nameModal,
      population: population,
      region: region,
      startOfWeek: startOfWeek,
      subregion: subregion,
      translationsMOdal: translationsMOdal,
      timezones: timezones,
      tld: tld,
      unMember: unMember,
    );
    return countryModal1;
  }
}

class NameModal {
  String? common, official;
  NativeNameModal? n1;

  NameModal({this.common, this.official, this.n1});

  NameModal nameFromJson(Map m1) {
    common = m1['common'];
    official = m1['official'];
    n1 = NativeNameModal().nativeFromJson(m1['nativeName']);

    NameModal n4 = NameModal(common: common, official: official, n1: n1);
    return n4;
  }
}

class NativeNameModal {
  EngModal? e2;

  NativeNameModal({this.e2});

  NativeNameModal nativeFromJson(Map m1) {
    EngModal e2 = EngModal().engFromJson(m1['eng']);
    NativeNameModal n1 = NativeNameModal(e2: e2);
    return n1;
  }
}

class EngModal {
  String? official, common;

  EngModal({this.official, this.common});

  EngModal engFromJson(Map m1) {
    official = m1['official'];
    common = m1['common'];
    EngModal e2 = EngModal(official: official, common: common);
    return e2;
  }
}

class languagesModal {
  String? eng;

  languagesModal({this.eng});

  languagesModal lamguagesFromJson(Map m1) {
    eng = m1['eng'];
    languagesModal l1 = languagesModal(eng: eng);
    return l1;
  }
}

class TranslationsMOdal {
  bre? b1;
  ara? a2;
  ces? c5;
  cym? c4;
  deu? d1;
  est? e1;
  fin? f2;
  nld? n1;
  kor? k1;
  jpn? j1;
  ita? i1;
  hun? h2;
  hrv? h1;
  fra? f1;
  per? p3;
  pol? p2;
  por? p1;
  rus? r1;
  slk? s4;
  spa? s3;
  srp? s2;
  swe? s1;
  tur? t1;
  zho? z1;
  urd? u1;

  TranslationsMOdal(
      {this.b1,
        this.a2,
        this.c5,
        this.c4,
        this.d1,
        this.e1,
        this.f2,
        this.n1,
        this.k1,
        this.j1,
        this.i1,
        this.h2,
        this.h1,
        this.f1,
        this.p3,
        this.p2,
        this.p1,
        this.r1,
        this.s4,
        this.s3,
        this.s2,
        this.s1,
        this.t1,
        this.z1,
        this.u1});

  TranslationsMOdal extraJsonParsing(Map m1) {
    ara a2 = ara().araFromJson(m1['ara']);
    bre b1 = bre().breFromJson(m1['bre']);
    ces c5 = ces().cesFromJson(m1['ces']);
    cym c4 = cym().cymFromJson(m1['cym']);
    deu d1 = deu().deuFromJson(m1['deu']);
    est e1 = est().estFromJson(m1['est']);
    fin f2 = fin().finFromJson(m1['fin']);
    fra f1 = fra().fraFromJson(m1['fra']);
    hrv h1 = hrv().hrvFromJson(m1['hrv']);
    hun h2 = hun().hunFromJson(m1['hun']);

    ita i1 = ita().itaFromJson(m1['ita']);

    jpn j1 = jpn().jpnFromJson(m1['jpn']);

    kor k1 = kor().korFromJson(m1['kor']);

    nld n1 = nld().nldFromJson(m1['nld']);

    per p3 = per().perFromJson(m1['per']);

    pol p2 = pol().polFromJson(m1['pol']);
    por p1 = por().porFromJson(m1['por']);

    rus r1 = rus().rusFromJson(m1['rus']);

    slk s4 = slk().slkFromJson(m1['slk']);

    spa s3 = spa().spaFromJson(m1['spa']);

    srp s2 = srp().srpFromJson(m1['srp']);

    swe s1 = swe().sweFromJson(m1['swe']);
    tur t1 = tur().turFromJson(m1['tur']);
    zho z1 = zho().zhoFromJson(m1['zho']);
    urd u1 = urd().urdFromJson(m1['urd']);

    TranslationsMOdal t2 = TranslationsMOdal(
        a2: a2,
        b1: b1,
        c4: c4,
        c5: c5,
        d1: d1,
        e1: e1,
        f1: f1,
        f2: f2,
        h1: h1,
        h2: h2,
        i1: i1,
        j1: j1,
        k1: k1,
        n1: n1,
        p1: p1,
        p2: p2,
        p3: p3,
        r1: r1,
        s1: s1,
        s2: s2,
        s3: s3,
        s4: s4,
        t1: t1,
        u1: u1,
        z1: z1);
    return t2;
  }
}

class ara {
  String? official, common;

  ara({this.official, this.common});

  ara araFromJson(Map m1) {
    official = m1['official'];
    common = m1['common'];

    ara a2 = ara(official: official, common: common);
    return a2;
  }
}

class bre {
  String? official, common;

  bre({this.official, this.common});

  bre breFromJson(Map m1) {
    official = m1['official'];
    common = m1['common'];

    bre b1 = bre(official: official, common: common);
    return b1;
  }
}

class ces {
  String? official, common;

  ces({this.official, this.common});

  ces cesFromJson(Map m1) {
    official = m1['official'];
    common = m1['common'];

    ces c5 = ces(official: official, common: common);
    return c5;
  }
}

class cym {
  String? official, common;

  cym({this.official, this.common});

  cym cymFromJson(Map m1) {
    official = m1['official'];
    common = m1['common'];

    cym c4 = cym(official: official, common: common);
    return c4;
  }
}

class deu {
  String? official, common;

  deu({this.official, this.common});

  deu deuFromJson(Map m1) {
    official = m1['official'];
    common = m1['common'];

    deu d1 = deu(official: official, common: common);
    return d1;
  }
}

class est {
  String? official, common;

  est({this.official, this.common});

  est estFromJson(Map m1) {
    official = m1['official'];
    common = m1['common'];

    est e1 = est(official: official, common: common);
    return e1;
  }
}

class fin {
  String? official, common;

  fin({this.official, this.common});

  fin finFromJson(Map m1) {
    official = m1['official'];
    common = m1['common'];

    fin f2 = fin(official: official, common: common);
    return f2;
  }
}

class fra {
  String? official, common;

  fra({this.official, this.common});

  fra fraFromJson(Map m1) {
    official = m1['official'];
    common = m1['common'];

    fra f1 = fra(official: official, common: common);
    return f1;
  }
}

class hrv {
  String? official, common;

  hrv({this.official, this.common});

  hrv hrvFromJson(Map m1) {
    official = m1['official'];
    common = m1['common'];

    hrv h1 = hrv(official: official, common: common);
    return h1;
  }
}

class hun {
  String? official, common;

  hun({this.official, this.common});

  hun hunFromJson(Map m1) {
    official = m1['official'];
    common = m1['common'];

    hun h2 = hun(official: official, common: common);
    return h2;
  }
}

class ita {
  String? official, common;

  ita({this.official, this.common});

  ita itaFromJson(Map m1) {
    official = m1['official'];
    common = m1['common'];

    ita i1 = ita(official: official, common: common);
    return i1;
  }
}

class jpn {
  String? official, common;

  jpn({this.official, this.common});

  jpn jpnFromJson(Map m1) {
    official = m1['official'];
    common = m1['common'];

    jpn j1 = jpn(official: official, common: common);
    return j1;
  }
}

class kor {
  String? official, common;

  kor({this.official, this.common});

  kor korFromJson(Map m1) {
    official = m1['official'];
    common = m1['common'];

    kor k1 = kor(official: official, common: common);
    return k1;
  }
}

class nld {
  String? official, common;

  nld({this.official, this.common});

  nld nldFromJson(Map m1) {
    official = m1['official'];
    common = m1['common'];

    nld n1 = nld(official: official, common: common);
    return n1;
  }
}

class per {
  String? official, common;

  per({this.official, this.common});

  per perFromJson(Map m1) {
    official = m1['official'];
    common = m1['common'];

    per p3 = per(official: official, common: common);
    return p3;
  }
}

class pol {
  String? official, common;

  pol({this.official, this.common});

  pol polFromJson(Map m1) {
    official = m1['official'];
    common = m1['common'];

    pol p2 = pol(official: official, common: common);
    return p2;
  }
}

class por {
  String? official, common;

  por({this.official, this.common});

  por porFromJson(Map m1) {
    official = m1['official'];
    common = m1['common'];

    por p1 = por(official: official, common: common);
    return p1;
  }
}

class rus {
  String? official, common;

  rus({this.official, this.common});

  rus rusFromJson(Map m1) {
    official = m1['official'];
    common = m1['common'];

    rus r1 = rus(official: official, common: common);
    return r1;
  }
}

class slk {
  String? official, common;

  slk({this.official, this.common});

  slk slkFromJson(Map m1) {
    official = m1['official'];
    common = m1['common'];

    slk s4 = slk(official: official, common: common);
    return s4;
  }
}

class spa {
  String? official, common;

  spa({this.official, this.common});

  spa spaFromJson(Map m1) {
    official = m1['official'];
    common = m1['common'];

    spa s3 = spa(official: official, common: common);
    return s3;
  }
}

class srp {
  String? official, common;

  srp({this.official, this.common});

  srp srpFromJson(Map m1) {
    official = m1['official'];
    common = m1['common'];

    srp s2 = srp(official: official, common: common);
    return s2;
  }
}

class swe {
  String? official, common;

  swe({this.official, this.common});

  swe sweFromJson(Map m1) {
    official = m1['official'];
    common = m1['common'];

    swe s1 = swe(official: official, common: common);
    return s1;
  }
}

class tur {
  String? official, common;

  tur({this.official, this.common});

  tur turFromJson(Map m1) {
    official = m1['official'];
    common = m1['common'];

    tur t1 = tur(common: common, official: official);
    return t1;
  }
}

class urd {
  String? official, common;

  urd({this.official, this.common});

  urd urdFromJson(Map m1) {
    official = m1['official'];
    common = m1['common'];

    urd u1 = urd(official: official, common: common);
    return u1;
  }
}

class zho {
  String? official, common;

  zho({this.official, this.common});

  zho zhoFromJson(Map m1) {
    common = m1['common'];
    official = m1['official'];
    zho z1 = zho(common: common, official: official);
    return z1;
  }
}

class car {
  String? signs, side;

  car({this.signs, this.side});

  car carFromJson(Map m1) {
    side = m1['side'];
    signs = m1['signs'];

    car c1 = car(side: side, signs: signs);
    return c1;
  }
}

class FlagsModal{
  String? png, svg, alt;

  FlagsModal({this.png, this.svg, this.alt});

  FlagsModal flagsFromjson(Map m1) {
    svg = m1['svg'];
    png = m1['png'];
    alt = m1['alt'];

    FlagsModal f1 = FlagsModal(svg: svg, png: png, alt: alt);
    return f1;
  }
}

class coatOfArms {
  String? png, svg;

  coatOfArms({this.png, this.svg});

  coatOfArms coatOfArmsFromJson(Map m1) {
    png = m1['png'];
    svg = m1['svg'];

    coatOfArms c2 = coatOfArms(png: png, svg: svg);
    return c2;
  }
}

class currencies {
  BBD? b1;

  currencies({this.b1});

  currencies currenciesFromJson(Map m1) {
    b1 = BBD().BBdFromJson(m1['BBD']);
    currencies c0 = currencies(b1: b1);
    return c0;
  }
}

class BBD {
  String? name, symbol;

  BBD({this.name, this.symbol});

  BBD BBdFromJson(Map m1) {
    name = m1['name'];
    symbol = m1['symbol'];
    BBD b1 = BBD(name: name, symbol: symbol);
    return b1;
  }
}

class postalCode {
  String? format, regex;

  postalCode({this.format, this.regex});

  postalCode postcodeJson(Map m1) {
    format = m1['format'];
    regex = m1['regex'];
    postalCode p1 = postalCode(format: format, regex: regex);
    return p1;
  }
}

class idd {
  String? root, suffixes;

  idd({this.root, this.suffixes});

  idd iddFromJson(Map m1) {
    root = m1['root'];
    suffixes = m1['suffixes'];
    idd i2 = idd(root: root, suffixes: suffixes);
    return i2;
  }
}

class demonyms {
  eng1? eng;

  demonyms({this.eng});

  demonyms demonymsFromJson(Map m1) {
    eng = eng1().eng1FromJson(m1['eng']);
    demonyms d2 = demonyms(eng: eng);
    return d2;
  }
}

class eng1 {
  String? f, m;

  eng1({this.f, this.m});

  eng1 eng1FromJson(Map m1) {
    f = m1['f'];
    m = m1['m'];
    eng1 eng = eng1(m: m, f: f);
    return eng;
  }
}

class MapsModal {
  String? googleMaps, openStreetMaps;

  MapsModal({this.googleMaps, this.openStreetMaps});

  MapsModal mapsFromJson(Map m1) {
    googleMaps = m1['googleMaps'];
    openStreetMaps = m1['openStreetMaps'];
    MapsModal map = MapsModal(googleMaps: googleMaps, openStreetMaps: openStreetMaps);
    return map;
  }
}

class capitalInfo {
  List? latlng;

  capitalInfo({this.latlng});

  capitalInfo capitalInfoFromJson(Map m1) {
    latlng = m1['latlng'];
    capitalInfo c3 = capitalInfo(latlng: latlng);
    return c3;
  }
}
