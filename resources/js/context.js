import KUTE from 'kute.js'

//definition des path (d = deploy / f = fold / p = profil / b = bouton)

let p_d = "M112.5 114.5L67 1H206V114.5H112.5Z"
let p_f = "M129 70.5L101.5 1H206V70.5H129Z"
let p_b1_d = "M21 50.5L1 1H67L86.5 50.5H21Z"
let p_b1_f = "M26 50.5L6 1H67L86.706 50.5H26Z"
let p_b2_d = "M41 100L21 50.5H87.3L106.8 100H41Z"
let p_b2_f = "M45.7226 100L26 50.5H86.805L106.5 100H45.7226Z"
let p_b3_d = "M206 170.5V114.5H126L149.781 170.5H206Z"
let p_b3_f = "M205.983 160.5V114.5H130.25L149.764 160.5H205.983Z"


let pf_f = document.querySelector('#p-f')
let pf_icon = document.querySelector('#profil-icon')
let pf_b1_f = document.querySelector('#p-b1-f')
let pf_b2_f = document.querySelector('#p-b2-f')
let pf_b3_f = document.querySelector('#p-b3-f')

let pf_m_d = KUTE.fromTo(pf_f, { path: p_f }, { path: p_d }, { easing: 'easingExponentialOut',duration: 30 })
let pf_m_f = KUTE.fromTo(pf_f, { path: p_d }, { path: p_f }, { easing: 'easingExponentialOut',duration: 30 , delay: 101})
let pf_mb1_d = KUTE.fromTo(pf_b1_f, { path: p_b1_f }, { path: p_b1_d }, { easing: 'easingExponentialOut',duration: 30 })
let pf_mb1_f = KUTE.fromTo(pf_b1_f, { path: p_b1_d }, { path: p_b1_f }, { easing: 'easingExponentialOut',duration: 30 })
let pf_mb2_d = KUTE.fromTo(pf_b2_f, { path: p_b2_f }, { path: p_b2_d }, { easing: 'easingExponentialOut',duration: 30 })
let pf_mb2_f = KUTE.fromTo(pf_b2_f, { path: p_b2_d }, { path: p_b2_f }, { easing: 'easingExponentialOut',duration: 30 })
let pf_mb3_d = KUTE.fromTo(pf_b3_f, { path: p_b3_f }, { path: p_b3_d }, { easing: 'easingExponentialOut',duration: 30 })
let pf_mb3_f = KUTE.fromTo(pf_b3_f, { path: p_b3_d }, { path: p_b3_f }, { easing: 'easingExponentialOut',duration: 30 })

//definition de la visibilité
const pv_b1_i = KUTE.fromTo(pf_b1_f, {opacity: 1}, {opacity: 0}, { duration: 1 , delay: 30})
const pv_b2_i = KUTE.fromTo(pf_b2_f, {opacity: 1}, {opacity: 0}, { duration: 1 , delay: 30})
const pv_b3_i = KUTE.fromTo(pf_b3_f, {opacity: 1}, {opacity: 0}, { duration: 1 , delay: 30})
const pv_b1_v = KUTE.fromTo(pf_b1_f, {opacity: 0}, {opacity: 1}, { duration: 1 , delay: 30})
const pv_b2_v = KUTE.fromTo(pf_b2_f, {opacity: 0}, {opacity: 1}, { duration: 1 , delay: 30})
const pv_b3_v = KUTE.fromTo(pf_b3_f, {opacity: 0}, {opacity: 1}, { duration: 1 , delay: 30})

let pf_b1_ico = document.querySelector('#project-icon')
let pf_b2_ico = document.querySelector('#dark-icon')
let pf_b3_ico = document.querySelector('#settings-icon')


const b1_ico_i = KUTE.fromTo(pf_b1_ico, {opacity: 1}, {opacity: 0}, { duration: 100})
const b1_ico_v = KUTE.fromTo(pf_b1_ico, {opacity: 0}, {opacity: 1}, { duration: 50 , delay: 200})
const b2_ico_i = KUTE.fromTo(pf_b2_ico, {opacity: 1}, {opacity: 0}, { duration: 100})
const b2_ico_v = KUTE.fromTo(pf_b2_ico, {opacity: 0}, {opacity: 1}, { duration: 50 , delay: 200})
const b3_ico_i = KUTE.fromTo(pf_b3_ico, {opacity: 1}, {opacity: 0}, { duration: 100})
const b3_ico_v = KUTE.fromTo(pf_b3_ico, {opacity: 0}, {opacity: 1}, { duration: 50 , delay: 200})

const tp_b1_d = { translateX: 63, translateY: 0 }
const tp_b1_f = { translateX: 0, translateY: 0 }
const tp_b2_d = { translateX: 63, translateY: 0 }
const tp_b2_f = { translateX: 0, translateY: 0 }
const tp_b3_d = { translateX: 0, translateY: -50 }
const tp_b3_f = { translateX: 0, translateY: 0 }

const b1_ico_d = { translateX: -4, translateY: 0 }
const b1_ico_f = { translateX: 0, translateY: 0 }
const b2_ico_d = { translateX: -4, translateY: 0 }
const b2_ico_f = { translateX: 0, translateY: 0 }
const b3_ico_d = { translateX: -1, translateY: 4 }
const b3_ico_f = { translateX: 0, translateY: 0 }

