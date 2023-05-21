let sc0_o_d,sc0_o_f,sc0_o_r,sc0_o_e,sc0_i_r,sc0_i_e,sc_0_o,sc_0_i,n_0,scm0_f,scm0_d,scm0_o_r,scm0_i_r,scm0_o_e,scm0_i_e,sscm0_f,sscm0_d
let s_sc0_1,s_n_0,e_n_0,sc0_t_s,e_sc0_1,sc0_t_e,ssc0_t_s,ssc0_t_e,ssc0_t_r,sc0_n_r,sct0_o_e,sct0_o_r,sct0_i_e,sct0_i_r,ssct0_d,ssct0_f
let sct0_d,sct0_f,sctn0_d,sctn0_f,ssctn0_d,ssctn0_f,sct0_r_o,sct0_e_o,sct0_r_i,sct0_e_i,sct0_r_n,sct0_e_n,m0_o_f,m0_o_d,ms0_o_f,ms0_o_d
//Shortcut 0

if(document.querySelector('.search-sc-10') != undefined){

    //definition des path (o = outer / i = inner / d = deploy / f = fold / s = search / sc = shortcut)
    sc0_o_d = "M22.7696 65.5L1.5 0.5H204L223 65.5H22.7696Z"
    sc0_o_f = "M21.2696 60.5L1.5 0.5H204L221.5 60.5H21.2696Z"
    sc0_o_r = "M80.5 59H17.5L1 0H64L80.5 59Z"
    sc0_o_e = "M82 64.5H19L1 0H64L82 64.5Z"
    sc0_i_r = "M69 50L57 12H14L25 50H69Z"
    sc0_i_e = "M201.5 49.5L188.713 9.5H21.5L34.0916 49.5H201.5Z"

    //selection des elements (o = outer / i = inner / s = search / sc = shortcut / p = path)
    sc_0_o = document.querySelector('#sc0-o')
    sc_0_i = document.querySelector('#sc0-i')
    n_0 = document.querySelector('#n-0')

    //definition des morph (scm = shortcut morph / sm = search morph / d = deploy / f = fold / o = outer / i = inner)
    scm0_f = KUTE.fromTo(sc_0_o, { path: sc0_o_d }, { path: sc0_o_f }, { easing: 'easingExponentialOut',duration: 50 })
    scm0_d = KUTE.fromTo(sc_0_o, { path: sc0_o_f }, { path: sc0_o_d }, { easing: 'easingExponentialOut',duration: 50 })
    scm0_o_r = KUTE.fromTo(sc_0_o, { path: sc0_o_d }, { path: sc0_o_r }, { easing: 'easingExponentialOut',duration: 200 })
    scm0_i_r = KUTE.fromTo(sc_0_i, { path: sc0_i_e }, { path: sc0_i_r }, { easing: 'easingExponentialOut',duration: 200 })
    scm0_o_e = KUTE.fromTo(sc_0_o, { path: sc0_o_r }, { path: sc0_o_f }, { easing: 'easingExponentialOut',duration: 200 })
    scm0_i_e = KUTE.fromTo(sc_0_i, { path: sc0_i_r }, { path: sc0_i_e }, { easing: 'easingExponentialOut',duration: 200 })
    sscm0_f = KUTE.fromTo(sc_0_o, { path: sc0_o_e }, { path: sc0_o_r }, { easing: 'easingExponentialOut',duration: 50 })
    sscm0_d = KUTE.fromTo(sc_0_o, { path: sc0_o_r }, { path: sc0_o_e }, { easing: 'easingExponentialOut',duration: 50 })

    //definition des mouvement (st = search transition / sct = shortcut transition / sctn = shortcut transition notification / d = deploy / f = fold / o = outer / i = inner))
    s_sc0_1 = { translateX: 452, translateY: 0 }
    s_n_0 = { translateX: 452, translateY: 0 }
    e_n_0 = { translateX: 454.5, translateY: 5 }
    sc0_t_s = { translateX: 452, translateY: 0 }
    e_sc0_1 = { translateX: 454.5, translateY: 5 }
    sc0_t_e = { translateX: 137, translateY: 0 }
    ssc0_t_s = { translateX: 137, translateY: 0 }
    ssc0_t_e = { translateX: 139.5, translateY: 5 }
    ssc0_t_r = { translateX: 132, translateY: 5 }
    sc0_n_r = { translateX: 130, translateY: 0 }

    //Declaration des animations
    sct0_o_e = KUTE.fromTo(sc_0_o, sc0_t_s, sc0_t_e, { easing: 'easingExponentialOut',duration: 250 })
    sct0_o_r = KUTE.fromTo(sc_0_o, sc0_t_e, sc0_t_s, { easing: 'easingExponentialOut',duration: 250 })
    sct0_i_e = KUTE.fromTo(sc_0_i, sc0_t_s, sc0_t_e, { easing: 'easingExponentialOut',duration: 250 })
    sct0_i_r = KUTE.fromTo(sc_0_i, sc0_t_e, sc0_t_s, { easing: 'easingExponentialOut',duration: 250 })
    ssct0_d = KUTE.fromTo(sc_0_i, ssc0_t_s, ssc0_t_e, { easing: 'easingExponentialOut',duration: 50 })
    ssct0_f = KUTE.fromTo(sc_0_i, ssc0_t_e, ssc0_t_s, { easing: 'easingExponentialOut',duration: 50 })
    sct0_d = KUTE.fromTo(sc_0_i, s_sc0_1, e_sc0_1, { easing: 'easingExponentialOut',duration: 50 })
    sct0_f = KUTE.fromTo(sc_0_i, e_sc0_1, s_sc0_1, { easing: 'easingExponentialOut',duration: 50 })
    sctn0_d = KUTE.fromTo(n_0, s_n_0, e_n_0, { easing: 'easingExponentialOut',duration: 50 })
    sctn0_f = KUTE.fromTo(n_0, e_n_0, s_n_0, { easing: 'easingExponentialOut',duration: 50 })
    ssctn0_d = KUTE.fromTo(n_0, sc0_n_r, ssc0_t_r, { easing: 'easingExponentialOut',duration: 50 })
    ssctn0_f = KUTE.fromTo(n_0, ssc0_t_r, sc0_n_r, { easing: 'easingExponentialOut',duration: 50 })
    sct0_r_o = KUTE.fromTo(sc_0_o, sc0_t_s, sc0_t_e, { easing: 'easingExponentialOut',duration: 50 })
    sct0_e_o = KUTE.fromTo(sc_0_o, sc0_t_e, sc0_t_s, { easing: 'easingExponentialOut',duration: 50 })
    sct0_r_i = KUTE.fromTo(sc_0_i, sc0_t_s, sc0_t_e, { easing: 'easingExponentialOut',duration: 50 })
    sct0_e_i = KUTE.fromTo(sc_0_i, sc0_t_e, sc0_t_s, { easing: 'easingExponentialOut',duration: 50 })
    sct0_r_n = KUTE.fromTo(n_0, sc0_t_s, sc0_n_r, { easing: 'easingExponentialOut',duration: 50 })
    sct0_e_n = KUTE.fromTo(n_0, sc0_n_r, sc0_t_s, { easing: 'easingExponentialOut',duration: 50 })

    //masque de selection
    m0_o_f = document.querySelector('#m0-o-f')
    m0_o_d = document.querySelector('#m0-o-d')
    ms0_o_f = document.querySelector('#ms0-o-f')
    ms0_o_d = document.querySelector('#ms0-o-d')

    //ajouter les event listener 
    m0_o_f.addEventListener('mouseenter',sc0Deploy)
    m0_o_d.addEventListener('mouseleave',sc0Fold)
    ms0_o_d.addEventListener('click',focus)

}

