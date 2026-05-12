<!DOCTYPE html>
<html lang="ca">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Laboratori del Passat · Imparfait i Passé Composé</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Lora:ital,wght@0,500;0,700;1,500&display=swap" rel="stylesheet">
<style>
:root{
  --bg:#FBF8F2;
  --surface:#FFFFFF;
  --surface-2:#F5EFE3;
  --ink:#1F1B16;
  --ink-2:#52483B;
  --ink-soft:#8C8273;
  --line:#E8DECB;
  --primary:#B45309;
  --primary-l:#FED7AA;
  --primary-ll:#FFF3E6;
  --accent:#0F766E;
  --accent-l:#CCFBF1;
  --accent-ll:#E6F7F5;
  --ok:#15803D;
  --ok-l:#DCFCE7;
  --ko:#B91C1C;
  --ko-l:#FEE2E2;
  --warn:#A16207;
  --warn-l:#FEF3C7;
  --r-sm:8px;
  --r-md:12px;
  --r-lg:16px;
  --r-xl:24px;
  --shadow-sm:0 1px 2px rgba(31,27,22,.04), 0 1px 3px rgba(31,27,22,.06);
  --shadow-md:0 4px 12px rgba(31,27,22,.04), 0 2px 4px rgba(31,27,22,.05);
  --shadow-lg:0 10px 30px rgba(31,27,22,.06), 0 4px 12px rgba(31,27,22,.04);
}
*{box-sizing:border-box;margin:0;padding:0}
html{scroll-behavior:smooth}
body{
  background:var(--bg);
  color:var(--ink);
  font-family:'Inter',system-ui,-apple-system,sans-serif;
  font-size:15px;
  line-height:1.65;
  min-height:100vh;
  -webkit-font-smoothing:antialiased;
}
.serif{font-family:'Lora',Georgia,serif}