const tp_d_b1 = KUTE.fromTo(pf_b1_f, tp_b1_d, tp_b1_f, { easing: 'easingExponentialOut',duration: 100 , delay: 31})
const tp_f_b1 = KUTE.fromTo(pf_b1_f, tp_b1_f, tp_b1_d, { easing: 'easingExponentialOut',duration: 100 })
const tp_d_b2 = KUTE.fromTo(pf_b2_f, tp_b2_d, tp_b2_f, { easing: 'easingExponentialOut',duration: 100 , delay: 31})
const tp_f_b2 = KUTE.fromTo(pf_b2_f, tp_b2_f, tp_b2_d, { easing: 'easingExponentialOut',duration: 100 })
const tp_d_b3 = KUTE.fromTo(pf_b3_f, tp_b3_d, tp_b3_f, { easing: 'easingExponentialOut',duration: 100 , delay: 31})
const tp_f_b3 = KUTE.fromTo(pf_b3_f, tp_b3_f, tp_b3_d, { easing: 'easingExponentialOut',duration: 100 })

const ico_b1_d = KUTE.fromTo(pf_b1_ico, b1_ico_f, b1_ico_d, { easing: 'easingExponentialOut',duration: 100 , delay: 31})
const ico_b1_f = KUTE.fromTo(pf_b1_ico, b1_ico_d, b1_ico_f, { easing: 'easingExponentialOut',duration: 100 , delay: 31})
const ico_b2_d = KUTE.fromTo(pf_b2_ico, b2_ico_f, b2_ico_d, { easing: 'easingExponentialOut',duration: 100 , delay: 31})
const ico_b2_f = KUTE.fromTo(pf_b2_ico, b2_ico_d, b2_ico_f, { easing: 'easingExponentialOut',duration: 100 , delay: 31})
const ico_b3_d = KUTE.fromTo(pf_b3_ico, b3_ico_f, b3_ico_d, { easing: 'easingExponentialOut',duration: 100 , delay: 31})
const ico_b3_f = KUTE.fromTo(pf_b3_ico, b3_ico_d, b3_ico_f, { easing: 'easingExponentialOut',duration: 100 , delay: 31})


pf_f.addEventListener('mouseenter',pDeploy)
pf_f.addEventListener('mouseleave',pFold)
// pf_icon.addEventListener('mouseenter',pDeploy)
// pf_icon.addEventListener('mouseleave',pFold)
pf_b1_f.addEventListener('mouseenter',b1Deploy)
pf_b1_f.addEventListener('mouseleave',b1Fold)
pf_b2_f.addEventListener('mouseenter',b2Deploy)
pf_b2_f.addEventListener('mouseleave',b2Fold)
pf_b3_f.addEventListener('mouseenter',b3Deploy)
pf_b3_f.addEventListener('mouseleave',b3Fold)

let imageElement = document.getElementById('profil-icon');

let pf_i_d = KUTE.to(imageElement, { width: 95, height: 95 }, { duration: 100 });
let pf_i_f = KUTE.to(imageElement, { width: 70, height: 70 }, { duration: 100 , delay: 100});

function pDeploy(){
    
    pf_f.removeEventListener('mouseenter',pDeploy)
    pf_m_d.start()
    pv_b1_v.start()
    pv_b2_v.start()
    pv_b3_v.start()
    tp_d_b1.start()
    tp_d_b2.start()
    tp_d_b3.start()
    pf_i_d.start()
    b1_ico_v.start()
    b2_ico_v.start()
    b3_ico_v.start()
    
    pf_b1_f.addEventListener('mouseleave',pFold)
    pf_b2_f.addEventListener('mouseleave',pFold)
    pf_b3_f.addEventListener('mouseleave',pFold)
}


let prev = null

function pFold(event){

    let tid = event.explicitOriginalTarget.id
    
    if(tid != 'p-b1-f' && tid != 'p-b2-f' && tid != 'p-b3-f' && tid != 'p-f' || prev == tid){
        pf_f.addEventListener('mouseenter',pDeploy)
        pf_b1_f.removeEventListener('mouseleave',pFold)
        pf_b2_f.removeEventListener('mouseleave',pFold)
        pf_b3_f.removeEventListener('mouseleave',pFold)
        pv_b1_v.stop()
        pv_b2_v.stop()
        pv_b3_v.stop()
        tp_d_b1.stop()
        tp_d_b2.stop()
        tp_d_b3.stop()
        b1_ico_v.stop()
        b2_ico_v.stop()
        b3_ico_v.stop()

        b1_ico_i.start()
        b2_ico_i.start()
        b3_ico_i.start()

        tp_f_b1.start()
        tp_f_b2.start()
        tp_f_b3.start()
        pv_b1_i.start()
        pv_b2_i.start()
        pv_b3_i.start()
        tp_f_b3.chain(pf_m_f)
        pf_i_f.start()
    }
    
    if(tid == ''){
        prev = 'p-f'
    }else if(tid == 'p-b3-f' && prev == 'p-b3-f'){
        prev = 'p-f'
    }
    else{
        prev = tid
    }
}

function b1Deploy(){
    pf_mb1_d.start()
    ico_b1_d.start()
    
}

function b1Fold(){
    pf_mb1_f.start()
    ico_b1_f.start()
}

function b2Deploy(){
    pf_mb2_d.start()
    ico_b2_d.start()
}

function b2Fold(){
    pf_mb2_f.start()
    ico_b2_f.start()
}

function b3Deploy(){
    pf_mb3_d.start()
    ico_b3_d.start()
}

function b3Fold(){
    pf_mb3_f.start()
    ico_b3_f.start()
}