let sc1_o_d,sc1_o_f,sc1_o_r,sc1_o_e,sc1_i_r,sc1_i_e,sc_1_o,sc_1_i,n_1,scm1_f,scm1_d,scm1_o_r,scm1_i_r,scm1_o_e,scm1_i_e,sscm1_f,sscm1_d
let s_sc1_1,s_n_1,e_n_1,sc1_t_s,e_sc1_1,sc1_t_e,ssc1_t_s,ssc1_t_e,ssc1_t_r,sc1_n_r,ssct1_d,ssct1_f,sct1_d,sct1_f,sctn1_d,sctn1_f
let ssctn1_d,ssctn1_f,sct1_r_o,sct1_e_o,sct1_r_i,sct1_e_i,sct1_r_n,sct1_e_n,m1_o_f,m1_o_d,ms1_o_f,ms1_o_d

//Shortcut 1

if(document.querySelector('.search-sc-11') != undefined){

    //definition des path (o = outer / i = inner / d = deploy / f = fold / s = search / sc = shortcut)
    sc1_o_d = "M202.5 65.5H1.5L20.5 0.5H223.5L202.5 65.5Z"
    sc1_o_f = "M204 60.5H3L20.5 0.5H223.5L204 60.5Z"
    sc1_o_r = "M3 59H65.6038L82 0H19.3962L3 59Z"
    sc1_o_e = "M1.5 64.5H64.1038L82 0H19.3962L1.5 64.5Z"
    sc1_i_r = "M12 50L24 12H67L56 50H12Z"
    sc1_i_e = "M23 49.5L35.7869 9.5H203L190.408 49.5H23Z"

    //selection des elements (o = outer / i = inner / s = search / sc = shortcut / p = path)
    sc_1_o = document.querySelector('#sc1-o')
    sc_1_i = document.querySelector('#sc1-i')
    n_1 = document.querySelector('#n-1')

    //definition des morph (scm = shortcut morph / sm = search morph / d = deploy / f = fold / o = outer / i = inner)
    scm1_f = KUTE.fromTo(sc_1_o, { path: sc1_o_d }, { path: sc1_o_f }, { easing: 'easingExponentialOut',duration: 200 })
    scm1_d = KUTE.fromTo(sc_1_o, { path: sc1_o_f }, { path: sc1_o_d }, { easing: 'easingExponentialOut',duration: 200 })
    scm1_o_r = KUTE.fromTo(sc_1_o, { path: sc1_o_d }, { path: sc1_o_r }, { easing: 'easingExponentialOut',duration: 200 })
    scm1_i_r = KUTE.fromTo(sc_1_i, { path: sc1_i_e }, { path: sc1_i_r }, { easing: 'easingExponentialOut',duration: 200 })
    scm1_o_e = KUTE.fromTo(sc_1_o, { path: sc1_o_r }, { path: sc1_o_f }, { easing: 'easingExponentialOut',duration: 200 })
    scm1_i_e = KUTE.fromTo(sc_1_i, { path: sc1_i_r }, { path: sc1_i_e }, { easing: 'easingExponentialOut',duration: 200 })
    sscm1_f = KUTE.fromTo(sc_1_o, { path: sc1_o_e }, { path: sc1_o_r }, { easing: 'easingExponentialOut',duration: 50 })
    sscm1_d = KUTE.fromTo(sc_1_o, { path: sc1_o_r }, { path: sc1_o_e }, { easing: 'easingExponentialOut',duration: 50 })

    //definition des mouvement (st = search transition / sct = shortcut transition / sctn = shortcut transition notification / d = deploy / f = fold / o = outer / i = inner))
    s_sc1_1 = { translateX: 756, translateY: 0 }
    s_n_1 = { translateX: 756, translateY: 0 }
    e_n_1 = { translateX: 753.5, translateY: 5 }
    sc1_t_s = { translateX: 756, translateY: 0 }
    e_sc1_1 = { translateX: 753.5, translateY: 5 }
    sc1_t_e = { translateX: 1212, translateY: 0 }
    ssc1_t_s = { translateX: 1212, translateY: 0 }
    ssc1_t_e = { translateX: 1211.5, translateY: 5 }
    ssc1_t_r = { translateX: 1076, translateY: 5 }
    sc1_n_r = { translateX: 1077, translateY: 0 }

    //Declaration des animations
    ssct1_d = KUTE.fromTo(sc_1_i, ssc1_t_s, ssc1_t_e, { easing: 'easingExponentialOut',duration: 50 })
    ssct1_f = KUTE.fromTo(sc_1_i, ssc1_t_e, ssc1_t_s, { easing: 'easingExponentialOut',duration: 50 })
    sct1_d = KUTE.fromTo(sc_1_i, s_sc1_1, e_sc1_1, { easing: 'easingExponentialOut',duration: 50 })
    sct1_f = KUTE.fromTo(sc_1_i, e_sc1_1, s_sc1_1, { easing: 'easingExponentialOut',duration: 50 })
    sctn1_d = KUTE.fromTo(n_1, s_n_1, e_n_1, { easing: 'easingExponentialOut',duration: 50 })
    sctn1_f = KUTE.fromTo(n_1, e_n_1, s_n_1, { easing: 'easingExponentialOut',duration: 50 })
    ssctn1_d = KUTE.fromTo(n_1, sc1_n_r, ssc1_t_r, { easing: 'easingExponentialOut',duration: 50 })
    ssctn1_f = KUTE.fromTo(n_1, ssc1_t_r, sc1_n_r, { easing: 'easingExponentialOut',duration: 50 })
    sct1_r_o = KUTE.fromTo(sc_1_o, sc1_t_s, sc1_t_e, { easing: 'easingExponentialOut',duration: 50 })
    sct1_e_o = KUTE.fromTo(sc_1_o, sc1_t_e, sc1_t_s, { easing: 'easingExponentialOut',duration: 50 })
    sct1_r_i = KUTE.fromTo(sc_1_i, sc1_t_s, sc1_t_e, { easing: 'easingExponentialOut',duration: 50 })
    sct1_e_i = KUTE.fromTo(sc_1_i, sc1_t_e, sc1_t_s, { easing: 'easingExponentialOut',duration: 50 })
    sct1_r_n = KUTE.fromTo(n_1, sc1_t_s, sc1_n_r, { easing: 'easingExponentialOut',duration: 50 })
    sct1_e_n = KUTE.fromTo(n_1, sc1_n_r, sc1_t_s, { easing: 'easingExponentialOut',duration: 50 })


    //masque de selection
    m1_o_f = document.querySelector('#m1-o-f')
    m1_o_d = document.querySelector('#m1-o-d')
    ms1_o_f = document.querySelector('#ms1-o-f')
    ms1_o_d = document.querySelector('#ms1-o-d')


    //ajouter les event listener 
    m1_o_f.addEventListener('mouseenter',sc1Deploy)
    m1_o_d.addEventListener('mouseleave',sc1Fold)
    ms1_o_d.addEventListener('click',focus)
}

let sc2_o_d,sc2_o_f,sc2_o_r,sc2_o_e,sc2_i_r,sc2_i_e,sc_2_o,sc_2_i,n_2,scm2_f,scm2_d,scm2_o_r,scm2_i_r,scm2_o_e,scm2_i_e,sscm2_f,sscm2_d
let s_sc2_1,s_n_2,e_n_2,sc2_t_s,e_sc2_1,sc2_t_e,ssc2_t_s,ssc2_t_e,ssc2_t_r,sc2_n_r,sct2_o_e,sct2_o_r,sct2_i_e,sct2_i_r,ssct2_d,ssct2_f
let sct2_d,sct2_f,sctn2_d,sctn2_f,ssctn2_d,ssctn2_f,sct2_r_o,sct2_e_o,sct2_r_i,sct2_e_i,sct2_r_n,sct2_e_n,m2_o_f,m2_o_d,ms2_o_f,ms2_o_d
//Shortcut 2

