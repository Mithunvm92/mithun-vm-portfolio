import React, { useState } from "react";
import { createRoot } from "react-dom/client";
import {
  ArrowDownRight, ArrowRight, ArrowUpRight, BriefcaseBusiness, Check,
  ChevronDown, CircuitBoard, Code2, Cpu, ExternalLink, Github, Globe,
  Mail, Menu, MessageSquare, RadioTower, ShieldCheck, Sparkles, Workflow,
  Wrench, X, Zap
} from "lucide-react";
import "./styles.css";

const projects = [
  {
    number: "01", type: "SECURITY · OBSERVABILITY", title: "Vulnerability Monitoring Platform",
    summary: "Automated container vulnerability scanning with metrics and operational visibility.",
    tags: ["Trivy", "Python", "Prometheus", "Grafana", "Docker"],
    icon: ShieldCheck, tone: "mint",
    problem: "Container security findings can be difficult to track consistently across environments.",
    approach: "Built an automation workflow around Trivy scanning, exported metrics for Prometheus, and used Grafana to make security status easier to inspect.",
    outcome: "A portfolio-ready monitoring workflow that demonstrates security automation, metrics instrumentation, and dashboard thinking.",
    link: "https://github.com/Mithunvm92/vulnerability-scanner", linkLabel: "View repository"
  },
  {
    number: "02", type: "IoT · DEVICE MONITORING", title: "DevicePulse",
    summary: "An IoT device-monitoring MVP for Android kiosk heartbeat, telemetry, connectivity, and dashboard visibility.",
    tags: ["Android Kiosk", "MQTT", "Python API", "PostgreSQL", "Docker", "Monitoring"],
    icon: RadioTower, tone: "blue",
    problem: "Device fleets need a centralized view of connectivity, last-seen status, and reported telemetry.",
    approach: "Designed an IoT monitoring workflow connecting Android kiosk telemetry through MQTT to a Python backend, PostgreSQL storage, and a web dashboard.",
    outcome: "Demonstrates IoT messaging, backend API integration, persistent monitoring data, and containerized deployment.",
    link: "https://github.com/Mithunvm92/DevicePulse", linkLabel: "View GitHub repository"
  },
  {
    number: "03", type: "EMBEDDED SYSTEMS · IoT", title: "ESP32 Smart Weather & Disaster Station",
    summary: "An ESP32-C3 project featuring Wi-Fi provisioning, a captive setup portal, and SSD1306 OLED hardware integration.",
    tags: ["ESP32-C3", "Embedded C++", "WiFiManager", "SSD1306 OLED", "PlatformIO", "Hardware Debugging"],
    icon: CircuitBoard, tone: "mint",
    problem: "Embedded devices need a reliable way to configure Wi-Fi and recover when a saved network becomes unavailable.",
    approach: "Implemented Wi-Fi connection management, a captive setup portal, retry handling, and serial diagnostic commands for status, reboot, heap inspection, and Wi-Fi reset.",
    outcome: "Demonstrates embedded IoT development, hardware integration, device provisioning, and serial-based diagnostics.",
    link: "https://github.com/Mithunvm92/ESP32-SmartWeatherStation", linkLabel: "View GitHub repository"
  },
  {
    number: "04", type: "FULL-STACK · BUSINESS TOOLS", title: "Employee Management App",
    summary: "A containerized three-tier application with a React UI, Flask API, and PostgreSQL database.",
    tags: ["React", "Flask", "PostgreSQL", "Docker", "Docker Compose"],
    icon: Workflow, tone: "purple",
    problem: "Business workflows often need a straightforward interface connected to reliable, structured data.",
    approach: "Designed a separated frontend, backend, and database architecture that can be run and developed as containers.",
    outcome: "Demonstrates full-stack application structure, API integration, database-backed workflows, and containerization.",
    link: "", linkLabel: "Repository link to be added"
  },
  {
    number: "05", type: "PRODUCT · DEVELOPER TOOLS", title: "FluxKit.online",
    summary: "A browser-based workspace of lightweight tools for everyday developer tasks.",
    tags: ["React", "Node.js", "Cloudflare Workers", "Web Tools"],
    icon: Globe, tone: "orange",
    problem: "Small formatting and conversion tasks interrupt a developer's workflow when tools are scattered across websites.",
    approach: "Created a collection of browser-based utilities with a focus on fast access and simple workflows.",
    outcome: "Shows product ownership, frontend delivery, and the ability to ship a useful collection of tools.",
    link: "https://fluxkit.online", linkLabel: "Visit FluxKit.online"
  },
  {
    number: "06", type: "SEMICONDUCTOR · TEST ANALYTICS", title: "ATE Yield Intelligence",
    summary: "An interactive dashboard for semiconductor ATE results, yield analysis, lot comparison, failure-bin pareto, and parametric test visualization.",
    tags: ["Python", "FastAPI", "React", "TypeScript", "Pandas", "Pytest"],
    icon: Cpu, tone: "blue",
    problem: "ATE test results need clear, consistent analysis across production lots, devices, and failure bins.",
    approach: "Built a web dashboard with CSV upload and validation, yield calculations, lot-level analysis, failure-bin pareto, and parametric charts.",
    outcome: "Demonstrates semiconductor test-data analysis, yield monitoring, and engineering decision support.",
    link: "https://github.com/Mithunvm92/ate-yield-intelligence", linkLabel: "View GitHub repository"
  },
];