/* ─────────── HEADER ─────────── */
.header{
  position:sticky;top:0;z-index:50;
  background:rgba(255,255,255,.85);
  backdrop-filter:blur(12px);
  -webkit-backdrop-filter:blur(12px);
  border-bottom:1px solid var(--line);
}
.header-inner{
  max-width:1080px;margin:0 auto;
  padding:16px 24px;
  display:flex;align-items:center;justify-content:space-between;gap:16px;
}
.brand{display:flex;align-items:center;gap:14px}
.brand-logo{
  width:44px;height:44px;
  border-radius:12px;
  background:linear-gradient(135deg,var(--primary) 0%,#D97706 100%);
  display:flex;align-items:center;justify-content:center;
  box-shadow:0 4px 12px rgba(180,83,9,.25);
  color:#fff;
}
.brand-text h1{font-size:1.05rem;font-weight:700;letter-spacing:-.01em;line-height:1.2}
.brand-text p{font-size:.78rem;color:var(--ink-soft);font-weight:500}
.header-tag{
  display:none;align-items:center;gap:6px;
  font-size:.82rem;color:var(--ink-soft);
}
@media(min-width:640px){.header-tag{display:flex}}

/* ─────────── HERO ─────────── */
.hero{
  position:relative;overflow:hidden;
  background:linear-gradient(180deg,var(--primary-ll) 0%,var(--bg) 100%);
  padding:60px 24px 40px;
}
.hero::before{
  content:'';position:absolute;
  top:-100px;right:-100px;
  width:400px;height:400px;
  background:radial-gradient(circle,var(--accent-l) 0%,transparent 70%);
  opacity:.4;pointer-events:none;
}
.hero-inner{max-width:780px;margin:0 auto;position:relative;text-align:center}
.hero-eyebrow{
  display:inline-flex;gap:8px;
  font-size:.72rem;text-transform:uppercase;letter-spacing:.14em;
  font-weight:600;color:var(--primary);
  background:rgba(180,83,9,.08);
  padding:6px 14px;border-radius:999px;
  margin-bottom:20px;
}
.hero h1{
  font-family:'Lora',serif;
  font-size:clamp(2.2rem,5.5vw,3.4rem);
  font-weight:700;letter-spacing:-.02em;line-height:1.1;
  margin-bottom:14px;
}
.hero h1 em{font-style:italic;color:var(--primary)}
.hero p{
  font-size:1.05rem;color:var(--ink-2);
  max-width:580px;margin:0 auto;
}

/* ─────────── LAYOUT ─────────── */
main{max-width:1080px;margin:0 auto;padding:40px 24px 80px}
.intro-card{
  background:var(--surface);
  border:1px solid var(--line);
  border-radius:var(--r-lg);
  padding:28px;
  margin-bottom:36px;
  box-shadow:var(--shadow-sm);
}
.intro-card h2{font-size:1.15rem;font-weight:700;margin-bottom:8px;color:var(--ink)}
.intro-card p{color:var(--ink-2);line-height:1.7}
.intro-card .imp-tag{color:var(--primary);font-weight:600}
.intro-card .pc-tag{color:var(--accent);font-weight:600}

/* ID FORM */
.id-card{
  background:linear-gradient(135deg,var(--warn-l) 0%,#FFFCF5 100%);
  border:1px solid #F0D58F;
  border-radius:var(--r-lg);
  padding:24px 28px;
  margin-bottom:48px;
}
.id-card h3{
  font-size:.78rem;font-weight:700;text-transform:uppercase;letter-spacing:.1em;
  color:var(--warn);margin-bottom:14px;
  display:flex;align-items:center;gap:8px;
}
.id-fields{display:grid;grid-template-columns:repeat(3,1fr);gap:14px}
@media(max-width:680px){.id-fields{grid-template-columns:1fr}}
.id-field label{
  display:block;font-size:.78rem;font-weight:600;
  color:var(--ink-2);margin-bottom:6px;
}
.id-field input{
  width:100%;padding:10px 14px;
  background:#fff;
  border:1px solid var(--line);
  border-radius:var(--r-sm);
  font-family:inherit;font-size:.95rem;color:var(--ink);
  transition:border-color .15s,box-shadow .15s;
}
.id-field input:focus{
  outline:none;
  border-color:var(--primary);
  box-shadow:0 0 0 3px rgba(180,83,9,.12);
}

/* SECTION HEADERS */
.section{margin-bottom:56px}
.section-head{
  display:flex;align-items:center;gap:16px;
  margin-bottom:24px;
}
.section-num{
  flex-shrink:0;
  width:44px;height:44px;border-radius:50%;
  background:var(--ink);color:#fff;
  display:flex;align-items:center;justify-content:center;
  font-weight:700;font-size:1.05rem;
  box-shadow:0 4px 12px rgba(31,27,22,.15);
}
.section-head h2{
  font-family:'Lora',serif;
  font-size:1.55rem;font-weight:700;letter-spacing:-.01em;
}

/* ─────────── ACCORDION ─────────── */
.accordion{display:flex;flex-direction:column;gap:14px}
.acc-item{
  background:var(--surface);
  border:1px solid var(--line);
  border-radius:var(--r-lg);
  overflow:hidden;
  box-shadow:var(--shadow-sm);
}
.acc-trigger{
  width:100%;display:flex;align-items:center;justify-content:space-between;gap:16px;
  padding:18px 24px;
  background:transparent;border:none;
  font-family:inherit;font-size:1rem;font-weight:600;
  color:var(--ink);text-align:left;cursor:pointer;
  transition:background .15s;
}
.acc-trigger:hover{background:var(--surface-2)}
.acc-trigger .acc-tag{display:flex;align-items:center;gap:10px}
.badge{
  display:inline-flex;align-items:center;
  padding:3px 10px;border-radius:6px;
  font-size:.75rem;font-weight:600;letter-spacing:.01em;
}
.badge-imp{background:var(--primary);color:#fff}
.badge-pc{background:var(--accent);color:#fff}
.badge-neutral{background:var(--surface-2);color:var(--ink-2);border:1px solid var(--line)}
.acc-icon{
  width:24px;height:24px;
  display:flex;align-items:center;justify-content:center;
  color:var(--ink-soft);
  transition:transform .25s;
}
.acc-item.open .acc-icon{transform:rotate(180deg)}
.acc-body{
  display:none;padding:0 24px 24px;
  border-top:1px solid var(--line);
}
.acc-item.open .acc-body{display:block;padding-top:20px}

/* THEORY CARDS */
.t-card{
  background:#FAFAF7;border:1px solid var(--line);
  border-left:3px solid var(--primary);
  border-radius:var(--r-md);
  padding:18px 22px;margin-bottom:14px;
}
.t-card.accent{border-left-color:var(--accent)}
.t-card.neutral{border-left-color:var(--ink-2)}
.t-card h4{
  font-size:.92rem;font-weight:700;margin-bottom:12px;
  color:var(--ink);
}
.formula-box{
  background:var(--surface);
  border:1px solid var(--line);
  border-radius:var(--r-sm);
  padding:14px 18px;
  text-align:center;
  font-family:'Lora',serif;font-size:1.05rem;
  margin:10px 0 14px;
}
.formula-box strong{color:var(--primary);font-weight:700}
.formula-box.accent strong{color:var(--accent)}

/* TABLES */
.cnj-table{
  width:100%;border-collapse:collapse;
  background:var(--surface);border-radius:var(--r-sm);overflow:hidden;
  font-size:.93rem;
}
.cnj-table th{
  background:var(--ink);color:#fff;
  padding:9px 12px;text-align:left;font-weight:600;font-size:.85rem;
}
.cnj-table td{padding:8px 12px;border-top:1px solid var(--line)}
.cnj-table tr:nth-child(even) td{background:#FAFAF7}
.cnj-table td:first-child{color:var(--ink-soft);font-weight:500;width:30%}
.cnj-table strong{color:var(--primary);font-weight:700}
.cnj-table.accent strong{color:var(--accent)}

/* USAGE LIST */
.usage-list{display:flex;flex-direction:column;gap:14px;margin-top:8px}
.usage-item{display:flex;gap:14px;align-items:flex-start}
.usage-num{
  flex-shrink:0;
  width:26px;height:26px;border-radius:50%;
  background:var(--accent);color:#fff;
  display:flex;align-items:center;justify-content:center;
  font-size:.78rem;font-weight:700;
}
.usage-item.imp .usage-num{background:var(--primary)}
.usage-body strong{font-weight:600;color:var(--ink)}
.usage-body p{color:var(--ink-soft);font-size:.88rem;margin-top:2px;font-style:italic}

/* WARNING BOX */
.warn-box{
  background:var(--warn-l);
  border:1px solid #F0D58F;
  border-radius:var(--r-sm);
  padding:10px 14px;font-size:.88rem;color:var(--ink-2);
  margin-top:14px;
}

/* AUX GRID (avoir/être) */
.aux-grid{display:grid;grid-template-columns:1fr 1fr;gap:14px;margin:12px 0}
@media(max-width:600px){.aux-grid{grid-template-columns:1fr}}
.aux-box{
  background:var(--surface);border-radius:var(--r-sm);
  padding:14px 16px;border:1px solid var(--line);
}
.aux-box.imp{border-left:3px solid var(--primary)}
.aux-box.pc{border-left:3px solid var(--accent)}
.aux-box h5{font-size:.95rem;font-weight:700;margin-bottom:6px}
.aux-box .imp-color{color:var(--primary)}
.aux-box .pc-color{color:var(--accent)}
.aux-box p:not(.hint){font-size:.92rem}
.aux-box .hint{font-size:.78rem;color:var(--ink-soft);margin-top:6px}

/* VERBS LIST */
.verbs-list{
  display:grid;grid-template-columns:repeat(auto-fill,minmax(110px,1fr));gap:6px;
  margin:10px 0;
}
.verb-chip{
  background:#fff;border:1px solid var(--line);
  border-radius:6px;padding:6px 10px;
  text-align:center;font-size:.85rem;font-weight:500;
}

/* COMPARE BLOCK */
.compare-grid{
  display:grid;grid-template-columns:1fr 1fr;gap:0;
  background:var(--surface);border-radius:var(--r-md);overflow:hidden;
  margin:12px 0;
}
@media(max-width:600px){.compare-grid{grid-template-columns:1fr}}
.compare-side{padding:20px;text-align:center}
.compare-side.imp{background:linear-gradient(135deg,var(--primary-ll),var(--bg))}
.compare-side.pc{background:linear-gradient(135deg,var(--accent-ll),var(--bg))}
.compare-side .emoji{font-size:1.8rem;margin:8px 0}
.compare-side h5{font-weight:700;margin-bottom:4px}
.compare-side p{font-size:.85rem;color:var(--ink-soft)}
.example-box{
  background:#FAFAF7;border-left:3px solid var(--line);
  border-radius:0 var(--r-sm) var(--r-sm) 0;
  padding:14px 16px;margin:10px 0;
}
.example-box .ex{font-family:'Lora',serif;font-size:1.02rem;font-style:italic;line-height:1.6}
.example-box .ex strong.imp-c{color:var(--primary);font-style:normal}
.example-box .ex strong.pc-c{color:var(--accent);font-style:normal}
.example-box .note{font-size:.78rem;color:var(--ink-soft);margin-top:8px}
.keyword-grid{
  display:grid;grid-template-columns:1fr 1fr;gap:14px;
  background:var(--surface-2);border-radius:var(--r-sm);
  padding:14px 16px;font-size:.88rem;
}
@media(max-width:600px){.keyword-grid{grid-template-columns:1fr}}
.keyword-grid .imp-keys strong{color:var(--primary)}
.keyword-grid .pc-keys strong{color:var(--accent)}

/* ─────────── TABS ─────────── */
.tabs-list{
  display:grid;grid-template-columns:1fr 1fr;
  background:var(--surface-2);
  border-radius:var(--r-sm);padding:4px;
  margin-bottom:24px;
}
.tab-btn{
  background:transparent;border:none;
  padding:8px 14px;border-radius:6px;
  font-family:inherit;font-size:.92rem;font-weight:600;
  color:var(--ink-soft);cursor:pointer;
  transition:all .15s;
}
.tab-btn.active{background:#fff;color:var(--ink);box-shadow:var(--shadow-sm)}
.tab-btn.tab-imp.active{color:var(--primary)}
.tab-btn.tab-pc.active{color:var(--accent)}
.tab-panel{display:none}
.tab-panel.active{display:block}
.verbs-grid{
  display:grid;grid-template-columns:repeat(auto-fill,minmax(240px,1fr));gap:14px;
}
.verb-card{
  background:var(--surface);
  border:1px solid var(--line);
  border-radius:var(--r-md);overflow:hidden;
  box-shadow:var(--shadow-sm);
}
.verb-card .head{
  padding:10px 14px;
  background:var(--primary-ll);
  font-weight:700;color:var(--ink);
}
.verb-card.pc .head{background:var(--accent-ll)}
.verb-card table{width:100%;border-collapse:collapse;font-size:.88rem}
.verb-card td{padding:6px 14px;border-top:1px solid var(--line)}
.verb-card td:first-child{color:var(--ink-soft);width:35%}

/* ─────────── ACTIVITIES ─────────── */
.activity{
  background:var(--surface);
  border:1px solid var(--line);
  border-radius:var(--r-lg);
  padding:28px;margin-bottom:22px;
  box-shadow:var(--shadow-sm);
}
.activity-head{display:flex;align-items:center;gap:12px;margin-bottom:6px}
.activity-letter{
  width:32px;height:32px;border-radius:8px;
  background:var(--primary);color:#fff;
  display:flex;align-items:center;justify-content:center;
  font-weight:700;font-size:.95rem;
}
.activity-head h3{font-size:1.1rem;font-weight:700}
.activity-sub{color:var(--ink-soft);font-size:.88rem;margin-bottom:20px}

/* MCQ */
.mcq-q{
  background:#FAFAF7;
  border-radius:var(--r-sm);
  padding:16px 18px;margin-bottom:12px;
}
.mcq-q .stem{font-weight:500;margin-bottom:12px}
.mcq-q .qnum{color:var(--ink-soft);font-weight:400;margin-right:4px}
.mcq-opts{display:flex;flex-direction:column;gap:6px}
.opt-label{
  display:flex;align-items:center;gap:10px;
  padding:9px 12px;
  background:#fff;border:1.5px solid var(--line);
  border-radius:var(--r-sm);cursor:pointer;font-size:.92rem;
  transition:all .15s;
}
.opt-label:hover{border-color:var(--ink-2);background:var(--surface-2)}
.opt-label input{accent-color:var(--primary)}
.opt-label.ok{border-color:var(--ok);background:var(--ok-l)}
.opt-label.ko{border-color:var(--ko);background:var(--ko-l)}

/* FILL */
.fill-q{
  background:#FAFAF7;border-radius:var(--r-sm);
  padding:16px 18px;margin-bottom:12px;
}
.fill-text{display:flex;flex-wrap:wrap;align-items:baseline;gap:6px;line-height:2}
.fill-text input{
  border:1.5px solid var(--line);
  background:#fff;
  border-radius:6px;padding:5px 10px;
  font-family:inherit;font-size:.95rem;width:140px;
  transition:border-color .15s;
}
.fill-text input:focus{outline:none;border-color:var(--primary);box-shadow:0 0 0 3px rgba(180,83,9,.12)}
.fill-text input.ok{border-color:var(--ok);background:var(--ok-l)}
.fill-text input.ko{border-color:var(--ko);background:var(--ko-l)}
.fill-hint{font-size:.78rem;color:var(--ink-soft);margin-top:8px;font-style:italic}

/* TRANSFORM */
.trans-q{
  background:#FAFAF7;border-radius:var(--r-sm);
  padding:16px 18px;margin-bottom:12px;
}
.trans-q .original{
  display:flex;align-items:center;flex-wrap:wrap;gap:10px;
  margin-bottom:10px;
}
.trans-q .src{font-weight:500}
.trans-q input{
  width:100%;padding:10px 14px;
  border:1.5px solid var(--line);background:#fff;
  border-radius:var(--r-sm);font-family:inherit;font-size:.95rem;
}
.trans-q input:focus{outline:none;border-color:var(--primary);box-shadow:0 0 0 3px rgba(180,83,9,.12)}
.trans-q input.ok{border-color:var(--ok);background:var(--ok-l)}
.trans-q input.ko{border-color:var(--ko);background:var(--ko-l)}

/* WRITE */
.write-q{
  background:#FAFAF7;border-radius:var(--r-sm);
  padding:16px 18px;margin-bottom:14px;
}
.write-q .prompt{font-weight:500;margin-bottom:10px}
.write-q textarea{
  width:100%;min-height:120px;
  padding:12px 14px;
  border:1.5px solid var(--line);background:#fff;
  border-radius:var(--r-sm);
  font-family:inherit;font-size:.95rem;line-height:1.6;
  resize:vertical;
}
.write-q textarea:focus{outline:none;border-color:var(--primary);box-shadow:0 0 0 3px rgba(180,83,9,.12)}
.write-q .wc{font-size:.78rem;color:var(--ink-soft);margin-top:6px;text-align:right}

/* BUTTONS */
.btn{
  display:inline-flex;align-items:center;gap:8px;
  padding:10px 22px;border:none;border-radius:var(--r-sm);
  font-family:inherit;font-size:.93rem;font-weight:600;
  cursor:pointer;transition:all .15s;
}
.btn-primary{background:var(--ink);color:#fff}
.btn-primary:hover{background:#000}
.btn-accent{background:var(--primary);color:#fff;box-shadow:0 4px 12px rgba(180,83,9,.25)}
.btn-accent:hover{background:#9A4708;box-shadow:0 6px 16px rgba(180,83,9,.35)}
.btn-ghost{background:transparent;border:1.5px solid var(--line);color:var(--ink-2)}
.btn-ghost:hover{border-color:var(--ink-2);color:var(--ink)}
.btn-row{display:flex;flex-wrap:wrap;gap:10px;margin-top:14px}
.btn:disabled{opacity:.45;cursor:not-allowed;box-shadow:none}

/* DELIVERY */
.delivery-card{
  background:linear-gradient(135deg,var(--primary-ll) 0%,#FFFCF5 100%);
  border:2px solid var(--primary-l);
  border-radius:var(--r-lg);
  padding:32px;
  margin-bottom:36px;
  box-shadow:var(--shadow-md);
}
.delivery-card h3{
  font-family:'Lora',serif;
  font-size:1.3rem;font-weight:700;margin-bottom:6px;
  display:flex;align-items:center;gap:10px;
}
.delivery-card .sub{color:var(--ink-2);margin-bottom:18px}
.summary-list{
  background:#fff;
  border:1px solid var(--line);
  border-radius:var(--r-sm);
  padding:14px 18px;
  font-size:.92rem;margin-bottom:18px;
}
.summary-list table{width:100%;border-collapse:collapse}
.summary-list td{padding:6px 0;border-bottom:1px solid var(--line)}
.summary-list td:first-child{font-weight:600;color:var(--ink-2)}
.summary-list td:last-child{text-align:right;color:var(--ink-soft);font-variant-numeric:tabular-nums}
.summary-list tr:last-child td{border-bottom:none}
.delivery-meta{font-size:.85rem;color:var(--ink-2);margin-top:14px}
.delivery-meta strong{display:block;margin-bottom:4px;color:var(--ink)}
.delivery-meta ul{padding-left:18px;margin-top:4px}

/* RESOURCES */
.res-grid{
  display:grid;grid-template-columns:repeat(auto-fit,minmax(220px,1fr));gap:12px;
}
.res-link{
  display:flex;align-items:center;gap:12px;
  padding:14px 16px;
  background:var(--surface);border:1px solid var(--line);
  border-radius:var(--r-md);
  text-decoration:none;color:var(--ink);
  transition:all .15s;
}
.res-link:hover{
  border-color:var(--primary);background:var(--primary-ll);
  transform:translateY(-2px);box-shadow:var(--shadow-md);
}
.res-link .icon{
  width:36px;height:36px;border-radius:8px;
  background:var(--primary-ll);
  display:flex;align-items:center;justify-content:center;
  flex-shrink:0;color:var(--primary);
}
.res-link .info p:first-child{font-weight:600;font-size:.92rem}
.res-link .info p:last-child{font-size:.78rem;color:var(--ink-soft)}

/* TOAST */
.toast{
  position:fixed;left:50%;bottom:30px;
  transform:translateX(-50%) translateY(80px);
  background:var(--ink);color:#fff;
  padding:12px 22px;border-radius:var(--r-sm);
  box-shadow:0 8px 24px rgba(0,0,0,.2);
  font-size:.92rem;font-weight:500;
  opacity:0;transition:.3s;pointer-events:none;z-index:999;
}
.toast.show{opacity:1;transform:translateX(-50%) translateY(0)}

/* FOOTER */
footer{
  border-top:1px solid var(--line);
  background:var(--surface);
  padding:24px;text-align:center;
  font-size:.85rem;color:var(--ink-soft);
}
</style>
</head>
<body>

<!-- HEADER -->
<header class="header">
  <div class="header-inner">
    <div class="brand">
      <div class="brand-logo">
        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 7v14"/><path d="M3 18a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1h5a4 4 0 0 1 4 4 4 4 0 0 1 4-4h5a1 1 0 0 1 1 1v13a1 1 0 0 1-1 1h-6a3 3 0 0 0-3 3 3 3 0 0 0-3-3z"/></svg>
      </div>
      <div class="brand-text">
        <h1>Laboratori del Passat</h1>
        <p>Imparfait i Passé Composé</p>
      </div>
    </div>
    <div class="header-tag">
      <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M21.42 10.922a1 1 0 0 0-.019-1.838L12.83 5.18a2 2 0 0 0-1.66 0L2.6 9.08a1 1 0 0 0 0 1.832l8.57 3.908a2 2 0 0 0 1.66 0z"/><path d="M22 10v6"/><path d="M6 12.5V16a6 3 0 0 0 12 0v-3.5"/></svg>
      <span>Français · A2-B1</span>
    </div>
  </div>
</header>

<!-- HERO -->
<section class="hero">
  <div class="hero-inner">
    <span class="hero-eyebrow">📚 FLE · ESO</span>
    <h1>Domina <em>l'imparfait</em><br>i el <em>passé composé</em></h1>
    <p>Una eina interactiva per descobrir, practicar i diferenciar els dos temps clau del passat en francès.</p>
  </div>
</section>

<main>

<!-- INTRO -->
<div class="intro-card">
  <h2>Benvingut/da al Laboratori del Passat</h2>
  <p>En aquesta activitat aprendràs a distingir i utilitzar correctament els dos temps verbals del passat en francès: <span class="imp-tag">l'imparfait</span> (per a descripcions, hàbits i accions en curs) i <span class="pc-tag">le passé composé</span> (per a accions puntuals i acabades). Llegeix la teoria, consulta les conjugacions i completa les activitats. Quan acabis, descarrega el PDF i penja'l al Classroom.</p>
</div>

<!-- ID FORM -->
<div class="id-card">
  <h3>⚠️ Informació de l'alumne · obligatori</h3>
  <div class="id-fields">
    <div class="id-field">
      <label for="nom">Nom</label>
      <input id="nom" type="text" placeholder="El teu nom">
    </div>
    <div class="id-field">
      <label for="cognoms">Cognoms</label>
      <input id="cognoms" type="text" placeholder="Els teus cognoms">
    </div>
    <div class="id-field">
      <label for="classe">Classe</label>
      <input id="classe" type="text" placeholder="Ex: 3r ESO B">
    </div>
  </div>
</div>

<!-- ───────── SECCIÓ 1 — TEORIA ───────── -->
<section class="section">
  <div class="section-head">
    <div class="section-num">1</div>
    <h2>Teoria · Els temps del passat</h2>
  </div>

  <div class="accordion">

    <!-- IMPARFAIT -->
    <div class="acc-item open">
      <button class="acc-trigger" onclick="toggleAcc(this)">
        <span class="acc-tag">
          <span class="badge badge-imp">Imparfait</span>
          <span>El temps de les descripcions i els hàbits</span>
        </span>
        <span class="acc-icon">
          <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5"><path d="m6 9 6 6 6-6"/></svg>
        </span>
      </button>
      <div class="acc-body">
        <div class="t-card">
          <h4>Com es forma?</h4>
          <div class="formula-box">Radical de <strong>nous</strong> (present) + terminacions</div>
          <table class="cnj-table">
            <tr><th>Persona</th><th>Terminació</th><th>Exemple (parler)</th></tr>
            <tr><td>je</td><td><code>-ais</code></td><td>je parl<strong>ais</strong></td></tr>
            <tr><td>tu</td><td><code>-ais</code></td><td>tu parl<strong>ais</strong></td></tr>
            <tr><td>il/elle/on</td><td><code>-ait</code></td><td>il parl<strong>ait</strong></td></tr>
            <tr><td>nous</td><td><code>-ions</code></td><td>nous parl<strong>ions</strong></td></tr>
            <tr><td>vous</td><td><code>-iez</code></td><td>vous parl<strong>iez</strong></td></tr>
            <tr><td>ils/elles</td><td><code>-aient</code></td><td>ils parl<strong>aient</strong></td></tr>
          </table>
          <div class="warn-box"><strong>Excepció:</strong> El verb <em>être</em> té un radical irregular: <strong>ét-</strong> (j'étais, tu étais…)</div>
        </div>
        <div class="t-card accent">
          <h4>Quan s'utilitza?</h4>
          <div class="usage-list">
            <div class="usage-item imp"><div class="usage-num">1</div><div class="usage-body"><strong>Descripcions en el passat</strong><p>Il faisait beau. La maison était grande.</p></div></div>
            <div class="usage-item imp"><div class="usage-num">2</div><div class="usage-body"><strong>Accions habituals o repetides</strong><p>Chaque été, nous allions à la plage.</p></div></div>
            <div class="usage-item imp"><div class="usage-num">3</div><div class="usage-body"><strong>Accions en curs (context)</strong><p>Je dormais quand le téléphone a sonné.</p></div></div>
            <div class="usage-item imp"><div class="usage-num">4</div><div class="usage-body"><strong>Estats emocionals o físics</strong><p>J'étais fatigué. Elle avait peur.</p></div></div>
          </div>
        </div>
      </div>
    </div>

    <!-- PASSÉ COMPOSÉ -->
    <div class="acc-item">
      <button class="acc-trigger" onclick="toggleAcc(this)">
        <span class="acc-tag">
          <span class="badge badge-pc">Passé Composé</span>
          <span>El temps de les accions puntuals</span>
        </span>
        <span class="acc-icon">
          <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5"><path d="m6 9 6 6 6-6"/></svg>
        </span>
      </button>
      <div class="acc-body">
        <div class="t-card accent">
          <h4>Com es forma?</h4>
          <div class="formula-box accent"><strong>Auxiliar</strong> (avoir/être) + <strong>Participi passat</strong></div>
          <div class="aux-grid">
            <div class="aux-box imp">
              <h5 class="imp-color">Amb AVOIR (majoria)</h5>
              <p>J'ai mangé, tu as fini, il a vu…</p>
              <p class="hint">El participi NO concorda amb el subjecte.</p>
            </div>
            <div class="aux-box pc">
              <h5 class="pc-color">Amb ÊTRE (moviment + pronominals)</h5>
              <p>Je suis allé(e), elle est partie…</p>
              <p class="hint">El participi CONCORDA amb el subjecte.</p>
            </div>
          </div>
          <h4 style="margin-top:14px">Verbs amb <em>être</em> (la maison d'être)</h4>
          <div class="verbs-list">
            <div class="verb-chip">aller</div><div class="verb-chip">venir</div><div class="verb-chip">entrer</div><div class="verb-chip">sortir</div>
            <div class="verb-chip">arriver</div><div class="verb-chip">partir</div><div class="verb-chip">monter</div><div class="verb-chip">descendre</div>
            <div class="verb-chip">naître</div><div class="verb-chip">mourir</div><div class="verb-chip">rester</div><div class="verb-chip">tomber</div>
            <div class="verb-chip">retourner</div><div class="verb-chip">passer</div>
          </div>
          <div class="warn-box">+ tots els verbs pronominals (se lever, se coucher…)</div>
        </div>
        <div class="t-card">
          <h4>Participis passats</h4>
          <table class="cnj-table accent">
            <tr><th>Grup</th><th>Terminació</th><th>Exemples</th></tr>
            <tr><td>1r grup (-er)</td><td><code>-é</code></td><td>parlé, mangé, regardé</td></tr>
            <tr><td>2n grup (-ir)</td><td><code>-i</code></td><td>fini, choisi, réussi</td></tr>
            <tr><td>3r grup</td><td><code>irregular</code></td><td>fait, vu, pris, dit, écrit, bu…</td></tr>
          </table>
        </div>
        <div class="t-card accent">
          <h4>Quan s'utilitza?</h4>
          <div class="usage-list">
            <div class="usage-item"><div class="usage-num">1</div><div class="usage-body"><strong>Accions puntuals i acabades</strong><p>Hier, j'ai acheté un livre.</p></div></div>
            <div class="usage-item"><div class="usage-num">2</div><div class="usage-body"><strong>Successió d'esdeveniments</strong><p>Il s'est levé, il a pris son petit-déjeuner et il est parti.</p></div></div>
            <div class="usage-item"><div class="usage-num">3</div><div class="usage-body"><strong>Acció que interromp una altra</strong><p>Je lisais quand le téléphone a sonné.</p></div></div>
          </div>
        </div>
      </div>
    </div>

    <!-- COMBINACIÓ -->
    <div class="acc-item">
      <button class="acc-trigger" onclick="toggleAcc(this)">
        <span class="acc-tag">
          <span class="badge badge-neutral">Imparfait + Passé Composé</span>
          <span>Com combinar-los?</span>
        </span>
        <span class="acc-icon">
          <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5"><path d="m6 9 6 6 6-6"/></svg>
        </span>
      </button>
      <div class="acc-body">
        <div class="compare-grid">
          <div class="compare-side imp">
            <span class="badge badge-imp">Imparfait</span>
            <div class="emoji">🎬</div>
            <h5>El decorat / El fons</h5>
            <p>Descripció, context, acció en curs</p>
          </div>
          <div class="compare-side pc">
            <span class="badge badge-pc">Passé Composé</span>
            <div class="emoji">⚡</div>
            <h5>L'acció principal</h5>
            <p>Esdeveniment puntual, canvi</p>
          </div>
        </div>
        <div class="t-card neutral">
          <h4>Exemples combinats</h4>
          <div class="example-box">
            <p class="ex">"Il <strong class="imp-c">faisait</strong> beau et je <strong class="imp-c">me promenais</strong> dans le parc quand soudain j'<strong class="pc-c">ai vu</strong> un vieil ami."</p>
            <p class="note"><strong class="imp-c" style="color:var(--primary)">Imparfait</strong>: context i acció en curs · <strong class="pc-c" style="color:var(--accent)">Passé composé</strong>: acció puntual</p>
          </div>
          <div class="example-box">
            <p class="ex">"Quand j'<strong class="imp-c">étais</strong> petit, chaque dimanche nous <strong class="imp-c">allions</strong> chez ma grand-mère. Un jour, elle m'<strong class="pc-c">a offert</strong> un livre magique."</p>
            <p class="note"><strong class="imp-c" style="color:var(--primary)">Imparfait</strong>: hàbit · <strong class="pc-c" style="color:var(--accent)">Passé composé</strong>: esdeveniment únic</p>
          </div>
        </div>
        <div class="keyword-grid">
          <div class="imp-keys"><strong>→ Imparfait:</strong> toujours, souvent, chaque jour/semaine, d'habitude, autrefois, quand j'étais petit…</div>
          <div class="pc-keys"><strong>→ Passé Composé:</strong> hier, la semaine dernière, soudain, tout à coup, un jour, à ce moment-là…</div>
        </div>
      </div>
    </div>

  </div>
</section>

<!-- ───────── SECCIÓ 2 — TAULES ───────── -->
<section class="section">
  <div class="section-head">
    <div class="section-num">2</div>
    <h2>Taules de conjugació</h2>
  </div>
  <div class="tabs-list">
    <button class="tab-btn tab-imp active" onclick="showTab('tab-imp',this)">Imparfait</button>
    <button class="tab-btn tab-pc" onclick="showTab('tab-pc',this)">Passé Composé</button>
  </div>
  <div id="tab-imp" class="tab-panel active">
    <div class="verbs-grid" id="grid-imp"></div>
  </div>
  <div id="tab-pc" class="tab-panel">
    <div class="verbs-grid" id="grid-pc"></div>
  </div>
</section>

<!-- ───────── SECCIÓ 3 — ACTIVITATS ───────── -->
<section class="section">
  <div class="section-head">
    <div class="section-num">3</div>
    <h2>Activitats interactives</h2>
  </div>

  <!-- A -- MCQ -->
  <div class="activity">
    <div class="activity-head"><div class="activity-letter">A</div><h3>Tria l'opció correcta</h3></div>
    <div class="activity-sub">Selecciona el temps verbal adequat per a cada frase</div>
    <div id="mcq-area"></div>
    <div class="btn-row">
      <button class="btn btn-primary" onclick="checkMCQ()">Comprovar</button>
      <button class="btn btn-ghost" onclick="resetMCQ()">Reiniciar</button>
    </div>
  </div>

  <!-- B -- FILL -->
  <div class="activity">
    <div class="activity-head"><div class="activity-letter">B</div><h3>Omple els espais</h3></div>
    <div class="activity-sub">Conjuga els verbs entre parèntesis en el temps correcte</div>
    <div id="fill-area"></div>
    <div class="btn-row">
      <button class="btn btn-primary" onclick="checkFill()">Comprovar</button>
      <button class="btn btn-ghost" onclick="resetFill()">Reiniciar</button>
    </div>
  </div>

  <!-- C -- TRANSFORM -->
  <div class="activity">
    <div class="activity-head"><div class="activity-letter">C</div><h3>Transforma les frases</h3></div>
    <div class="activity-sub">Canvia les frases al temps indicat</div>
    <div id="trans-area"></div>
    <div class="btn-row">
      <button class="btn btn-primary" onclick="checkTrans()">Comprovar</button>
      <button class="btn btn-ghost" onclick="resetTrans()">Reiniciar</button>
    </div>
  </div>

  <!-- D -- WRITE -->
  <div class="activity">
    <div class="activity-head"><div class="activity-letter">D</div><h3>Redacció</h3></div>
    <div class="activity-sub">Escriu textos utilitzant els temps del passat</div>
    <div id="write-area"></div>
  </div>
</section>

<!-- ───────── SECCIÓ 4 — ENTREGA ───────── -->
<section class="section">
  <div class="section-head">
    <div class="section-num">4</div>
    <h2>Entrega de les activitats</h2>
  </div>
  <div class="delivery-card">
    <h3>📥 Descarrega i envia les activitats</h3>
    <p class="sub">Genera un PDF amb totes les teves respostes per penjar-lo al Classroom.</p>
    <div class="summary-list"><table id="summary"></table></div>
    <div class="btn-row">
      <button class="btn btn-ghost" id="refreshSum">↻ Actualitzar resum</button>
      <button class="btn btn-accent" id="dlPdf">📄 Descarregar PDF</button>
    </div>
    <div class="delivery-meta">
      <strong>El PDF inclourà:</strong>
      <ul>
        <li>Les teves dades (nom, cognoms, classe i data)</li>
        <li>Resum amb les puntuacions de cada activitat</li>
        <li>Les teves redaccions completes</li>
      </ul>
    </div>
  </div>
</section>

<!-- ───────── RECURSOS ───────── -->
<section class="section">
  <div class="section-head">
    <div class="section-num" style="background:var(--ink-soft)">+</div>
    <h2>Recursos addicionals</h2>
  </div>
  <div class="res-grid">
    <a class="res-link" href="https://www.francaisfacile.com/exercices/exercice-francais-2/exercice-francais-3267.php" target="_blank" rel="noopener">
      <span class="icon"><svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M15 3h6v6"/><path d="M10 14 21 3"/><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"/></svg></span>
      <div class="info"><p>Français Facile</p><p>Exercicis interactius</p></div>
    </a>
    <a class="res-link" href="https://www.lepointdufle.net/ressources_fle/passecompose_imparfait.htm" target="_blank" rel="noopener">
      <span class="icon"><svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M15 3h6v6"/><path d="M10 14 21 3"/><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"/></svg></span>
      <div class="info"><p>Le Point du FLE</p><p>Teoria i exercicis</p></div>
    </a>
    <a class="res-link" href="https://www.bonjourdefrance.com/exercices/contenu/limparfait-et-le-passe-compose.html" target="_blank" rel="noopener">
      <span class="icon"><svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M15 3h6v6"/><path d="M10 14 21 3"/><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"/></svg></span>
      <div class="info"><p>Bonjour de France</p><p>Activitats variades</p></div>
    </a>
  </div>
</section>

</main>

<div class="toast" id="toast">PDF generat ✅</div>

<footer>
  Laboratori del Passat · Eina interactiva per aprendre francès · ESO
</footer>

<script>
/* ─────────── ACCORDION ─────────── */
function toggleAcc(btn){
  btn.parentElement.classList.toggle('open');
}

/* ─────────── TABS ─────────── */
function showTab(id, btn){
  document.querySelectorAll('.tab-panel').forEach(p=>p.classList.remove('active'));
  document.querySelectorAll('.tab-btn').forEach(b=>b.classList.remove('active'));
  document.getElementById(id).classList.add('active');
  btn.classList.add('active');
}

/* ─────────── DADES CONJUGACIÓ ─────────── */
const VERBS_IMP = {
  avoir:["j'avais","tu avais","il avait","nous avions","vous aviez","ils avaient"],
  être:["j'étais","tu étais","il était","nous étions","vous étiez","ils étaient"],
  aller:["j'allais","tu allais","il allait","nous allions","vous alliez","ils allaient"],
  faire:["je faisais","tu faisais","il faisait","nous faisions","vous faisiez","ils faisaient"],
  venir:["je venais","tu venais","il venait","nous venions","vous veniez","ils venaient"],
  prendre:["je prenais","tu prenais","il prenait","nous prenions","vous preniez","ils prenaient"],
  voir:["je voyais","tu voyais","il voyait","nous voyions","vous voyiez","ils voyaient"],
  pouvoir:["je pouvais","tu pouvais","il pouvait","nous pouvions","vous pouviez","ils pouvaient"],
  vouloir:["je voulais","tu voulais","il voulait","nous voulions","vous vouliez","ils voulaient"],
  savoir:["je savais","tu savais","il savait","nous savions","vous saviez","ils savaient"],
  manger:["je mangeais","tu mangeais","il mangeait","nous mangions","vous mangiez","ils mangeaient"],
  finir:["je finissais","tu finissais","il finissait","nous finissions","vous finissiez","ils finissaient"],
};
const VERBS_PC = {
  avoir:["j'ai eu","tu as eu","il a eu","nous avons eu","vous avez eu","ils ont eu"],
  être:["j'ai été","tu as été","il a été","nous avons été","vous avez été","ils ont été"],
  aller:["je suis allé(e)","tu es allé(e)","il est allé","nous sommes allés","vous êtes allés","ils sont allés"],
  faire:["j'ai fait","tu as fait","il a fait","nous avons fait","vous avez fait","ils ont fait"],
  venir:["je suis venu(e)","tu es venu(e)","il est venu","nous sommes venus","vous êtes venus","ils sont venus"],
  prendre:["j'ai pris","tu as pris","il a pris","nous avons pris","vous avez pris","ils ont pris"],
  voir:["j'ai vu","tu as vu","il a vu","nous avons vu","vous avez vu","ils ont vu"],
  pouvoir:["j'ai pu","tu as pu","il a pu","nous avons pu","vous avez pu","ils ont pu"],
  vouloir:["j'ai voulu","tu as voulu","il a voulu","nous avons voulu","vous avez voulu","ils ont voulu"],
  savoir:["j'ai su","tu as su","il a su","nous avons su","vous avez su","ils ont su"],
  manger:["j'ai mangé","tu as mangé","il a mangé","nous avons mangé","vous avez mangé","ils ont mangé"],
  finir:["j'ai fini","tu as fini","il a fini","nous avons fini","vous avez fini","ils ont fini"],
};
const PRONOMS=["je","tu","il/elle/on","nous","vous","ils/elles"];
function buildVerbsGrid(targetId, data, isPC){
  const c=document.getElementById(targetId);
  c.innerHTML='';
  Object.keys(data).forEach(v=>{
    const rows = data[v].map((f,i)=>`<tr><td>${PRONOMS[i]}</td><td>${f}</td></tr>`).join('');
    c.innerHTML += `<div class="verb-card${isPC?' pc':''}"><div class="head">${v}</div><table>${rows}</table></div>`;
  });
}
buildVerbsGrid('grid-imp',VERBS_IMP,false);
buildVerbsGrid('grid-pc',VERBS_PC,true);

/* ─────────── ACTIVITAT A · MCQ ─────────── */
const MCQ_DATA=[
  {q:"Quand j'___ petit, je ___ souvent au parc.",opts:["étais / allais","ai été / suis allé","étais / suis allé"],ans:0},
  {q:"Hier, Marie ___ un gâteau délicieux.",opts:["faisait","a fait","fait"],ans:1},
  {q:"Il ___ quand soudain le téléphone ___.",opts:["dormait / a sonné","a dormi / sonnait","dormait / sonnait"],ans:0},
  {q:"Nous ___ à la montagne chaque été quand nous ___ jeunes.",opts:["sommes allés / étions","allions / étions","allions / avons été"],ans:1},
  {q:"Elle ___ son café quand quelqu'un ___ à la porte.",opts:["buvait / a frappé","a bu / frappait","a bu / a frappé"],ans:0},
];
function renderMCQ(){
  const a=document.getElementById('mcq-area');
  a.innerHTML=MCQ_DATA.map((m,i)=>`
    <div class="mcq-q">
      <div class="stem"><span class="qnum">${i+1}.</span>${m.q}</div>
      <div class="mcq-opts">
        ${m.opts.map((o,j)=>`<label class="opt-label" data-i="${i}" data-j="${j}"><input type="radio" name="mcq${i}" value="${j}">${o}</label>`).join('')}
      </div>
    </div>`).join('');
}
function checkMCQ(){
  let ok=0;
  MCQ_DATA.forEach((m,i)=>{
    const sel=document.querySelector(`input[name="mcq${i}"]:checked`);
    document.querySelectorAll(`label[data-i="${i}"]`).forEach(l=>l.classList.remove('ok','ko'));
    if(!sel) return;
    const v=parseInt(sel.value);
    const correctL=document.querySelector(`label[data-i="${i}"][data-j="${m.ans}"]`);
    const chosenL=document.querySelector(`label[data-i="${i}"][data-j="${v}"]`);
    if(v===m.ans){chosenL.classList.add('ok');ok++;}
    else{chosenL.classList.add('ko');correctL.classList.add('ok');}
  });
  window.__SCORES.mcq={ok,total:MCQ_DATA.length};
  toast(`MCQ: ${ok}/${MCQ_DATA.length} correctes`);
  buildSummary();
}
function resetMCQ(){renderMCQ();window.__SCORES.mcq=null;buildSummary();}
renderMCQ();

/* ─────────── ACTIVITAT B · FILL ─────────── */
const FILL_DATA=[
  {parts:["Quand je (être) "," enfant, je (jouer) "," avec mes amis."],ans:["étais","jouais"],hint:"Descripció + hàbit → Imparfait"},
  {parts:["Hier, nous (aller) "," au cinéma et nous (voir) "," un bon film."],ans:["sommes allés","avons vu"],hint:"Accions puntuals ahir → Passé composé"},
  {parts:["Il (pleuvoir) "," quand soudain le soleil (apparaître) ","."],ans:["pleuvait","est apparu"],hint:"Context + canvi sobtat"},
  {parts:["Ma grand-mère (avoir) "," une grande maison où nous (passer) "," les vacances."],ans:["avait","passions"],hint:"Descripció + hàbit → Imparfait"},
  {parts:["Je (lire) "," un livre quand tu (téléphoner) ","."],ans:["lisais","as téléphoné"],hint:"Acció en curs + interrupció"},
];
function renderFill(){
  const a=document.getElementById('fill-area');
  a.innerHTML=FILL_DATA.map((f,i)=>{
    let h='<div class="fill-q"><div class="fill-text">';
    h+=`<span><span class="qnum">${i+1}.</span></span>`;
    f.parts.forEach((p,idx)=>{
      h+=`<span>${p}</span>`;
      if(idx<f.ans.length) h+=`<input data-i="${i}" data-idx="${idx}" placeholder="…">`;
    });
    h+=`</div><div class="fill-hint">💡 ${f.hint}</div></div>`;
    return h;
  }).join('');
}
function norm(s){return (s||'').trim().toLowerCase().replace(/\s+/g,' ');}
function checkFill(){
  let ok=0,total=0;
  FILL_DATA.forEach((f,i)=>{
    f.ans.forEach((a,idx)=>{
      total++;
      const inp=document.querySelector(`input[data-i="${i}"][data-idx="${idx}"]`);
      inp.classList.remove('ok','ko');
      if(norm(inp.value)===norm(a)){inp.classList.add('ok');ok++;}
      else if(inp.value.trim()) inp.classList.add('ko');
    });
  });
  window.__SCORES.fill={ok,total};
  toast(`Omple buits: ${ok}/${total}`);
  buildSummary();
}
function resetFill(){renderFill();window.__SCORES.fill=null;buildSummary();}
renderFill();

/* ─────────── ACTIVITAT C · TRANSFORM ─────────── */
const TRANS_DATA=[
  {src:"Je mange une pomme.",target:"Passé composé",ans:"j'ai mangé une pomme"},
  {src:"Nous allons au marché.",target:"Passé composé",ans:"nous sommes allés au marché"},
  {src:"Elle fait ses devoirs.",target:"Imparfait",ans:"elle faisait ses devoirs"},
  {src:"Ils prennent le bus.",target:"Passé composé",ans:"ils ont pris le bus"},
];
function renderTrans(){
  const a=document.getElementById('trans-area');
  a.innerHTML=TRANS_DATA.map((t,i)=>`
    <div class="trans-q">
      <div class="original"><span class="qnum">${i+1}.</span><span class="src">${t.src}</span><span class="badge badge-neutral">→ ${t.target}</span></div>
      <input data-i="${i}" placeholder="Escriu la transformació…">
    </div>`).join('');
}
function checkTrans(){
  let ok=0;
  TRANS_DATA.forEach((t,i)=>{
    const inp=document.querySelector(`#trans-area input[data-i="${i}"]`);
    inp.classList.remove('ok','ko');
    if(norm(inp.value).replace(/[.!?]/g,'')===norm(t.ans).replace(/[.!?]/g,'')){inp.classList.add('ok');ok++;}
    else if(inp.value.trim()) inp.classList.add('ko');
  });
  window.__SCORES.trans={ok,total:TRANS_DATA.length};
  toast(`Transformacions: ${ok}/${TRANS_DATA.length}`);
  buildSummary();
}
function resetTrans(){renderTrans();window.__SCORES.trans=null;buildSummary();}
renderTrans();

/* ─────────── ACTIVITAT D · WRITE ─────────── */
const WRITE_DATA=[
  {prompt:"Descriu un dia típic quan eres petit/a. Utilitza l'imparfait per descriure les teves rutines.",min:30},
  {prompt:"Explica què vas fer ahir. Utilitza el passé composé per les accions concretes.",min:30},
  {prompt:"Escriu una petita història combinant els dos temps: el context (imparfait) i els esdeveniments (passé composé).",min:50},
];
function renderWrite(){
  const a=document.getElementById('write-area');
  a.innerHTML=WRITE_DATA.map((w,i)=>`
    <div class="write-q">
      <div class="prompt"><span class="qnum">${i+1}.</span>${w.prompt}</div>
      <textarea data-i="${i}" placeholder="Escriu aquí…" oninput="updateWC(${i},${w.min})"></textarea>
      <div class="wc"><span id="wc-${i}">0</span> / ${w.min} paraules mínim</div>
    </div>`).join('');
}
function updateWC(i,min){
  const ta=document.querySelector(`#write-area textarea[data-i="${i}"]`);
  const c=ta.value.trim().split(/\s+/).filter(Boolean).length;
  document.getElementById('wc-'+i).textContent=c;
}
renderWrite();

/* ─────────── RESUM + PDF ─────────── */
window.__SCORES={mcq:null,fill:null,trans:null};
function getStudent(){
  return {
    nom:(document.getElementById('nom').value||'').trim(),
    cognoms:(document.getElementById('cognoms').value||'').trim(),
    classe:(document.getElementById('classe').value||'').trim(),
  };
}
function buildSummary(){
  const s=getStudent();
  const sc=window.__SCORES;
  const writeWc=WRITE_DATA.map((w,i)=>{
    const ta=document.querySelector(`#write-area textarea[data-i="${i}"]`);
    return ta? ta.value.trim().split(/\s+/).filter(Boolean).length : 0;
  });
  const rows=[
    ['Alumne/a', `${s.nom||'—'} ${s.cognoms}`.trim() || '—'],
    ['Classe', s.classe||'—'],
    ['Data', new Date().toLocaleDateString('ca-ES')],
    ['Activitat A · MCQ', sc.mcq ? `${sc.mcq.ok}/${sc.mcq.total}` : 'pendent'],
    ['Activitat B · Omple buits', sc.fill ? `${sc.fill.ok}/${sc.fill.total}` : 'pendent'],
    ['Activitat C · Transforma', sc.trans ? `${sc.trans.ok}/${sc.trans.total}` : 'pendent'],
    ['Activitat D · Redacció', `${writeWc.reduce((a,b)=>a+b,0)} paraules totals`],
  ];
  document.getElementById('summary').innerHTML=rows.map(r=>`<tr><td>${r[0]}</td><td>${r[1]}</td></tr>`).join('');
  // PDF enabled?
  const ok = s.nom && s.cognoms && s.classe;
  document.getElementById('dlPdf').disabled = !ok;
}
document.getElementById('refreshSum').onclick=()=>{buildSummary();toast('Resum actualitzat ✅');};
['nom','cognoms','classe'].forEach(id=>document.getElementById(id).addEventListener('input',buildSummary));
buildSummary();

function toast(msg){
  const t=document.getElementById('toast');
  t.textContent=msg;t.classList.add('show');
  clearTimeout(t._tid);
  t._tid=setTimeout(()=>t.classList.remove('show'),2400);
}

document.getElementById('dlPdf').onclick=()=>{
  const s=getStudent();
  if(!s.nom||!s.cognoms||!s.classe){
    alert('Cal omplir Nom, Cognoms i Classe per descarregar el PDF.');
    document.getElementById('nom').focus();
    return;
  }
  const sc=window.__SCORES;
  const writes=WRITE_DATA.map((w,i)=>{
    const ta=document.querySelector(`#write-area textarea[data-i="${i}"]`);
    return ta ? ta.value : '';
  });
  const { jsPDF } = window.jspdf;
  const doc = new jsPDF({unit:'mm',format:'a4'});
  const W=doc.internal.pageSize.getWidth();
  const H=doc.internal.pageSize.getHeight();
  let y=0;
  // Header
  doc.setFillColor(180,83,9); doc.rect(0,0,W,30,'F');
  doc.setTextColor(255); doc.setFont('helvetica','bold'); doc.setFontSize(17);
  doc.text("Laboratori del Passat",14,13);
  doc.setFont('helvetica','italic'); doc.setFontSize(10);
  doc.text("Imparfait i Passé Composé · Tasca per a Classroom",14,20);
  doc.setFont('helvetica','normal'); doc.setFontSize(9);
  doc.text("Francès · ESO",14,25.5);
  y=42;
  // Alumne
  doc.setTextColor(31,27,22); doc.setFont('helvetica','bold'); doc.setFontSize(11);
  doc.text(`Alumne/a: ${s.nom} ${s.cognoms}`,14,y);
  doc.text(`Classe: ${s.classe}`,W/2+10,y);
  y+=6;
  doc.text(`Data: ${new Date().toLocaleDateString('ca-ES')}`,14,y);
  y+=10;
  doc.setDrawColor(180,83,9); doc.setLineWidth(.5); doc.line(14,y,W-14,y); y+=8;
  // Resum
  doc.setFont('helvetica','bold'); doc.setFontSize(13); doc.setTextColor(180,83,9);
  doc.text("Resum del treball",14,y); y+=8;
  doc.setFont('helvetica','normal'); doc.setFontSize(10.5); doc.setTextColor(31,27,22);
  const rows=[
    ['Activitat A · MCQ', sc.mcq ? `${sc.mcq.ok} / ${sc.mcq.total}` : 'pendent'],
    ['Activitat B · Omple els espais', sc.fill ? `${sc.fill.ok} / ${sc.fill.total}` : 'pendent'],
    ['Activitat C · Transforma frases', sc.trans ? `${sc.trans.ok} / ${sc.trans.total}` : 'pendent'],
    ['Activitat D · Redacció', `${writes.map(w=>w.trim().split(/\s+/).filter(Boolean).length).reduce((a,b)=>a+b,0)} paraules totals`],
  ];
  rows.forEach(r=>{
    doc.setFont('helvetica','bold'); doc.text("•  "+r[0],14,y);
    doc.setFont('helvetica','normal'); doc.text(r[1],W-14,y,{align:'right'});
    y+=7;
  });
  y+=5;
  doc.setDrawColor(232,222,203); doc.line(14,y,W-14,y); y+=8;

  // Redaccions
  doc.setFont('helvetica','bold'); doc.setFontSize(13); doc.setTextColor(180,83,9);
  doc.text("Redaccions de l'alumne/a",14,y); y+=7;
  WRITE_DATA.forEach((w,i)=>{
    if(y>270){doc.addPage();y=20;}
    doc.setFont('helvetica','bold'); doc.setFontSize(10.5); doc.setTextColor(31,27,22);
    const ptitle=doc.splitTextToSize(`Redacció ${i+1}: ${w.prompt}`, W-28);
    doc.text(ptitle,14,y); y+=ptitle.length*5.5+2;
    doc.setFont('helvetica','normal'); doc.setFontSize(10); doc.setTextColor(82,72,59);
    const txt=(writes[i]||'(sense resposta)');
    const lines=doc.splitTextToSize(txt,W-28);
    lines.forEach(l=>{
      if(y>278){doc.addPage();y=20;}
      doc.text(l,14,y); y+=5.5;
    });
    y+=4;
  });

  // Footer
  const pages=doc.internal.getNumberOfPages();
  for(let p=1;p<=pages;p++){
    doc.setPage(p);
    doc.setFont('helvetica','italic'); doc.setFontSize(8); doc.setTextColor(140,130,115);
    doc.text(`${s.nom} ${s.cognoms} · ${s.classe} · Pàgina ${p}/${pages}`,W/2,H-8,{align:'center'});
  }
  const fname=`Laboratori-passat_${s.nom}_${s.cognoms}_${s.classe}.pdf`.replace(/\s+/g,'_');
  doc.save(fname);
  toast('PDF generat ✅');
};
</script>
</body>
</html>