if(document.querySelector('.search-sc-12') != undefined){

    //definition des path (o = outer / i = inner / d = deploy / f = fold / s = search / sc = shortcut)
    sc2_o_d = "M222.5 55H21.8465L1 0H204.647L222.5 55Z"
    sc2_o_f = "M221 50H20.3465L1 0H204.647L221 50Z"
    sc2_o_r = "M66 50H15.9603L1 0H52.0714L66 50Z"
    sc2_o_e = "M67.5 55H17.4603L1 0H52.0714L67.5 55Z"
    sc2_i_r = "M54 40H22.5L14 12H45.1111L54 40Z"
    sc2_i_e = "M201 40.5L190.529 9.5H21L32.2051 40.5H201Z"


    //selection des elements (o = outer / i = inner / s = search / sc = shortcut / p = path)
    sc_2_o = document.querySelector('#sc2-o')
    sc_2_i = document.querySelector('#sc2-i')
    n_2 = document.querySelector('#n-2')

    //definition des morph (scm = shortcut morph / sm = search morph / d = deploy / f = fold / o = outer / i = inner)
    scm2_f = KUTE.fromTo(sc_2_o, { path: sc2_o_d }, { path: sc2_o_f }, { easing: 'easingExponentialOut',duration: 200 })
    scm2_d = KUTE.fromTo(sc_2_o, { path: sc2_o_f }, { path: sc2_o_d }, { easing: 'easingExponentialOut',duration: 200 })
    scm2_o_r = KUTE.fromTo(sc_2_o, { path: sc2_o_d }, { path: sc2_o_r }, { easing: 'easingExponentialOut',duration: 200 })
    scm2_i_r = KUTE.fromTo(sc_2_i, { path: sc2_i_e }, { path: sc2_i_r }, { easing: 'easingExponentialOut',duration: 200 })
    scm2_o_e = KUTE.fromTo(sc_2_o, { path: sc2_o_r }, { path: sc2_o_f }, { easing: 'easingExponentialOut',duration: 200 })
    scm2_i_e = KUTE.fromTo(sc_2_i, { path: sc2_i_r }, { path: sc2_i_e }, { easing: 'easingExponentialOut',duration: 200 })
    sscm2_f = KUTE.fromTo(sc_2_o, { path: sc2_o_e }, { path: sc2_o_r }, { easing: 'easingExponentialOut',duration: 50 })
    sscm2_d = KUTE.fromTo(sc_2_o, { path: sc2_o_r }, { path: sc2_o_e }, { easing: 'easingExponentialOut',duration: 50 })

    //definition des mouvement (st = search transition / sct = shortcut transition / sctn = shortcut transition notification / d = deploy / f = fold / o = outer / i = inner))
    s_sc2_1 = { translateX: 249, translateY: 0 }
    s_n_2 = { translateX: 249, translateY: 0 }
    e_n_2 = { translateX: 251.5, translateY: 5 }
    sc2_t_s = { translateX: 249, translateY: 0 }
    e_sc2_1 = { translateX: 251.5, translateY: 5 }
    sc2_t_e = { translateX: 86, translateY: 0 }
    ssc2_t_s = { translateX: 86, translateY: 0 }
    ssc2_t_e = { translateX: 88.5, translateY: 5 }
    ssc2_t_r = { translateX: 82, translateY: 5 }
    sc2_n_r = { translateX: 80, translateY: 0 }

    //Declaration des animations
    ssct2_d = KUTE.fromTo(sc_2_i, ssc2_t_s, ssc2_t_e, { easing: 'easingExponentialOut',duration: 50 })
    ssct2_f = KUTE.fromTo(sc_2_i, ssc2_t_e, ssc2_t_s, { easing: 'easingExponentialOut',duration: 50 })
    sct2_d = KUTE.fromTo(sc_2_i, s_sc2_1, e_sc2_1, { easing: 'easingExponentialOut',duration: 50 })
    sct2_f = KUTE.fromTo(sc_2_i, e_sc2_1, s_sc2_1, { easing: 'easingExponentialOut',duration: 50 })
    sctn2_d = KUTE.fromTo(n_2, s_n_2, e_n_2, { easing: 'easingExponentialOut',duration: 50 })
    sctn2_f = KUTE.fromTo(n_2, e_n_2, s_n_2, { easing: 'easingExponentialOut',duration: 50 })
    ssctn2_d = KUTE.fromTo(n_2, sc2_n_r, ssc2_t_r, { easing: 'easingExponentialOut',duration: 50 })
    ssctn2_f = KUTE.fromTo(n_2, ssc2_t_r, sc2_n_r, { easing: 'easingExponentialOut',duration: 50 })
    sct2_r_o = KUTE.fromTo(sc_2_o, sc2_t_s, sc2_t_e, { easing: 'easingExponentialOut',duration: 50 })
    sct2_e_o = KUTE.fromTo(sc_2_o, sc2_t_e, sc2_t_s, { easing: 'easingExponentialOut',duration: 50 })
    sct2_r_i = KUTE.fromTo(sc_2_i, sc2_t_s, sc2_t_e, { easing: 'easingExponentialOut',duration: 50 })
    sct2_e_i = KUTE.fromTo(sc_2_i, sc2_t_e, sc2_t_s, { easing: 'easingExponentialOut',duration: 50 })
    sct2_r_n = KUTE.fromTo(n_2, sc2_t_s, sc2_n_r, { easing: 'easingExponentialOut',duration: 50 })
    sct2_e_n = KUTE.fromTo(n_2, sc2_n_r, sc2_t_s, { easing: 'easingExponentialOut',duration: 50 })


    //masque de selection
    m2_o_f = document.querySelector('#m2-o-f')
    m2_o_d = document.querySelector('#m2-o-d')
    ms2_o_f = document.querySelector('#ms2-o-f')
    ms2_o_d = document.querySelector('#ms2-o-d')


    //ajouter les event listener 
    m2_o_f.addEventListener('mouseenter',sc2Deploy)
    m2_o_d.addEventListener('mouseleave',sc2Fold)
    ms2_o_d.addEventListener('click',focus)
}

let sc3_o_d,sc3_o_f,sc3_o_r,sc3_o_e,sc3_i_r,sc3_i_e,sc_3_o,sc_3_i,n_3,scm3_f,scm3_d,scm3_o_r,scm3_i_r,scm3_o_e,scm3_i_e,sscm3_f,sscm3_d
let s_sc3_1,s_n_3,e_n_3,sc3_t_s,e_sc3_1,sc3_t_e,ssc3_t_s,ssc3_t_e,ssc3_t_r,sc3_n_r,sct3_o_e,sct3_o_r,sct3_i_e,sct3_i_r,ssct3_d,ssct3_f
let sct3_d,sct3_f,sctn3_d,sctn3_f,ssctn3_d,ssctn3_f,sct3_r_o,sct3_e_o,sct3_r_i,sct3_e_i,sct3_r_n,sct3_e_n,m3_o_f,m3_o_d,ms3_o_f,ms3_o_d
//Shortcut 3