const skills = [
  { title: "ATE Platforms & Test Operations", items: "Teradyne J750 · UltraFlex · Advantest V93K · Credence · LTX Fusion · XC Diamond · Final test · Test hardware readiness" },
  { title: "Qualification & Reliability", items: "Wafer bring-up · Silicon characterization · AMSA · DOE · FMEA · Bin-flip verification · Test-program buy-off · Yield analysis" },
  { title: "Hardware Troubleshooting", items: "Handler faults · Socket / PCB troubleshooting · Sensor alignment · Change kits · RF test systems · Calibration · Preventive maintenance" },
  { title: "Production & Lab Operations", items: "Equipment readiness · Inventory and traceability · Vendor coordination · SOPs · 5S · EHS awareness · Quality documentation" },
  { title: "IoT & Technical Support", items: "ANPR cameras · RFID · Barrier gates · Lane controllers · Access control · REST APIs · PostgreSQL · SQL · Incident RCA" },
  { title: "Software, Cloud & Monitoring", items: "Python · Linux shell · Docker · AWS fundamentals · Prometheus · Grafana · Kibana · Git · Cloudflare Workers" }
];

function App() {
  const [menuOpen, setMenuOpen] = useState(false);
  const [activeProject, setActiveProject] = useState(null);
  const [contactType, setContactType] = useState("freelance");
  const [copiedEmail, setCopiedEmail] = useState(false);

  // Replace this address with the professional email you want to publish.
  const email = "mithunvm92@gmail.com";
  const closeMenu = () => setMenuOpen(false);
  const openContact = (type) => {
    setContactType(type);
    document.getElementById("contact")?.scrollIntoView({ behavior: "smooth" });
    closeMenu();
  };
  const copyEmail = async () => {
    try {
      await navigator.clipboard.writeText(email);
      setCopiedEmail(true);
      setTimeout(() => setCopiedEmail(false), 1800);
    } catch {
      window.location.href = `mailto:${email}`;
    }
  };
  const submitInquiry = (event) => {
    event.preventDefault();
    const data = new FormData(event.currentTarget);
    const subject = encodeURIComponent(`[Portfolio ${data.get("type")}] ${data.get("subject")}`);
    const body = encodeURIComponent(
      `Name: ${data.get("name")}\nEmail: ${data.get("email")}\nInquiry type: ${data.get("type")}\nBudget / level: ${data.get("budget") || "Not specified"}\nTimeline: ${data.get("timeline") || "Not specified"}\n\nDetails:\n${data.get("message")}`
    );
    window.location.href = `mailto:${email}?subject=${subject}&body=${body}`;
  };

  return (
    <div className="site-shell">
      <div className="ambient ambient-one" aria-hidden="true" />
      <div className="ambient ambient-two" aria-hidden="true" />
      <header className="topbar">
        <a href="#home" className="brand" onClick={closeMenu} aria-label="Mithun VM home">
          <span className="brand-mark">M<span>.</span></span>
          <span className="brand-copy">MITHUN VM<small>ENGINEER · BUILDER</small></span>
        </a>
        <button className="mobile-menu" onClick={() => setMenuOpen(!menuOpen)} aria-label={menuOpen ? "Close menu" : "Open menu"}>
          {menuOpen ? <X size={21} /> : <Menu size={21} />}
        </button>
        <nav className={menuOpen ? "nav-links open" : "nav-links"}>
          <a href="#work" onClick={closeMenu}>Projects</a>
          <a href="#experience" onClick={closeMenu}>Experience</a>
          <a href="#services" onClick={closeMenu}>Services</a>
          <a href="#about" onClick={closeMenu}>About</a>
          <button className="nav-cta" onClick={() => openContact("freelance")}>Let’s talk <ArrowUpRight size={15} /></button>
        </nav>
      </header>

      <main>
        <section className="hero section-wrap" id="home">
          <div className="hero-copy">
            <div className="eyebrow"><span className="status-dot" /> OPEN TO SELECT OPPORTUNITIES</div>
            <h1>Engineering meets<br /><span className="gradient-text">practical solutions.</span></h1>
            <p className="hero-lede">I’m Mithun — a semiconductor ATE test operations and hardware troubleshooting professional with 12+ years across automotive IC production, product qualification, RF test systems, medical equipment, and IoT-enabled operations. I combine hands-on fault diagnosis with data-driven RCA, automation, and modern monitoring tools.</p>
            <div className="hero-actions">
              <a className="button button-primary" href="#work">Explore my work <ArrowDownRight size={17} /></a>
              <button className="button button-secondary" onClick={() => openContact("freelance")}>Discuss a project <ArrowUpRight size={16} /></button>
            </div>
            <div className="hero-proof">
              <div className="proof-item"><span className="proof-icon"><Cpu size={17}/></span><span><b>ATE & Test Operations</b><small>V93K · J750 · UltraFlex</small></span></div>
              <div className="proof-item"><span className="proof-icon"><Code2 size={17}/></span><span><b>Hardware & IoT</b><small>Fault diagnosis · RCA</small></span></div>
              <div className="proof-item"><span className="proof-icon"><Zap size={17}/></span><span><b>Quality & Reliability</b><small>FMEA · DOE · Yield</small></span></div>
            </div>
          </div>
          <div className="hero-visual" aria-label="Engineering and software project visual">
            <div className="visual-grid" />
            <div className="orbit orbit-a" /><div className="orbit orbit-b" />
            <div className="core-card">
              <div className="core-top"><span className="tiny-label">SYSTEMS THINKING</span><span className="live-pill"><i /> ACTIVE</span></div>
              <div className="core-chip"><CircuitBoard size={64} strokeWidth={1.15}/></div>
              <div className="core-name">From hardware signals<br />to software systems.</div>
              <div className="core-line"><span /><span /><span /><span /><span /><span /><span /></div>
              <div className="core-foot"><span>ENGINEERING</span><span>01 / 04</span></div>
            </div>
            <div className="float-card float-top"><span className="float-icon mint"><ShieldCheck size={17}/></span><span><b>Monitoring</b><small>Metrics · Alerts</small></span><span className="float-check"><Check size={13}/></span></div>
            <div className="float-card float-bottom"><span className="float-icon blue"><Workflow size={17}/></span><span><b>Automation</b><small>APIs · Workflows</small></span><ArrowUpRight size={15} className="muted-icon"/></div>
            <div className="visual-caption">BUILT WITH CURIOSITY. DELIVERED WITH CARE.</div>
          </div>
          <a className="scroll-cue" href="#pathways"><span className="scroll-line" /> SCROLL TO EXPLORE</a>
        </section>

        <section className="pathways section-wrap" id="pathways">
          <div className="section-heading compact-heading"><span className="section-kicker">TWO WAYS TO WORK TOGETHER</span><h2>What brings you here?</h2></div>
          <div className="pathway-grid">
            <article className="pathway-card recruiter-card">
              <div className="pathway-top"><span className="pathway-icon"><BriefcaseBusiness size={21}/></span><span className="pathway-index">PATH 01</span></div>
              <h3>For recruiters & hiring teams</h3>
              <p>Explore 12+ years in ATE test operations, semiconductor product qualification, equipment troubleshooting, reliability, and IoT technical support — with a strong fit for test engineering, lab operations, validation, and hardware support roles.</p>
              <div className="pathway-tags"><span>ATE Test Operations</span><span>Qualification & Reliability</span><span>Lab / Equipment Operations</span></div>
              <a className="text-link" href="#experience">Explore experience <ArrowRight size={16}/></a>
            </article>
            <article className="pathway-card client-card">
              <div className="pathway-top"><span className="pathway-icon"><Sparkles size={21}/></span><span className="pathway-index">PATH 02</span></div>
              <h3>For clients & collaborators</h3>
              <p>Need a dashboard, API integration, workflow automation, IoT utility, or help diagnosing a technical issue? Let’s scope a practical solution.</p>
              <div className="pathway-tags"><span>Web Apps</span><span>Automation</span><span>IoT Integrations</span></div>
              <button className="text-link" onClick={() => openContact("freelance")}>Discuss your project <ArrowRight size={16}/></button>
            </article>
          </div>
        </section>

        <section className="work-section section-wrap" id="work">
          <div className="section-heading">
            <div><span className="section-kicker">SELECTED WORK</span><h2>Projects built to solve<br className="desktop-break"/> real problems<span className="accent-dot">.</span></h2></div>
            <p>A mix of security automation, IoT tooling, full-stack development, and product building. Each project shows how I approach a problem and turn it into a working system.</p>
          </div>
          <div className="project-grid">
            {projects.map((project) => {
              const Icon = project.icon;
              return <article className={`project-card ${project.tone}`} key={project.number}>
                <div className="project-card-top"><span className="project-number">{project.number}</span><span className="project-type">{project.type}</span><span className="project-icon"><Icon size={20}/></span></div>
                <h3>{project.title}</h3><p>{project.summary}</p>
                <div className="tag-list">{project.tags.map(tag => <span key={tag}>{tag}</span>)}</div>
                <div className="project-footer">
                  <button className="text-link" onClick={() => setActiveProject(project)}>View case study <ArrowUpRight size={15}/></button>
                  {project.link ? <a className="icon-link" href={project.link} target="_blank" rel="noreferrer" aria-label={project.linkLabel}><ExternalLink size={16}/></a> : <span className="coming-soon">LINK TO ADD</span>}
                </div>
              </article>;
            })}
          </div>
          <div className="project-note"><Sparkles size={16}/><p><b>Next improvement:</b> Add real screenshots, architecture diagrams, measured results, and public demo links where safe. Never publish employer-confidential information or secrets.</p></div>
        </section>

        <section className="experience-section" id="experience">
          <div className="section-wrap experience-inner">
            <div className="section-heading">
              <div><span className="section-kicker">CAREER JOURNEY</span><h2>Built on engineering.<br/>Expanded through software<span className="accent-dot">.</span></h2></div>
              <p>12+ years across semiconductor final test, RF systems, medical equipment, and IoT technical operations, supported by practical data, API, and monitoring skills.</p>
            </div>
            <div className="timeline">
              <article className="timeline-item">
                <div className="timeline-marker"><span/></div><div className="timeline-date">FEB 2025 — PRESENT</div>
                <div className="timeline-content"><div className="timeline-title-row"><div><h3>Technical Support Engineer</h3><div className="company">Get My Parking · Bengaluru</div></div><span className="timeline-chip">IoT · SaaS</span></div>
                  <ul><li>Investigate production issues across parking technology, IoT devices, APIs, access control, ANPR, and RFID workflows.</li><li>Use SQL, logs, and API responses to support incident triage, root-cause analysis, and operational monitoring.</li><li>Collaborate on troubleshooting device integrations, session flows, and payment-related issues.</li></ul>
                </div>
              </article>
              <article className="timeline-item">
                <div className="timeline-marker"><span/></div><div className="timeline-date">NOV 2019 — JAN 2025</div>
                <div className="timeline-content"><div className="timeline-title-row"><div><h3>Senior Staff Engineering Assistant</h3><div className="company">Infineon Technologies Asia Pacific · Singapore</div></div><span className="timeline-chip">Semiconductor</span></div>
                  <ul><li>Supported AURIX 2G and AURIX 3G automotive MCU programs from wafer bring-up through production release.</li><li>Executed AMSA, DOE, FMEA, bin-flip verification, test-program buy-off, characterization data collection, and production readiness activities.</li><li>Worked with Teradyne J750 and Advantest V93K platforms, supporting quality, traceability, and high-volume production milestones.</li></ul>
                </div>
              </article>
              <article className="timeline-item">
                <div className="timeline-marker"><span/></div><div className="timeline-date">MAY 2015 — NOV 2019</div>
                <div className="timeline-content"><div className="timeline-title-row"><div><h3>Senior Specialist / ATE Final Test Technician</h3><div className="company">United Test and Assembly Center (UTAC) · Singapore</div></div><span className="timeline-chip">Final Test</span></div>
                  <ul><li>Supported high-volume semiconductor final-test operations using UltraFlex, Credence, LTX Fusion, and other production test platforms.</li><li>Troubleshot handlers, sockets, sensors, alignment, change kits, and minor equipment conversions; supported yield analysis and qualification runs.</li><li>Performed WLCSP tape-and-reel operations, mechanical fault finding, precision alignment, and visual inspection.</li></ul>
                </div>
              </article>
              <article className="timeline-item">
                <div className="timeline-marker"><span/></div><div className="timeline-date">JAN 2013 — APR 2015</div>
                <div className="timeline-content"><div className="timeline-title-row"><div><h3>Technician — RF & Test Systems</h3><div className="company">Centum Rakon India · Bengaluru</div></div><span className="timeline-chip">RF Systems</span></div>
                  <ul><li>Supported RF oscillator production, test-system installation, commissioning, validation, calibration, and preventive maintenance.</li><li>Reduced SLT switching measurement time by 60% through test-sequence improvement.</li><li>Consolidated RF signal distribution around a shared signal generator to reduce per-tester equipment needs.</li></ul>
                </div>
              </article>
              <article className="timeline-item">
                <div className="timeline-marker"><span/></div><div className="timeline-date">MAY 2011 — NOV 2012</div>
                <div className="timeline-content"><div className="timeline-title-row"><div><h3>Service Engineer — Medical Imaging</h3><div className="company">Sanrad Medical Systems · Bengaluru</div></div><span className="timeline-chip">Field Service</span></div>
                  <ul><li>Installed, commissioned, and maintained CT scanner systems, including single-, multi-, and 16-slice equipment.</li><li>Performed hardware and PCB-level fault diagnosis, preventive maintenance, and customer technical support.</li></ul>
                </div>
              </article>
              <article className="timeline-item timeline-education">
                <div className="timeline-marker"><span/></div><div className="timeline-date">EDUCATION & LEARNING</div>
                <div className="timeline-content"><h3>Electronics, analytics & cloud technologies</h3>
                  <ul><li>B.Tech in Electronics & Communication Engineering; Diploma in Electronics & Communication Engineering.</li><li> PG Program in Multi-Cloud Architecture & DevOps — Hero Vired × Microsoft.</li><li>Certifications: ITIL Foundation, CompTIA IT Fundamentals, Google Data Analytics, IBM Data Analyst, and WSQ Generic Manufacturing Skills.</li></ul>
                </div>
              </article>
            </div>
            <div className="experience-disclaimer"><Check size={15}/> Dates and role summaries are based on information supplied for this portfolio. Review all details before publishing.</div>
          </div>
        </section>

        <section className="expertise-section section-wrap" id="about">
          <div className="section-heading">
            <div><span className="section-kicker">TECHNICAL TOOLKIT</span><h2>Comfortable across<br/>the stack<span className="accent-dot">.</span></h2></div>
            <p>My core strength is ATE test operations, equipment fault diagnosis, and semiconductor qualification. I complement that foundation with IoT troubleshooting, SQL/API investigations, Python automation, and monitoring tools.</p>
          </div>
          <div className="skills-grid">{skills.map((skill, i) => <article className="skill-card" key={skill.title}><span className="skill-index">0{i+1}</span><h3>{skill.title}</h3><p>{skill.items}</p></article>)}</div>
        </section>

        <section className="services-section" id="services">
          <div className="section-wrap">
            <div className="section-heading">
              <div><span className="section-kicker">FREELANCE SERVICES</span><h2>Good engineering.<br/>Clear deliverables<span className="accent-dot">.</span></h2></div>
              <p>Focused technical help for small businesses, founders, and teams. Every engagement starts by agreeing on scope, acceptance criteria, and a realistic timeline.</p>
            </div>
            <div className="service-list">
              <article className="service-row"><span className="service-num">01</span><span className="service-icon"><Code2 size={21}/></span><div className="service-copy"><h3>Web applications & dashboards</h3><p>Internal tools, admin panels, operational dashboards, and database-backed workflows.</p></div><span className="service-arrow"><ArrowUpRight size={19}/></span></article>
              <article className="service-row"><span className="service-num">02</span><span className="service-icon"><Workflow size={21}/></span><div className="service-copy"><h3>API integrations & automation</h3><p>Connect services, automate repeatable tasks, and make integrations easier to monitor.</p></div><span className="service-arrow"><ArrowUpRight size={19}/></span></article>
              <article className="service-row"><span className="service-num">03</span><span className="service-icon"><RadioTower size={21}/></span><div className="service-copy"><h3>IoT tools & device workflows</h3><p>Device-control interfaces, API test utilities, scheduling workflows, and status views.</p></div><span className="service-arrow"><ArrowUpRight size={19}/></span></article>
              <article className="service-row"><span className="service-num">04</span><span className="service-icon"><Wrench size={21}/></span><div className="service-copy"><h3>Technical troubleshooting & observability</h3><p>SQL and API investigations, log analysis, monitoring setup, and structured RCA support.</p></div><span className="service-arrow"><ArrowUpRight size={19}/></span></article>
            </div>
            <div className="service-bottom"><p>Have a different technical challenge? Share the problem first — we can determine whether it’s a fit.</p><button className="button button-primary" onClick={() => openContact("freelance")}>Request a project discussion <ArrowUpRight size={16}/></button></div>
          </div>
        </section>

        <section className="contact-section section-wrap" id="contact">
          <div className="contact-panel">
            <div className="contact-copy"><span className="section-kicker">START A CONVERSATION</span><h2>Let’s build something<br/><span className="gradient-text">useful.</span></h2><p>Tell me what you’re working on. Whether it’s a role, collaboration, or freelance project, a clear first conversation is a good place to start.</p>
              <div className="contact-detail"><span className="contact-detail-icon"><Mail size={17}/></span><div><small>EMAIL</small><button onClick={copyEmail} className="email-copy">{copiedEmail ? "Email copied" : email} {copiedEmail ? <Check size={13}/> : <ArrowUpRight size={13}/>}</button></div></div>
              <div className="contact-detail"><span className="contact-detail-icon"><Github size={17}/></span><div><small>GITHUB</small><a href="https://github.com/Mithunvm92" target="_blank" rel="noreferrer">github.com/Mithunvm92 <ArrowUpRight size={13}/></a></div></div>
              <div className="contact-detail"><span className="contact-detail-icon"><Globe size={17}/></span><div><small>PRODUCT</small><a href="https://fluxkit.online" target="_blank" rel="noreferrer">FluxKit.online <ArrowUpRight size={13}/></a></div></div>
            </div>
            <form className="contact-form" onSubmit={submitInquiry}>
              <div className="form-header"><span><MessageSquare size={17}/></span><div><h3>Send an inquiry</h3><p>Opens a pre-filled email in your email app.</p></div></div>
              <label>I'm reaching out about<select name="type" value={contactType} onChange={e => setContactType(e.target.value)}><option value="freelance">A freelance project</option><option value="recruitment">A job opportunity</option><option value="collaboration">A collaboration</option><option value="other">Something else</option></select></label>
              <div className="form-two"><label>Your name<input name="name" placeholder="Name" required/></label><label>Your email<input name="email" type="email" placeholder="you@company.com" required/></label></div>
              <label>Subject<input name="subject" placeholder="What would you like to discuss?" required/></label>
              <div className="form-two"><label>Budget / level <span className="optional">(optional)</span><select name="budget" defaultValue=""><option value="">Select one</option><option>Under ₹10,000</option><option>₹10,000–₹30,000</option><option>₹30,000–₹75,000</option><option>₹75,000+</option><option>To be discussed</option><option>Recruitment / not applicable</option></select></label><label>Timeline <span className="optional">(optional)</span><select name="timeline" defaultValue=""><option value="">Select one</option><option>Within 1 week</option><option>Within 2–4 weeks</option><option>Within 1–3 months</option><option>Flexible</option></select></label></div>
              <label>Tell me a little more<textarea name="message" rows="4" placeholder="The problem, what you need, and what success looks like…" required/></label>
              <button className="button button-primary submit-button" type="submit">Prepare email <ArrowUpRight size={16}/></button>
              <p className="form-privacy">This form does not send data to a server. It prepares a message in your default email app.</p>
            </form>
          </div>
        </section>
      </main>

      <footer className="footer section-wrap"><a href="#home" className="footer-brand">MITHUN VM<span>.</span></a><p>Engineering, software & practical problem solving.</p><div className="footer-right"><span>© {new Date().getFullYear()} Mithun VM</span><a href="#home">Back to top ↑</a></div></footer>

      {activeProject && <div className="modal-backdrop" role="presentation" onMouseDown={e => { if (e.target === e.currentTarget) setActiveProject(null); }}>
        <section className="case-modal" role="dialog" aria-modal="true" aria-labelledby="case-title">
          <button className="modal-close" onClick={() => setActiveProject(null)} aria-label="Close case study"><X size={19}/></button>
          <span className="section-kicker">CASE STUDY / {activeProject.number}</span><h2 id="case-title">{activeProject.title}</h2><p className="case-summary">{activeProject.summary}</p>
          <div className="case-block"><span>THE PROBLEM</span><p>{activeProject.problem}</p></div>
          <div className="case-block"><span>THE APPROACH</span><p>{activeProject.approach}</p></div>
          <div className="case-block"><span>WHAT IT DEMONSTRATES</span><p>{activeProject.outcome}</p></div>
          <div className="tag-list modal-tags">{activeProject.tags.map(tag => <span key={tag}>{tag}</span>)}</div>
          {activeProject.link && <a className="button button-primary modal-link" href={activeProject.link} target="_blank" rel="noreferrer">{activeProject.linkLabel} <ArrowUpRight size={16}/></a>}
          <p className="case-disclaimer">Replace this summary with verified implementation details, screenshots, and measurable outcomes before publication.</p>
        </section>
      </div>}
    </div>
  );
}

createRoot(document.getElementById("root")).render(<App />);