if(document.querySelector('.search-sc-13') != undefined){

    //definition des path (o = outer / i = inner / d = deploy / f = fold / s = search / sc = shortcut)
    sc3_o_d = "M199 55.5H0.761963L18.4999 0.5H220.5L199 55.5Z"
    sc3_o_f = "M201 50.5H2.26203L18.5001 0.5H220.5L201 50.5Z"
    sc3_o_r = "M2 50H52.8095L68 0H16.1429L2 50Z"
    sc3_o_e = "M0.690475 55H51.5L68 0H16.1429L0.690475 55Z"
    sc3_i_r = "M13 40H45.2875L54 12H22.1111L13 40Z"
    sc3_i_e = "M20.5 40.5L30.9128 9.5H199.5L188.357 40.5H20.5Z"


    //selection des elements (o = outer / i = inner / s = search / sc = shortcut / p = path)
    sc_3_o = document.querySelector('#sc3-o')
    sc_3_i = document.querySelector('#sc3-i')
    n_3 = document.querySelector('#n-3')

    //definition des morph (scm = shortcut morph / sm = search morph / d = deploy / f = fold / o = outer / i = inner)
    scm3_f = KUTE.fromTo(sc_3_o, { path: sc3_o_d }, { path: sc3_o_f }, { easing: 'easingExponentialOut',duration: 200 })
    scm3_d = KUTE.fromTo(sc_3_o, { path: sc3_o_f }, { path: sc3_o_d }, { easing: 'easingExponentialOut',duration: 200 })
    scm3_o_r = KUTE.fromTo(sc_3_o, { path: sc3_o_d }, { path: sc3_o_r }, { easing: 'easingExponentialOut',duration: 200 })
    scm3_i_r = KUTE.fromTo(sc_3_i, { path: sc3_i_e }, { path: sc3_i_r }, { easing: 'easingExponentialOut',duration: 200 })
    scm3_o_e = KUTE.fromTo(sc_3_o, { path: sc3_o_r }, { path: sc3_o_f }, { easing: 'easingExponentialOut',duration: 200 })
    scm3_i_e = KUTE.fromTo(sc_3_i, { path: sc3_i_r }, { path: sc3_i_e }, { easing: 'easingExponentialOut',duration: 200 })
    sscm3_f = KUTE.fromTo(sc_3_o, { path: sc3_o_e }, { path: sc3_o_r }, { easing: 'easingExponentialOut',duration: 50 })
    sscm3_d = KUTE.fromTo(sc_3_o, { path: sc3_o_r }, { path: sc3_o_e }, { easing: 'easingExponentialOut',duration: 50 })

    //definition des mouvement (st = search transition / sct = shortcut transition / sctn = shortcut transition notification / d = deploy / f = fold / o = outer / i = inner))
    s_sc3_1 = { translateX: 961, translateY: 0 }
    s_n_3 = { translateX: 961, translateY: 0 }
    e_n_3 = { translateX: 958.5, translateY: 5 }
    sc3_t_s = { translateX: 961, translateY: 0 }
    e_sc3_1 = { translateX: 958.5, translateY: 5 }
    sc3_t_e = { translateX: 1278, translateY: 0 }
    ssc3_t_s = { translateX: 1278, translateY: 0 }
    ssc3_t_e = { translateX: 1276.5, translateY: 5 }
    ssc3_t_r = { translateX: 1130, translateY: 5 }
    sc3_n_r = { translateX: 1132, translateY: 0 }

    //Declaration des animations
    ssct3_d = KUTE.fromTo(sc_3_i, ssc3_t_s, ssc3_t_e, { easing: 'easingExponentialOut',duration: 50 })
    ssct3_f = KUTE.fromTo(sc_3_i, ssc3_t_e, ssc3_t_s, { easing: 'easingExponentialOut',duration: 50 })
    sct3_d = KUTE.fromTo(sc_3_i, s_sc3_1, e_sc3_1, { easing: 'easingExponentialOut',duration: 50 })
    sct3_f = KUTE.fromTo(sc_3_i, e_sc3_1, s_sc3_1, { easing: 'easingExponentialOut',duration: 50 })
    sctn3_d = KUTE.fromTo(n_3, s_n_3, e_n_3, { easing: 'easingExponentialOut',duration: 50 })
    sctn3_f = KUTE.fromTo(n_3, e_n_3, s_n_3, { easing: 'easingExponentialOut',duration: 50 })
    ssctn3_d = KUTE.fromTo(n_3, sc3_n_r, ssc3_t_r, { easing: 'easingExponentialOut',duration: 50 })
    ssctn3_f = KUTE.fromTo(n_3, ssc3_t_r, sc3_n_r, { easing: 'easingExponentialOut',duration: 50 })
    sct3_r_o = KUTE.fromTo(sc_3_o, sc3_t_s, sc3_t_e, { easing: 'easingExponentialOut',duration: 50 })
    sct3_e_o = KUTE.fromTo(sc_3_o, sc3_t_e, sc3_t_s, { easing: 'easingExponentialOut',duration: 50 })
    sct3_r_i = KUTE.fromTo(sc_3_i, sc3_t_s, sc3_t_e, { easing: 'easingExponentialOut',duration: 50 })
    sct3_e_i = KUTE.fromTo(sc_3_i, sc3_t_e, sc3_t_s, { easing: 'easingExponentialOut',duration: 50 })
    sct3_r_n = KUTE.fromTo(n_3, sc3_t_s, sc3_n_r, { easing: 'easingExponentialOut',duration: 50 })
    sct3_e_n = KUTE.fromTo(n_3, sc3_n_r, sc3_t_s, { easing: 'easingExponentialOut',duration: 50 })

    //masque de selection
    m3_o_f = document.querySelector('#m3-o-f')
    m3_o_d = document.querySelector('#m3-o-d')
    ms3_o_f = document.querySelector('#ms3-o-f')
    ms3_o_d = document.querySelector('#ms3-o-d')


    //ajouter les event listener 
    m3_o_f.addEventListener('mouseenter',sc3Deploy)
    m3_o_d.addEventListener('mouseleave',sc3Fold)
    ms3_o_d.addEventListener('click',focus)
}


let sc4_o_d,sc4_o_f,sc4_o_r,sc4_o_e,sc4_i_r,sc4_i_e,sc_4_o,sc_4_i,n_4,scm4_f,scm4_d,scm4_o_r,scm4_i_r,scm4_o_e,scm4_i_e,sscm4_f,sscm4_d
let s_sc4_1,s_n_4,e_n_4,sc4_t_s,e_sc4_1,sc4_t_e,ssc4_t_s,ssc4_t_e,ssc4_t_r,sc4_n_r,sct4_o_e,sct4_o_r,sct4_i_e,sct4_i_r,ssct4_d,ssct4_f
let sct4_d,sct4_f,sctn4_d,sctn4_f,ssctn4_d,ssctn4_f,sct4_r_o,sct4_e_o,sct4_r_i,sct4_e_i,sct4_r_n,sct4_e_n,m4_o_f,m4_o_d,ms4_o_f,ms4_o_d
//Shortcut 4

if(document.querySelector('.search-sc-14') != undefined){

    //definition des path (o = outer / i = inner / d = deploy / f = fold / s = search / sc = shortcut)
    sc4_o_d = "M23.8704 45L1.5 0H206.222L223.5 45H23.8704Z"
    sc4_o_f = "M21.8704 40L1.5 0H206.222L221.5 40H21.8704Z"
    sc4_o_r = "M51 40H13L1 0H39L51 40Z"
    sc4_o_e = "M52.5 45H14.5L1 0H39L52.5 45Z"
    sc4_i_r = "M39 30H19.3191L14 12H33.6809L39 30Z"
    sc4_i_e = "M201.5 29.5L193.666 9.5H21.5L31.1211 29.5H201.5Z"


    //selection des elements (o = outer / i = inner / s = search / sc = shortcut / p = path)
    sc_4_o = document.querySelector('#sc4-o')
    sc_4_i = document.querySelector('#sc4-i')
    n_4 = document.querySelector('#n-4')

    //definition des morph (scm = shortcut morph / sm = search morph / d = deploy / f = fold / o = outer / i = inner)
    scm4_f = KUTE.fromTo(sc_4_o, { path: sc4_o_d }, { path: sc4_o_f }, { easing: 'easingExponentialOut',duration: 200 })
    scm4_d = KUTE.fromTo(sc_4_o, { path: sc4_o_f }, { path: sc4_o_d }, { easing: 'easingExponentialOut',duration: 200 })
    scm4_o_r = KUTE.fromTo(sc_4_o, { path: sc4_o_d }, { path: sc4_o_r }, { easing: 'easingExponentialOut',duration: 200 })
    scm4_i_r = KUTE.fromTo(sc_4_i, { path: sc4_i_e }, { path: sc4_i_r }, { easing: 'easingExponentialOut',duration: 200 })
    scm4_o_e = KUTE.fromTo(sc_4_o, { path: sc4_o_r }, { path: sc4_o_f }, { easing: 'easingExponentialOut',duration: 200 })
    scm4_i_e = KUTE.fromTo(sc_4_i, { path: sc4_i_r }, { path: sc4_i_e }, { easing: 'easingExponentialOut',duration: 200 })
    sscm4_f = KUTE.fromTo(sc_4_o, { path: sc4_o_e }, { path: sc4_o_r }, { easing: 'easingExponentialOut',duration: 50 })
    sscm4_d = KUTE.fromTo(sc_4_o, { path: sc4_o_r }, { path: sc4_o_e }, { easing: 'easingExponentialOut',duration: 50 })

    //definition des mouvement (st = search transition / sct = shortcut transition / sctn = shortcut transition notification / d = deploy / f = fold / o = outer / i = inner))
    s_sc4_1 = { translateX: 44, translateY: 0 }
    s_n_4 = { translateX: 44, translateY: 0 }
    e_n_4 = { translateX: 46.5, translateY: 5 }
    sc4_t_s = { translateX: 44, translateY: 0 }
    e_sc4_1 = { translateX: 46.5, translateY: 5 }
    sc4_t_e = { translateX: 48, translateY: 0 }
    ssc4_t_s = { translateX: 48, translateY: 0 }
    ssc4_t_e = { translateX: 50.5, translateY: 5 }
    ssc4_t_r = { translateX: 44, translateY: 5 }
    sc4_n_r = { translateX: 42, translateY: 0 }

    //Declaration des animations
    ssct4_d = KUTE.fromTo(sc_4_i, ssc4_t_s, ssc4_t_e, { easing: 'easingExponentialOut',duration: 50 })
    ssct4_f = KUTE.fromTo(sc_4_i, ssc4_t_e, ssc4_t_s, { easing: 'easingExponentialOut',duration: 50 })
    sct4_d = KUTE.fromTo(sc_4_i, s_sc4_1, e_sc4_1, { easing: 'easingExponentialOut',duration: 50 })
    sct4_f = KUTE.fromTo(sc_4_i, e_sc4_1, s_sc4_1, { easing: 'easingExponentialOut',duration: 50 })
    sctn4_d = KUTE.fromTo(n_4, s_n_4, e_n_4, { easing: 'easingExponentialOut',duration: 50 })
    sctn4_f = KUTE.fromTo(n_4, e_n_4, s_n_4, { easing: 'easingExponentialOut',duration: 50 })
    ssctn4_d = KUTE.fromTo(n_4, sc4_n_r, ssc4_t_r, { easing: 'easingExponentialOut',duration: 50 })
    ssctn4_f = KUTE.fromTo(n_4, ssc4_t_r, sc4_n_r, { easing: 'easingExponentialOut',duration: 50 })
    sct4_r_o = KUTE.fromTo(sc_4_o, sc4_t_s, sc4_t_e, { easing: 'easingExponentialOut',duration: 50 })
    sct4_e_o = KUTE.fromTo(sc_4_o, sc4_t_e, sc4_t_s, { easing: 'easingExponentialOut',duration: 50 })
    sct4_r_i = KUTE.fromTo(sc_4_i, sc4_t_s, sc4_t_e, { easing: 'easingExponentialOut',duration: 50 })
    sct4_e_i = KUTE.fromTo(sc_4_i, sc4_t_e, sc4_t_s, { easing: 'easingExponentialOut',duration: 50 })
    sct4_r_n = KUTE.fromTo(n_4, sc4_t_s, sc4_n_r, { easing: 'easingExponentialOut',duration: 50 })
    sct4_e_n = KUTE.fromTo(n_4, sc4_n_r, sc4_t_s, { easing: 'easingExponentialOut',duration: 50 })

    //masque de selection
    m4_o_f = document.querySelector('#m4-o-f')
    m4_o_d = document.querySelector('#m4-o-d')
    ms4_o_f = document.querySelector('#ms4-o-f')
    ms4_o_d = document.querySelector('#ms4-o-d')


    //ajouter les event listener 
    m4_o_f.addEventListener('mouseenter',sc4Deploy)
    m4_o_d.addEventListener('mouseleave',sc4Fold)
    ms4_o_d.addEventListener('click',focus)

}


let sc5_o_d,sc5_o_f,sc5_o_r,sc5_o_e,sc5_i_r,sc5_i_e,sc_5_o,sc_5_i,n_5,scm5_f,scm5_d,scm5_o_r,scm5_i_r,scm5_o_e,scm5_i_e,sscm5_f,sscm5_d
let s_sc5_1,s_n_5,e_n_5,sc5_t_s,e_sc5_1,sc5_t_e,ssc5_t_s,ssc5_t_e,ssc5_t_r,sc5_n_r,sct5_o_e,sct5_o_r,sct5_i_e,sct5_i_r,ssct5_d,ssct5_f
let sct5_d,sct5_f,sctn5_d,sctn5_f,ssctn5_d,ssctn5_f,sct5_r_o,sct5_e_o,sct5_r_i,sct5_e_i,sct5_r_n,sct5_e_n,m5_o_f,m5_o_d,ms5_o_f,ms5_o_d
//Shortcut 5

if(document.querySelector('.search-sc-15') != undefined){

    //definition des path (o = outer / i = inner / d = deploy / f = fold / s = search / sc = shortcut)
    sc5_o_d = "M201 45.5H1L18.3076 0.5H223L201 45.5Z"
    sc5_o_f = "M203.297 40.5H3L18.3076 0.5H223L203.297 40.5Z"
    sc5_o_r = "M3 40H41L53 0H15L3 40Z"
    sc5_o_e = "M1.5 45H39.5L53 0H15L1.5 45Z"
    sc5_i_r = "M13 30H32.6809L38 12H18.3191L13 30Z"
    sc5_i_e = "M21 29.5L28.8772 9.5H202L192.325 29.5H21Z"


    //selection des elements (o = outer / i = inner / s = search / sc = shortcut / p = path)
    sc_5_o = document.querySelector('#sc5-o')
    sc_5_i = document.querySelector('#sc5-i')
    n_5 = document.querySelector('#n-5')

    //definition des morph (scm = shortcut morph / sm = search morph / d = deploy / f = fold / o = outer / i = inner)
    scm5_f = KUTE.fromTo(sc_5_o, { path: sc5_o_d }, { path: sc5_o_f }, { easing: 'easingExponentialOut',duration: 200 })
    scm5_d = KUTE.fromTo(sc_5_o, { path: sc5_o_f }, { path: sc5_o_d }, { easing: 'easingExponentialOut',duration: 200 })
    scm5_o_r = KUTE.fromTo(sc_5_o, { path: sc5_o_d }, { path: sc5_o_r }, { easing: 'easingExponentialOut',duration: 200 })
    scm5_i_r = KUTE.fromTo(sc_5_i, { path: sc5_i_e }, { path: sc5_i_r }, { easing: 'easingExponentialOut',duration: 200 })
    scm5_o_e = KUTE.fromTo(sc_5_o, { path: sc5_o_r }, { path: sc5_o_f }, { easing: 'easingExponentialOut',duration: 200 })
    scm5_i_e = KUTE.fromTo(sc_5_i, { path: sc5_i_r }, { path: sc5_i_e }, { easing: 'easingExponentialOut',duration: 200 })
    sscm5_f = KUTE.fromTo(sc_5_o, { path: sc5_o_e }, { path: sc5_o_r }, { easing: 'easingExponentialOut',duration: 50 })
    sscm5_d = KUTE.fromTo(sc_5_o, { path: sc5_o_r }, { path: sc5_o_e }, { easing: 'easingExponentialOut',duration: 50 })


    //definition des mouvement (st = search transition / sct = shortcut transition / sctn = shortcut transition notification / d = deploy / f = fold / o = outer / i = inner))
    s_sc5_1 = { translateX: 1163, translateY: 0 }
    s_n_5 = { translateX: 1163, translateY: 0 }
    e_n_5 = { translateX: 1160.5, translateY: 5 }
    sc5_t_s = { translateX: 1163, translateY: 0 }
    e_sc5_1 = { translateX: 1160.5, translateY: 5 }
    sc5_t_e = { translateX: 1331, translateY: 0 }
    ssc5_t_s = { translateX: 1331, translateY: 0 }
    ssc5_t_e = { translateX: 1330.5, translateY: 5 }
    ssc5_t_r = { translateX: 1165, translateY: 5 }
    sc5_n_r = { translateX: 1167, translateY: 0 }

    //Declaration des animations
    ssct5_d = KUTE.fromTo(sc_5_i, ssc5_t_s, ssc5_t_e, { easing: 'easingExponentialOut',duration: 50 })
    ssct5_f = KUTE.fromTo(sc_5_i, ssc5_t_e, ssc5_t_s, { easing: 'easingExponentialOut',duration: 50 })
    sct5_d = KUTE.fromTo(sc_5_i, s_sc5_1, e_sc5_1, { easing: 'easingExponentialOut',duration: 50 })
    sct5_f = KUTE.fromTo(sc_5_i, e_sc5_1, s_sc5_1, { easing: 'easingExponentialOut',duration: 50 })
    sctn5_d = KUTE.fromTo(n_5, s_n_5, e_n_5, { easing: 'easingExponentialOut',duration: 50 })
    sctn5_f = KUTE.fromTo(n_5, e_n_5, s_n_5, { easing: 'easingExponentialOut',duration: 50 })
    ssctn5_d = KUTE.fromTo(n_5, sc5_n_r, ssc5_t_r, { easing: 'easingExponentialOut',duration: 50 })
    ssctn5_f = KUTE.fromTo(n_5, ssc5_t_r, sc5_n_r, { easing: 'easingExponentialOut',duration: 50 })
    sct5_r_o = KUTE.fromTo(sc_5_o, sc5_t_s, sc5_t_e, { easing: 'easingExponentialOut',duration: 50 })
    sct5_e_o = KUTE.fromTo(sc_5_o, sc5_t_e, sc5_t_s, { easing: 'easingExponentialOut',duration: 50 })
    sct5_r_i = KUTE.fromTo(sc_5_i, sc5_t_s, sc5_t_e, { easing: 'easingExponentialOut',duration: 50 })
    sct5_e_i = KUTE.fromTo(sc_5_i, sc5_t_e, sc5_t_s, { easing: 'easingExponentialOut',duration: 50 })
    sct5_r_n = KUTE.fromTo(n_5, sc5_t_s, sc5_n_r, { easing: 'easingExponentialOut',duration: 50 })
    sct5_e_n = KUTE.fromTo(n_5, sc5_n_r, sc5_t_s, { easing: 'easingExponentialOut',duration: 50 })


    //masque de selection
    m5_o_f = document.querySelector('#m5-o-f')
    m5_o_d = document.querySelector('#m5-o-d')
    ms5_o_f = document.querySelector('#ms5-o-f')
    ms5_o_d = document.querySelector('#ms5-o-d')


    //ajouter les event listener 
    m5_o_f.addEventListener('mouseenter',sc5Deploy)
    m5_o_d.addEventListener('mouseleave',sc5Fold)
    ms5_o_d.addEventListener('click',focus)

}

//definition des path (o = outer / i = inner / d = deploy / f = fold / s = search / sc = shortcut)
const s_o_d = 'M21 70.5L1.5 0.5H1031.5L1011.5 70.5H21Z'
const s_o_f = 'M556.665 70.5H476.335L456.5 0.5H576.5L556.665 70.5Z'

const s_i_d = 'M1001 1L986.986 51H15.014L1 1H1001Z'
const s_i_f = 'M557.5 10L543.486 60H488.014L474 10H557.5Z'

//selection des elements (o = outer / i = inner / s = search / sc = shortcut / p = path)
const s_o_p = document.querySelector('#search-outer')
const s_i_p = document.querySelector('#search-inner')
const s_icon = document.querySelector('.search-icon')


//definition des morph (scm = shortcut morph / sm = search morph / d = deploy / f = fold / o = outer / i = inner)
const sm_f_o = KUTE.fromTo(s_o_p, { path: s_o_d }, { path: s_o_f }, { easing: 'easingExponentialOut',duration: 200 })
const sm_d_o = KUTE.fromTo(s_o_p, { path: s_o_f }, { path: s_o_d }, { easing: 'easingExponentialOut',duration: 200 })
const sm_d_i = KUTE.fromTo(s_i_p, { path: s_i_f }, { path: s_i_d }, { easing: 'easingExponentialOut',duration: 200 })
const sm_f_i = KUTE.fromTo(s_i_p, { path: s_i_d }, { path: s_i_f }, { easing: 'easingExponentialOut',duration: 200 })


//definition des mouvement (st = search transition / sct = shortcut transition / sctn = shortcut transition notification / d = deploy / f = fold / o = outer / i = inner))
const s_sp_1 = { translateX: 200, translateY: 0 }
const s_sp_2 = { translateX: 215, translateY: 9 }

const e_sp_1 = { translateX: 200, translateY: 0 }
const e_sp_2 = { translateX: 200, translateY: 0 }

const st_f_o = KUTE.fromTo(s_o_p, s_sp_1, e_sp_1, { easing: 'easingExponentialOut',duration: 200})
const st_d_o = KUTE.fromTo(s_o_p, e_sp_1, s_sp_1, { easing: 'easingExponentialOut',duration: 200 })
const st_d_i = KUTE.fromTo(s_i_p, s_sp_2, e_sp_2, { easing: 'easingExponentialOut',duration: 200 })
const st_f_i = KUTE.fromTo(s_i_p, e_sp_2, s_sp_2, { easing: 'easingExponentialOut',duration: 200 })

//definition de la visibilité
const so_f_i = KUTE.fromTo(s_i_p, {opacity: 1}, {opacity: 0}, { duration: 100 })
const so_d_i = KUTE.fromTo(s_i_p, {opacity: 0}, {opacity: 1}, { duration: 100 })

const si_v_h = KUTE.fromTo(s_icon, {opacity: 1}, {opacity: 0}, { duration: 100 })
const si_h_v = KUTE.fromTo(s_icon, {opacity: 0}, {opacity: 1}, { duration: 100 })

//masque de selection
let sm_e_f = document.querySelector('#search-mask')
let sm_e_d = document.querySelector('#search-mask-deploy')

//ajouter les event listener 
sm_e_f.addEventListener('mouseenter',searchDeploy)
s_icon.addEventListener('mouseenter',searchDeploy)
sm_e_d.addEventListener('mouseleave',searchRetract)
sm_e_d.addEventListener('click',focus)
s_icon.addEventListener('click',focus)

//
const searchInput = document.querySelector('.search-input')


//fonction pour definir chaque animation
function searchDeploy(){
    sm_d_i.start()
    st_f_i.start()
    so_d_i.start()
    sm_d_o.start()
    st_d_o.start()
    si_v_h.start()
    

    if(document.querySelector('.search-sc-10') != undefined){
        scm0_i_r.start()
        scm0_o_r.start()
        sct0_r_o.start()
        sct0_r_i.start()
        sct0_r_n.start()
        document.querySelector('.search-sc-10').classList.add('clip-sc-10')
    }

    if(document.querySelector('.search-sc-11') != undefined){
        scm1_i_r.start()
        scm1_o_r.start()
        sct1_r_o.start()
        sct1_r_i.start()
        sct1_r_n.start()
        document.querySelector('.search-sc-11').classList.add('clip-sc-11')
    }

    if(document.querySelector('.search-sc-12') != undefined){
        scm2_i_r.start()
        scm2_o_r.start()
        sct2_r_o.start()
        sct2_r_i.start()
        sct2_r_n.start()
        document.querySelector('.search-sc-12').classList.add('clip-sc-12')
    }

    if(document.querySelector('.search-sc-13') != undefined){
        scm3_i_r.start()
        scm3_o_r.start()
        sct3_r_o.start()
        sct3_r_i.start()
        sct3_r_n.start()
        document.querySelector('.search-sc-13').classList.add('clip-sc-13')
    }

    if(document.querySelector('.search-sc-14') != undefined){
        scm4_i_r.start()
        scm4_o_r.start()
        sct4_r_o.start()
        sct4_r_i.start()
        sct4_r_n.start()
        document.querySelector('.search-sc-14').classList.add('clip-sc-14')
    }

    if(document.querySelector('.search-sc-15') != undefined){
        scm5_i_r.start()
        scm5_o_r.start()
        sct5_r_o.start()
        sct5_r_i.start()
        sct5_r_n.start()
        document.querySelector('.search-sc-15').classList.add('clip-sc-15')
    }
    document.getElementById('search-icon').style.visibility = 'hidden'
    document.getElementById('search-mask').style.visibility = 'hidden'
    document.getElementById('search-mask-deploy').style.visibility = 'visible'
}

function searchRetract(){
    st_d_i.start()
    sm_f_i.start()
    so_f_i.start()
    sm_f_o.start()
    st_f_o.start()
    si_h_v.start()

    if(document.querySelector('.search-sc-10') != undefined){
        scm0_i_e.start()
        scm0_o_e.start()
        sct0_e_o.start()
        sct0_e_i.start()
        sct0_e_n.start()
        document.querySelector('.search-sc-10').classList.remove('clip-sc-10')
    }

    if(document.querySelector('.search-sc-11') != undefined){
        scm1_i_e.start()
        scm1_o_e.start()
        sct1_e_o.start()
        sct1_e_i.start()
        sct1_e_n.start()
        document.querySelector('.search-sc-11').classList.remove('clip-sc-11')
    }

    if(document.querySelector('.search-sc-12') != undefined){
        scm2_i_e.start()
        scm2_o_e.start()
        sct2_e_o.start()
        sct2_e_i.start()
        sct2_e_n.start()
        document.querySelector('.search-sc-12').classList.remove('clip-sc-12')
    }

    if(document.querySelector('.search-sc-13') != undefined){
        scm3_i_e.start()
        scm3_o_e.start()
        sct3_e_o.start()
        sct3_e_i.start()
        sct3_e_n.start()
        document.querySelector('.search-sc-13').classList.remove('clip-sc-13')
    }

    if(document.querySelector('.search-sc-14') != undefined){
        scm4_i_e.start()
        scm4_o_e.start()
        sct4_e_o.start()
        sct4_e_i.start()
        sct4_e_n.start()
        document.querySelector('.search-sc-14').classList.remove('clip-sc-14')
    }

    if(document.querySelector('.search-sc-15') != undefined){
        scm5_i_e.start()
        scm5_o_e.start()
        sct5_e_o.start()
        sct5_e_i.start()
        sct5_e_n.start()
        document.querySelector('.search-sc-15').classList.remove('clip-sc-15')
    }
    document.getElementById('search-icon').style.visibility = 'visible'
    document.getElementById('search-mask').style.visibility = 'visible'
    document.getElementById('search-mask-deploy').style.visibility = 'hidden'
}

function focus(){
    sm_e_d.removeEventListener('mouseleave',searchRetract)
    s_icon.removeEventListener('mouseleave',searchRetract)
    s_icon.removeEventListener('mouseenter',searchDeploy)

    if(document.querySelector('.search-sc-10') != undefined){
        m0_o_d.removeEventListener('mouseenter',sc0Fold)
        m0_o_f.removeEventListener('mouseenter',sc0Deploy)
        document.getElementById('m0-o-f').style.visibility = 'hidden'
        document.getElementById('ms0-o-f').style.visibility = 'visible'
        ms0_o_f.addEventListener('mouseenter',ssc0Deploy)
        ms0_o_d.addEventListener('mouseleave',ssc0Fold)
    }

    if(document.querySelector('.search-sc-11') != undefined){
        m1_o_d.removeEventListener('mouseenter',sc1Fold)
        m1_o_f.removeEventListener('mouseenter',sc1Deploy)
        document.getElementById('m1-o-f').style.visibility = 'hidden'
        document.getElementById('ms1-o-f').style.visibility = 'visible'
        ms1_o_f.addEventListener('mouseenter',ssc1Deploy)
        ms1_o_d.addEventListener('mouseleave',ssc1Fold)
    }

    if(document.querySelector('.search-sc-12') != undefined){
        m2_o_d.removeEventListener('mouseenter',sc2Fold)
        m2_o_f.removeEventListener('mouseenter',sc2Deploy)
        document.getElementById('m2-o-f').style.visibility = 'hidden'
        document.getElementById('ms2-o-f').style.visibility = 'visible'
        ms2_o_f.addEventListener('mouseenter',ssc2Deploy)
        ms2_o_d.addEventListener('mouseleave',ssc2Fold)
    }

    if(document.querySelector('.search-sc-13') != undefined){
        m3_o_d.removeEventListener('mouseenter',sc3Fold)
        m3_o_f.removeEventListener('mouseenter',sc3Deploy)
        document.getElementById('m3-o-f').style.visibility = 'hidden'
        document.getElementById('ms3-o-f').style.visibility = 'visible'
        ms3_o_f.addEventListener('mouseenter',ssc3Deploy)
        ms3_o_d.addEventListener('mouseleave',ssc3Fold)
    }

    if(document.querySelector('.search-sc-14') != undefined){
        m4_o_d.removeEventListener('mouseenter',sc4Fold)
        m4_o_f.removeEventListener('mouseenter',sc4Deploy)
        document.getElementById('m4-o-f').style.visibility = 'hidden'
        document.getElementById('ms4-o-f').style.visibility = 'visible'
        ms4_o_f.addEventListener('mouseenter',ssc4Deploy)
        ms4_o_d.addEventListener('mouseleave',ssc4Fold)
    }

    if(document.querySelector('.search-sc-15') != undefined){
        m5_o_d.removeEventListener('mouseenter',sc5Fold)
        m5_o_f.removeEventListener('mouseenter',sc5Deploy)
        document.getElementById('m5-o-f').style.visibility = 'hidden'
        document.getElementById('ms5-o-f').style.visibility = 'visible'
        ms5_o_f.addEventListener('mouseenter',ssc5Deploy)
        ms5_o_d.addEventListener('mouseleave',ssc5Fold)
    }

    searchInput.style.visibility = 'visible'
    searchInput.focus()
}

searchInput.addEventListener('blur', function(event) {
    let tid = event.explicitOriginalTarget.id
    if(tid != 'search-mask-deploy' && tid != 'search-icon' && tid != 'ms0-o-d' && tid != 'ms1-o-d' && tid != 'ms2-o-d' && tid != 'ms3-o-d' && tid != 'ms4-o-d' && tid != 'ms5-o-d'){
        
        if(document.querySelector('.search-sc-10') != undefined){
            m0_o_d.removeEventListener('mouseenter',ssc0Fold)
            m0_o_f.removeEventListener('mouseenter',ssc0Deploy)
            document.getElementById('m0-o-f').style.visibility = 'visible'
            document.getElementById('ms0-o-f').style.visibility = 'hidden'
            m0_o_f.addEventListener('mouseenter',sc0Deploy)
            m0_o_d.addEventListener('mouseleave',sc0Fold)
        }

        if(document.querySelector('.search-sc-11') != undefined){
            m1_o_d.removeEventListener('mouseenter',ssc1Fold)
            m1_o_f.removeEventListener('mouseenter',ssc1Deploy)
            document.getElementById('m1-o-f').style.visibility = 'visible'
            document.getElementById('ms1-o-f').style.visibility = 'hidden'
            m1_o_f.addEventListener('mouseenter',sc1Deploy)
            m1_o_d.addEventListener('mouseleave',sc1Fold)
        }

        if(document.querySelector('.search-sc-12') != undefined){
            m2_o_d.removeEventListener('mouseenter',ssc2Fold)
            m2_o_f.removeEventListener('mouseenter',ssc2Deploy)
            document.getElementById('m2-o-f').style.visibility = 'visible'
            document.getElementById('ms2-o-f').style.visibility = 'hidden'
            m2_o_f.addEventListener('mouseenter',sc2Deploy)
            m2_o_d.addEventListener('mouseleave',sc2Fold)
        }

        if(document.querySelector('.search-sc-13') != undefined){
            m3_o_d.removeEventListener('mouseenter',ssc3Fold)
            m3_o_f.removeEventListener('mouseenter',ssc3Deploy)
            document.getElementById('m3-o-f').style.visibility = 'visible'
            document.getElementById('ms3-o-f').style.visibility = 'hidden'
            m3_o_f.addEventListener('mouseenter',sc3Deploy)
            m3_o_d.addEventListener('mouseleave',sc3Fold)
        }

        if(document.querySelector('.search-sc-14') != undefined){
            m4_o_d.removeEventListener('mouseenter',ssc4Fold)
            m4_o_f.removeEventListener('mouseenter',ssc4Deploy)
            document.getElementById('m4-o-f').style.visibility = 'visible'
            document.getElementById('ms4-o-f').style.visibility = 'hidden'
            m4_o_f.addEventListener('mouseenter',sc4Deploy)
            m4_o_d.addEventListener('mouseleave',sc4Fold)
        }

        if(document.querySelector('.search-sc-15') != undefined){
            m5_o_d.removeEventListener('mouseenter',ssc5Fold)
            m5_o_f.removeEventListener('mouseenter',ssc5Deploy)
            document.getElementById('m5-o-f').style.visibility = 'visible'
            document.getElementById('ms5-o-f').style.visibility = 'hidden'
            m5_o_f.addEventListener('mouseenter',sc5Deploy)
            m5_o_d.addEventListener('mouseleave',sc5Fold)
        }

        sm_e_f.addEventListener('mouseenter',searchDeploy)
        sm_e_d.addEventListener('mouseleave',searchRetract)
        s_icon.addEventListener('mouseenter',searchDeploy)

        searchInput.style.visibility = 'hidden'
        sm_e_d.addEventListener('mouseleave',searchRetract)
        searchRetract()
    }
})

function sc0Deploy(){
    scm0_d.start()
    sct0_d.start()
    sctn0_d.start()
    document.getElementById('m0-o-f').style.visibility = 'hidden'
    document.getElementById('m0-o-d').style.visibility = 'visible'
}

function sc0Fold(){
    scm0_f.start()
    sct0_f.start()
    sctn0_f.start()
    document.getElementById('m0-o-d').style.visibility = 'hidden'
    document.getElementById('m0-o-f').style.visibility = 'visible'
}

function ssc0Deploy(){
    sscm0_d.start()
    ssct0_d.start()
    ssctn0_d.start()
    document.getElementById('ms0-o-f').style.visibility = 'hidden'
    document.getElementById('ms0-o-d').style.visibility = 'visible'
}

function ssc0Fold(){
    sscm0_f.start()
    ssct0_f.start()
    ssctn0_f.start()
    document.getElementById('ms0-o-d').style.visibility = 'hidden'
    document.getElementById('ms0-o-f').style.visibility = 'visible'
}

function sc1Deploy(){
    scm1_d.start()
    sct1_d.start()
    sctn1_d.start()
    document.getElementById('m1-o-f').style.visibility = 'hidden'
    document.getElementById('m1-o-d').style.visibility = 'visible'
}

function sc1Fold(){
    scm1_f.start()
    sct1_f.start()
    sctn1_f.start()
    document.getElementById('m1-o-d').style.visibility = 'hidden'
    document.getElementById('m1-o-f').style.visibility = 'visible'
}

function ssc1Deploy(){
    sscm1_d.start()
    ssct1_d.start()
    ssctn1_d.start()
    document.getElementById('ms1-o-f').style.visibility = 'hidden'
    document.getElementById('ms1-o-d').style.visibility = 'visible'
}

function ssc1Fold(){
    sscm1_f.start()
    ssct1_f.start()
    ssctn1_f.start()
    document.getElementById('ms1-o-d').style.visibility = 'hidden'
    document.getElementById('ms1-o-f').style.visibility = 'visible'
}

function sc2Deploy(){
    scm2_d.start()
    sct2_d.start()
    sctn2_d.start()
    document.getElementById('m2-o-f').style.visibility = 'hidden'
    document.getElementById('m2-o-d').style.visibility = 'visible'
}

function sc2Fold(){
    scm2_f.start()
    sct2_f.start()
    sctn2_f.start()
    document.getElementById('m2-o-d').style.visibility = 'hidden'
    document.getElementById('m2-o-f').style.visibility = 'visible'
}

function ssc2Deploy(){
    sscm2_d.start()
    ssct2_d.start()
    ssctn2_d.start()
    document.getElementById('ms2-o-f').style.visibility = 'hidden'
    document.getElementById('ms2-o-d').style.visibility = 'visible'
}

function ssc2Fold(){
    sscm2_f.start()
    ssct2_f.start()
    ssctn2_f.start()
    document.getElementById('ms2-o-d').style.visibility = 'hidden'
    document.getElementById('ms2-o-f').style.visibility = 'visible'
}

function sc3Deploy(){
    scm3_d.start()
    sct3_d.start()
    sctn3_d.start()
    document.getElementById('m3-o-f').style.visibility = 'hidden'
    document.getElementById('m3-o-d').style.visibility = 'visible'
}

function sc3Fold(){
    scm3_f.start()
    sct3_f.start()
    sctn3_f.start()
    document.getElementById('m3-o-d').style.visibility = 'hidden'
    document.getElementById('m3-o-f').style.visibility = 'visible'
}

function ssc3Deploy(){
    sscm3_d.start()
    ssct3_d.start()
    ssctn3_d.start()
    document.getElementById('ms3-o-f').style.visibility = 'hidden'
    document.getElementById('ms3-o-d').style.visibility = 'visible'
}

function ssc3Fold(){
    sscm3_f.start()
    ssct3_f.start()
    ssctn3_f.start()
    document.getElementById('ms3-o-d').style.visibility = 'hidden'
    document.getElementById('ms3-o-f').style.visibility = 'visible'
}

function sc4Deploy(){
    scm4_d.start()
    sct4_d.start()
    sctn4_d.start()
    document.getElementById('m4-o-f').style.visibility = 'hidden'
    document.getElementById('m4-o-d').style.visibility = 'visible'
}

function sc4Fold(){
    scm4_f.start()
    sct4_f.start()
    sctn4_f.start()
    document.getElementById('m4-o-d').style.visibility = 'hidden'
    document.getElementById('m4-o-f').style.visibility = 'visible'
}

function ssc4Deploy(){
    sscm4_d.start()
    ssct4_d.start()
    ssctn4_d.start()
    document.getElementById('ms4-o-f').style.visibility = 'hidden'
    document.getElementById('ms4-o-d').style.visibility = 'visible'
}

function ssc4Fold(){
    sscm4_f.start()
    ssct4_f.start()
    ssctn4_f.start()
    document.getElementById('ms4-o-d').style.visibility = 'hidden'
    document.getElementById('ms4-o-f').style.visibility = 'visible'
}

function sc5Deploy(){
    scm5_d.start()
    sct5_d.start()
    sctn5_d.start()
    document.getElementById('m5-o-f').style.visibility = 'hidden'
    document.getElementById('m5-o-d').style.visibility = 'visible'
}

function sc5Fold(){
    scm5_f.start()
    sct5_f.start()
    sctn5_f.start()
    document.getElementById('m5-o-d').style.visibility = 'hidden'
    document.getElementById('m5-o-f').style.visibility = 'visible'
}

function ssc5Deploy(){
    sscm5_d.start()
    ssct5_d.start()
    ssctn5_d.start()
    document.getElementById('ms5-o-f').style.visibility = 'hidden'
    document.getElementById('ms5-o-d').style.visibility = 'visible'
}

function ssc5Fold(){
    sscm5_f.start()
    ssct5_f.start()
    ssctn5_f.start()
    document.getElementById('ms5-o-d').style.visibility = 'hidden'
    document.getElementById('ms5-o-f').style.visibility = 'visible'
}
