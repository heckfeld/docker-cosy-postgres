--
-- PostgreSQL database dump
--

\connect targets

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ort; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE ort (
    oid integer NOT NULL,
    gebaeude character varying(20) NOT NULL,
    raum character varying(50) NOT NULL
);


ALTER TABLE public.ort OWNER TO postgres;

--
-- Name: subtarget; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE subtarget (
    name character varying(50) NOT NULL,
    funktion character varying(50) NOT NULL,
    hwinfo character varying(50) NOT NULL,
    kommentar character varying(100),
    targetname character varying(50) NOT NULL
);


ALTER TABLE public.subtarget OWNER TO postgres;

--
-- Name: target; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE target (
    ort integer NOT NULL,
    name character varying(50) NOT NULL,
    funktion character varying(50) NOT NULL,
    hwinfo character varying(50) NOT NULL,
    swinfo character varying(50) NOT NULL,
    gui character varying(20) NOT NULL,
    kommentar character varying(100)
);


ALTER TABLE public.target OWNER TO postgres;

--
-- Data for Name: ort; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ort (oid, gebaeude, raum) FROM stdin;
22	07.2	Zyklotron
15	07.2	IBL-NG-Keller
3	07.3	COSY-Ring Extr.
9	07.3	COSY-Ring IBL
10	07.3	HF
18	07.2	Zyklotron
5	07.3	NEMP
7	07.2	Big Karl
4	07.2	IBL NEMP
16	07.2	ZYK-W
12	07.3	COSY-Warte
13	07.2	COSY-NG1
17	07.2	Ionenquelle-Keller
2	07.3	LKW-Schleuse
14	07.2	COSY-NG2
8	07.3	COSY-Ring
19	07.2	Zyklotron-Keller
6	07.2	TOF
1	07.3	COSY-Auge
11	07.3	COSY-ECOOLER
20	07.2	IBL Big Karl
\.


--
-- Data for Name: subtarget; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY subtarget (name, funktion, hwinfo, kommentar, targetname) FROM stdin;
ex_pcst05	8 Kanäle NG-Ansteuerung	Pdv-I/F,G64-I/O	IBAM_3->Bus# 5	expcfc01
ex_pcst04	7 Kanäle NG-Ansteuerung	Pdv-I/F,G64-I/O	IBAM_3->Bus# 4	expcfc01
ex_pcst03	6 Kanäle NG-Ansteuerung	Pdv-I/F,G64-I/O	IBAM_3->Bus# 3	expcfc01
ex_pcst02	5 Kanäle NG-Ansteuerung	Pdv-I/F,G64-I/O	IBAM_3->Bus# 2	expcfc01
ex_pcst01	4 Kanäle NG-Ansteuerung	Pdv-I/F,G64-I/O	IBAM_3->Bus# 1	expcfc01
ec_pchv02	Ecool-NG-HV-Plattform	Pdv-I/F,G64-I/O		ecpcfc03
ec_pchv01	Ecool-NG-HV-Plattform	Pdv-I/F,G64-I/O		ecpcfc03
ec_pc03	Ecool-NG	Pdv-I/F,G64-I/O		ecpcfc01
ec_pc02	Ecool-NG	Pdv-I/F,G64-I/O		ecpcfc01
ec_pc01	Ecool-NG	Pdv-I/F,G64-I/O		ecpcfc01
ec_hcn01	Steuerung HV	Pdv-I/F,G64-I/O	HV-Steuerung	ecpcfc02
qb_psrc06	LM, Reserve	Pdv-I/F,G64-I/O	IBAM_3->Bus# 1	qbpfc01
qb_psrc05	LV12 , MI2	Pdv-I/F,G64-I/O	IBAM_3->Bus# 1	qbpfc01
qb_psrc04	QI1,QI2, QI3	Pdv-I/F,G64-I/O	IBAM_3->Bus# 1	qbpfc01
qb_psrc03	MI1,QM3,QM4	Pdv-I/F,G64-I/O	IBAM_3->Bus# 1	qbpfc01
qb_psrc02	QM1, QM2	Pdv-I/F,G64-I/O	IBAM_3->Bus# 1	qbpfc01
qb_psrc01	Dipol, LH1,2 LH3,6	Pdv-I/F,G64-I/O	IBAM_3->Bus# 1	qbpfc01
zd_t_rc03	Targetmotoren, Süd, Südwest	Pdv-I/F,G64-I/O	IBAM_5->Bus# 4	zd_fc01
qb_dirc03	pneum.Antriebe:FB1 - FB5	Pdv-I/F,G64-I/O	IBAM_5->Bus# 3	qbdfc01
qb_dirc02	Strahlströme:FB1 - FB5	Pdv-I/F,G64-I/O	IBAM_3->Bus# 2	qbdfc01
qb_dirc01	Pneumatik,Buncher, HI	Pdv-I/F,G64-I/O	IBAM_3->Bus# 1	qbdfc01
ze_morc03	Motor  Komp.-Kanal	G64, SMC	Motoren, Labus, spezial	ze_fc01
ze_morc02	Motor Septum	G64, SMC	Motoren, Labus, spezial	ze_fc01
zi_burc02	HI	Pdv-I/F,G64-I/O	IBAM_3->Bus# 2,nur Setzen	zi_fc01
zi_burc01	Buncher	Pdv-I/F,G64-I/O	IBAM_3->Bus# 1,nur Setzen	zi_fc01
zp_k_rc02	Korr.-Spulen 7 - 12	Pdv-I/F,G64-I/O	IBAM_3->Bus# 3	zypcfc01
zp_k_rc01	Korr.-Spulen 1 - 6	Pdv-I/F,G64-I/O	IBAM_3->Bus# 2	zypcfc01
ex_pcst06	9 Kanäle NG-Ansteuerung	Pdv-I/F,G64-I/O	IBAM_3->Bus# 6	expcfc01
\.


--
-- Data for Name: target; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY target (ort, name, funktion, hwinfo, swinfo, gui, kommentar) FROM stdin;
8	bdbpfc19	VXI-BPM-Targets	E6,BPM-HW, Tims	Pdd, BPM-DD	bpm-gui	VXI-Backplan
13	mqpcfc01	Quadrupolcrate	E6 CPU30 2SAC30fgen TimRx1	pdd:dpn	impuls	Dyn. Netzgerät
13	mspcfc05	Horizontalsteerercrate	E6 CPU30 4VMOD32 TimRx1	pdd:dps	steererh	Dyn. Netzgerät
13	exnbfc01	Extraktionssteerer Rohrer	Netbox2	pdd:rohrer	extr-gui	
3	expdfc01	MWPC-gpib	NB1 GPIB-IPIN	pdd:nmwpc	mwpc	
4	expdfc08	MWPC-gpib	NB1 GPIB-IPIN	pdd:nmwpc	mwpc	
3	expdfc04	MWPC-gpib	NB1 GPIB-IPIN	pdd:nmwpc	mwpc	
8	bdbpfc03	VXI-BPM-Targets	E6,BPM-HW, Tims	Pdd, BPM-DD	bpm-gui	VXI-Backplan
8	bdbpfc04	VXI-BPM-Targets	E6,BPM-HW, Tims	Pdd, BPM-DD	bpm-gui	VXI-Backplan
8	bdbpfc15	VXI-BPM-Targets	E6,BPM-HW, Tims	Pdd, BPM-DD	bpm-gui	VXI-Backplan
8	bdbpfc16	VXI-BPM-Targets	E6,BPM-HW, Tims	Pdd, BPM-DD	bpm-gui	VXI-Backplan
8	bdbpfc17	VXI-BPM-Targets	E6,BPM-HW, Tims	Pdd, BPM-DD	bpm-gui	VXI-Backplan
1	bdrefc01	VXI-Busreset	Netbox2, G64 I/O	Pdd, G64-I/O	bpm-gui	remote Reset für alle BPM-HW
1	bdrefc02	VXI-Busreset	Netbox2, G64 I/O	Pdd, G64-I/O	bpm-gui	remote Reset für alle BPM-HW
6	expdfc13	MWPC-gpib	NB1 GPIB-IPIN	pdd:nmwpc	mwpc	
3	expdfc14	MWPC-gpib	NB1 GPIB-IPIN	pdd:nmwpc	mwpc	
5	expdfc15	MWPC-gpib	NB1 GPIB-IPIN	pdd:nmwpc	mwpc	
1	bdscfc01	Doppel-Scraper	E6 IBAM PDV	pdd:	visp	
1	bdscfc02	Doppel-Scraper	E6 IBAM PDV	pdd:	visp	
2	exgvfc01	Gasversorgung MWPC	NB2	pdd:magven	mwpc	
8	expdfc16	H0 Ring E-Cooler	NB2 GPIB-IPIN	pdd:nmwpc	mwpc	
3	expdfc02	MWPC-gpib	NB1 GPIB-IPIN	pdd:nmwpc	mwpc	
3	expdfc05	MWPC-gpib	NB1 GPIB-IPIN	pdd:nmwpc	mwpc	
4	expdfc06	MWPC-gpib	NB1 GPIB-IPIN	pdd:nmwpc	mwpc	
4	expdfc07	MWPC-gpib	NB1 GPIB-IPIN	pdd:nmwpc	mwpc	
1	bdanfc02	VXI-BPM-Targets, ANKE	E6,BPM-HW, Tims	Pdd, BPM-DD	bpm-gui	VXI-Backplan
1	exsepfc1	Extraktionsseptum	E6 IBAM PDV E5-LMS	pdd:motor	exsep	
1	bdapfc01	ANKE Position	E6 VMOD-IO SSI-IF TimRx2	apos	impuls	Winkelanzeige, Tim-Bits f. Diagnose
3	exmwfc03	Vieldrahtkammer	E6 IBAM PDV	pdd:nmwpc	mwpc	
4	exmwfc04	Vieldrahtkammer	E6 IBAM PDV	pdd:nmwpc	mwpc	
8	bdbpfc01	VXI-BPM-Targets	E6,BPM-HW, Tims	Pdd, BPM-DD	bpm-gui	VXI-Backplan
8	bdbpfc05	VXI-BPM-Targets	E6,BPM-HW, Tims	Pdd, BPM-DD	bpm-gui	VXI-Backplan
8	bdbpfc06	VXI-BPM-Targets	E6,BPM-HW, Tims	Pdd, BPM-DD	bpm-gui	VXI-Backplan
8	bdbpfc07	VXI-BPM-Targets	E6,BPM-HW, Tims	Pdd, BPM-DD	bpm-gui	VXI-Backplan
8	bdbpfc08	VXI-BPM-Targets	E6,BPM-HW, Tims	Pdd, BPM-DD	bpm-gui	VXI-Backplan
8	bdbpfc09	VXI-BPM-Targets	E6,BPM-HW, Tims	Pdd, BPM-DD	bpm-gui	VXI-Backplan
8	bdbpfc10	VXI-BPM-Targets	E6,BPM-HW, Tims	Pdd, BPM-DD	bpm-gui	VXI-Backplan
8	bdbpfc11	VXI-BPM-Targets	E6,BPM-HW, Tims	Pdd, BPM-DD	bpm-gui	VXI-Backplan
8	bdbpfc12	VXI-BPM-Targets	E6,BPM-HW, Tims	Pdd, BPM-DD	bpm-gui	VXI-Backplan
1	exsepfc2	Extraktionsseptum	E6 IBAM PDV E5-LMS	pdd:motor	exsep	
8	bdbpfc13	VXI-BPM-Targets	E6,BPM-HW, Tims	Pdd, BPM-DD	bpm-gui	VXI-Backplan
8	bdbpfc14	VXI-BPM-Targets	E6,BPM-HW, Tims	Pdd, BPM-DD	bpm-gui	VXI-Backplan
3	exmwfc01	Vieldrahtkammer	E6 IBAM PDV	pdd:nmwpc	mwpc	
4	exmwfc05	Vieldrahtkammer	E6 IBAM PDV	pdd:nmwpc	mwpc	
3	exmwfc02	Vieldrahtkammer	E6 IBAM PDV	pdd:nmwpc	mwpc	
5	exmwfc06	Vieldrahtkammer	E6 IBAM PDV	pdd:nmwpc	mwpc	
6	exmwfc07	Vieldrahtkammer	E6 IBAM PDV	pdd:nmwpc	mwpc	
4	exmwfc08	Vieldrahtkammer	E6 IBAM PDV	pdd:nmwpc	mwpc	
1	bdvifc03	Viewer3	E6 IBAM PDV	pdd:	visp	
1	bdvifc02	Viewer2	E6 IBAM PDV	pdd:	visp	
1	bdvifc01	Viewer1 /Viewer6	E6 IBAM PDV	pdd:	visp	
1	bdvifc04	Viewer4	E6 IBAM PDV	pdd:	visp	
1	bdvifc05	Viewer5	E6 IBAM PDV	pdd:	visp	
7	exmwfc09	Vieldrahtkammer	E6 IBAM PDV	pdd:nmwpc	mwpc	
1	expcfc06	El-Stat.-Septum (Brandenburger)	E6, RS232/LWL	Pdd, RS232-DD	extr-gui	RS232 über LWL auf HV
7	expdfc09	MWPC-gpib	NB1 GPIB-IPIN	pdd:nmwpc	mwpc	
7	expdfc10	MWPC-gpib	NB1 GPIB-IPIN	pdd:nmwpc	mwpc	
4	expdfc11	MWPC-gpib	NB1 GPIB-IPIN	pdd:nmwpc	mwpc	
4	expdfc12	MWPC-gpib	NB1 GPIB-IPIN	pdd:nmwpc	mwpc	
1	fdqufc01	Shuntsteuerung für Quads	E6 TimRx1	pdd:trx	trx	spezielle Quadrupol Fahrkurven
1	qjpcfc01	Schneller Quadrupol	E6 VMOD-IO 4TTL I/O TimRx1	ppuls	ppuls	Q-Jump pol. Teilchen
1	qjpcfc02	Schneller Quadrupol	E6 VMOD-IO 4TTL I/O TimRx1	ppuls	ppuls	Q-Jump pol. Teilchen
8	bdbpfc02	VXI-BPM-Targets	E6,BPM-HW, Tims	Pdd, BPM-DD	bpm-gui	VXI-Backplan
3	expdfc03	MWPC-gpib	NB1 GPIB-IPIN	pdd:nmwpc	mwpc	
8	bdbpfc22	VXI-BPM-Targets	E6,BPM-HW, Tims	Pdd, BPM-DD	bpm-gui	VXI-Backplan
8	bdbpfc23	VXI-BPM-Targets	E6,BPM-HW, Tims	Pdd, BPM-DD	bpm-gui	VXI-Backplan
8	bdbpfc24	VXI-BPM-Targets	E6,BPM-HW, Tims	Pdd, BPM-DD	bpm-gui	VXI-Backplan
8	bdbpfc25	VXI-BPM-Targets	E6,BPM-HW, Tims	Pdd, BPM-DD	bpm-gui	VXI-Backplan
8	bdbpfc26	VXI-BPM-Targets	E6,BPM-HW, Tims	Pdd, BPM-DD	bpm-gui	VXI-Backplan
8	bdbpfc27	VXI-BPM-Targets	E6,BPM-HW, Tims	Pdd, BPM-DD	bpm-gui	VXI-Backplan
8	bdbpfc28	VXI-BPM-Targets	E6,BPM-HW, Tims	Pdd, BPM-DD	bpm-gui	VXI-Backplan
8	bdbpfc29	VXI-BPM-Targets	E6,BPM-HW, Tims	Pdd, BPM-DD	bpm-gui	VXI-Backplan
8	bdecfc01	VXI-BPM-Targets	E6,BPM-HW, Tims	Pdd, BPM-DD	bpm-gui	VXI-Backplan
8	bdecfc02	VXI-BPM-Targets	E6,BPM-HW, Tims	Pdd, BPM-DD	bpm-gui	VXI-Backplan
8	bdsnfc01	VXI-BPM-Targets	E6,BPM-HW, Tims	Pdd, BPM-DD	bpm-gui	VXI-Backplan
13	bupcfc01	Bumpercrate	E6 3Digi200 TimRx1	pdd:bum	bumper	Dyn. Netzgerät
8	bdsnfc02	VXI-BPM-Targets	E6,BPM-HW, Tims	Pdd, BPM-DD	bpm-gui	VXI-Backplan
8	bdtmfc01	Tune-Messung	netbox1,GPIB-I/F	Pdd, GPIB-DD,		
10	bdtrfc01	Diagnose Kicker	E6 TimRx1	pdd:trx	impuls	HV-Puls Netzgerät
8	bdbpfc18	VXI-BPM-Targets	E6,BPM-HW, Tims	Pdd, BPM-DD	bpm-gui	VXI-Backplan
13	mdfgfc01	Dipolcrate	E6 CPU30 2SAC30fgen TimRx1	pdd:dpn	impuls	Dyn. Netzgerät
9	ibpcfc04	schnelle Steerer, fmcs	E6/Tims, rs232	Pdd:rs232DD, ustate	fmcs-gui	nicht richtig erprobt!
8	bdwcfc01	VXI-BPM-Targets	E6,BPM-HW, Tims	Pdd, BPM-DD	bpm-gui	VXI-Backplan
11	ecpcfc03	Ecool-NG auf HV-Plattform	E6, IBAM_3	Pdd, G64-I/O	ecool-gui	FUG-NG,LWL-LAN
14	ecpcfc04	Horizontalsteerercrate E-Cooler	E6 CPU30 2IOPTO TimRx2	pdd:dps	ecsteer	Dyn. Netzgerät
13	mqpcfc02	Quadrupolcrate	E6 CPU30 2SAC30fgen TimRx1	pdd:dpn	impuls	Dyn. Netzgerät
8	bdbpfc20	VXI-BPM-Targets	E6,BPM-HW, Tims	Pdd, BPM-DD	bpm-gui	VXI-Backplan
13	mqpcfc03	Quadrupolcrate	E6 CPU30 2SAC30fgen TimRx1	pdd:dpn	impuls	Dyn. Netzgerät
13	mqpcfc04	Quadrupolcrate	E6 CPU30 2SAC30fgen TimRx1	pdd:dpn	impuls	Dyn. Netzgerät
14	mqpcfc05	Quadrupolcrate	E6 CPU30 2SAC30fgen TimRx1	pdd:dpn	impuls	Dyn. Netzgerät
14	mqpcfc06	Quadrupolcrate	E6 CPU30 2SAC30fgen TimRx1	pdd:dpn	impuls	Dyn. Netzgerät
14	mqpcfc07	Quadrupolcrate	E6 CPU30 2SAC30fgen TimRx1	pdd:dpn	impuls	Dyn. Netzgerät
14	mqpcfc08	Quadrupolcrate	E6 CPU30 2SAC30fgen TimRx1	pdd:dpn	impuls	Dyn. Netzgerät
14	mqpcfc09	Quadrupolcrate	E6 CPU30 2SAC30fgen TimRx1	pdd:dpn	impuls	Dyn. Netzgerät
14	mqpcfc10	Quadrupolcrate	E6 CPU30 2SAC30fgen TimRx1	pdd:dpn	impuls	Dyn. Netzgerät
14	mqpcfc11	Quadrupolcrate	E6 CPU30 2SAC30fgen TimRx1	pdd:dpn	impuls	Dyn. Netzgerät
14	mqpcfc12	Quadrupolcrate	E6 CPU30 2SAC30fgen TimRx1	pdd:dpn	impuls	Dyn. Netzgerät
14	mqpcfc13	Quadrupolcrate	E6 CPU30 2SAC30fgen TimRx1	pdd:dpn	impuls	Dyn. Netzgerät
14	mqpcfc14	Quadrupolcrate	E6 CPU30 2SAC30fgen TimRx1	pdd:dpn	impuls	Dyn. Netzgerät
13	mspcfc01	Horizontalsteerercrate	E6 CPU30 4VMOD32 TimRx1	pdd:dps	steererh	Dyn. Netzgerät
14	mxpcfc02	Sextupolcrate	E6 CPU30 SAC30fgen TimRx1	pdd:dpn	sext	Dyn. Netzgerät
14	mxpcfc03	Sextupolcrate	E6 CPU30 SAC30fgen TimRx1	pdd:dpn	sext	Dyn. Netzgerät
14	mxpcfc04	Sextupolcrate	E6 CPU30 SAC30fgen TimRx1	pdd:dpn	sext	Dyn. Netzgerät
14	mxpcfc05	Sextupolcrate	E6 CPU30 SAC30fgen TimRx1	pdd:dpn	sext	Dyn. Netzgerät
14	mxpcfc06	Sextupolcrate	E6 CPU30 SAC30fgen TimRx1	pdd:dpn	sext	Dyn. Netzgerät
14	mxpcfc07	Sextupolcrate	E6 CPU30 SAC30fgen TimRx1	pdd:dpn	sext	Dyn. Netzgerät
14	mxpcfc08	Sextupolcrate	E6 CPU30 SAC30fgen TimRx1	pdd:dpn	sext	Dyn. Netzgerät
14	mxpcfc09	Sextupolcrate	E6 CPU30 SAC30fgen TimRx1	pdd:dpn	sext	Dyn. Netzgerät
14	mxpcfc10	Sextupolcrate	E6 CPU30 SAC30fgen TimRx1	pdd:dpn	sext	Dyn. Netzgerät
14	mxpcfc11	Sextupolcrate	E6 CPU30 SAC30fgen TimRx1	pdd:dpn	sext	Dyn. Netzgerät
12	trigfc01	Messgerätetrigger	E6,SAC30,TimRx1	pdd:trx	Timing-Sender	
13	mspcfc02	Vertikalsteerercrate	E6 CPU30 4VMOD32 TimRx1	pdd:dps	steererv	Dyn. Netzgerät
13	mspcfc04	Vertikalsteerercrate	E6 CPU30 4VMOD32 TimRx1	pdd:dps	steererv	Dyn. Netzgerät
13	mspcfc08	Vertikalsteerercrate	E6 CPU30 2IOPTO TimRx1	pdd:dps	steererv	Dyn. Netzgerät
13	mspcfc10	Vertikalsteerercrate	E6 CPU30 2IOPTO TimRx1	pdd:dps	steererv	Dyn. Netzgerät
13	mspcfc12	Vertikalsteerercrate	E6 CPU30 3IOPTO TimRx1	pdd:dps	steererv	Dyn. Netzgerät
14	mxpcfc01	Sextupolcrate	E6 CPU30 SAC30fgen TimRx1	pdd:dpn	sext	Dyn. Netzgerät
13	mspcfc03	Horizontalsteerercrate	E6 CPU30 4VMOD32 TimRx1	pdd:dps	steererh	Dyn. Netzgerät
13	mspcfc06	Vertikalsteerercrate	E6 CPU30 2IOPTO TimRx1	pdd:dps	steererv	Dyn. Netzgerät
13	mspcfc07	Horizontalsteerercrate	E6 CPU30 IOPTO TimRx1	pdd:dps	steererh	Dyn. Netzgerät
13	mspcfc09	Horizontalsteerercrate	E6 CPU30 4VMOD32 TimRx1	pdd:dps	steererh	Dyn. Netzgerät
13	mspcfc11	Horizontalsteerercrate	E6 CPU30 4VMOD32 TimRx1	pdd:dps	steererh	Dyn. Netzgerät
13	mspcfc13	Horizontalsteerercrate	E6 CPU30 IOPTO TimRx1	pdd:dps	steererh	Dyn. Netzgerät
13	bwpcfc01	Backlegwindingcrate COSY 11	E6 CPU30 IOPTO TimRx2	pdd:dps	impuls	Dyn. Netzgerät
13	bwpcfc03	Backlegwindingcrate ANKE	E6 CPU30 2IOPTO TimRx2	pdd:dps	bwsteer	Dyn. Netzgerät
14	d1pcfc01	Anke Dipolcrate	E6 CPU30 2SAC30fgen TimRx1	pdd:dpn	impuls	Dyn. Netzgerät
14	d2pcfc01	Anke Dipolcrate	E6 CPU30 2SAC30fgen TimRx1	pdd:dpn	impuls	Dyn. Netzgerät
14	ecpcfc01	Ecool-NG	E6, IBAM_3	Pdd, G64-I/O	ecool-gui	Foeldi Netzgerät
11	ecpcfc02	Ecool-NG	E6, IBAM_3	Pdd, G64-I/O	ecool-gui	Foeldi Netzgerät
10	hffgfc01	Hfcrate	E6 CPU30 3SAC30fgen 2TimRx1	pdd:hf	impuls	Hochfrequenz
8	bdanfc01	VXI-BPM-Targets, ANKE	E6,BPM-HW, Tims	Pdd, BPM-DD	bpm-gui	VXI-Backplan
8	bdbpfc21	VXI-BPM-Targets	E6,BPM-HW, Tims	Pdd, BPM-DD	bpm-gui	VXI-Backplan
15	inmcfc03	Schlitzblenden-Motor	NB2 CY550-IPIN	pdd:smcy	ibl	
15	inmcfc04	Schlitzblenden-Motor	NB2 CY550-IPIN	pdd:smcy	ibl	
15	inmcfc05	Schlitzblenden-Motor	NB2 CY550-IPIN	pdd:smcy	ibl	
15	inmcfc06	Schlitzblenden-Motor	NB2 CY550-IPIN	pdd:smcy	ibl	
17	qbpcfc03	QBL-Steerer I, 1-20	Netbox1, G64 I/O	Pdd,DD,	ibl	QBL-Steerer-Ansteuerung
17	qbpcfc04	QBL-SteererII, 1-10	Netbox1, G64 I/O	Pdd,DD,		QBL-Steerer-Ansteuerung
17	qbpfc01	QBL-PoCos	E6, IBAM_3, 	Pdd,DD, Pdv-DD	ibl	Ansteuerung der QBL-Netzgeräte
15	qppcfc01	pol.Quelle-NG: WF, EL, QD	Netbox1, G64 I/O	Pdd, GPIB-DD,	ibl	Fug-NG Ansteuerung
18	zd_fc01	Targetmotoren, Süd, Südwest	E5,IBAM_3,IBAM_5	Pdd:DD, Pdv-DD,	zyk	nur noch Targetmotoren
13	expcfc04	EXTR-NG: Dipole,Quads	Netbox2, RS232/RS423	Pdd, RS232-DD	extr-gui	Danfysik NG über RS423
13	expcfc05	Magn.Septum	E6, IBAM_3, 	Pdd,DD, Pdv-DD	extr-gui	Foeldi Netzgerät
15	ibbdfc01	IBL-Diagnose	E6 DIGI200	pdd:iblio, ibstr, 	ibl	
15	ibbdfc02	IBL-CUPS	NB2 	pdd:namp	ibl	
15	ibpcfc01	IBL-Dipole-/-Quad-/-Steerer-NG	netbox I, rs232/rs422	Pdd:rs232DD, ustate	ibl	Zeitproblematik, da serielles I/F
15	ibpcfc02	IBL-Dipole-/-Quad-/-Steerer-NG	netbox I, rs232/rs422	Pdd:rs232DD, ustate	ibl	Zeitproblematik, da serielles I/F
15	ibpcfc03	IBL-Dipole-/-Quad-/-Steerer-NG	netbox I, rs232/rs423	Pdd:rs232DD, ustate	ibl	Zeitproblematik, da serielles I/F
15	inmcfc01	Schlitzblenden-Motor	NB2 CY550-IPIN	pdd:smcy	ibl	
15	inmcfc02	Schlitzblenden-Motor	NB2 CY550-IPIN	pdd:smcy	ibl	
16	zdfc02	Zyklotron-Target-namp	NB2	pdd:namp	zyk	
15	inspfc01	Schlitzblenden -Pos	NB1 GPIB-IPIN	pdd:dmm	ibl	
16	npolfc01	Niederenergie-Polarimeter	E6 M-Module	pdd:nepol	nepol	Motorsteuerung, Zähler
17	qbdfc01	Stahlströme, pneu.Cups,Bun,HI	E5,IBAM_3,IBAM_5	Pdd:DD, Pdv-DD,	ibl	VME-crate +3 Pdv-Bus-I/F
16	zdtpfc01	Zyklotron-Target-pos	NB1 	pdd:tarpos	zyk	
19	ze_fc01	Motoren: Septum, Komp.-Kanal	E5,IBAM_3,IBAM_5	Pdd:DD, Pdv-DD,	zyk	Motoren, Labus, spezial
19	zepcfc04	Zyklotron-Ausgangssteerer	E6, IBAM_3, 	Pdd,DD, Pdv-DD	zyk	Rohrer Netzgeräte, Iist über DL
17	zi_fc01	Buncher, HI	E5,IBAM_3	Pdd:DD, Pdv-DD,	ibl	VME-crate +1 Pdv-Bus-I/F
17	qbdfc02	Mico/Macro-Puls, Trig.-Gen.	E6, IBAM_3, Tims	Pdd, GPIB-DD,	ibl	Timing-Synchro und Timing-Multi.
16	zrstfc01	Zyklotron-HF-Reset	NB2	pdd:univers?	noch unbenutzt	
17	qbdfc03	PoCo-Istwerte via DL, DVM,	Netbox1, GPIB-I/F	Pdd, GPIB-DD,	ibl	Istwerte fast aller NG de QBL
17	qbpcfc02	KEPCO-NG, pol.QBL	Netbox1, G64 I/O	Pdd,DD,	ibl	5 Chan für KEPCO-Ansteuerung
19	zypcfc01	Korrekturspulen Zyklotron	E5,IBAM_3	Pdd:DD, Pdv-DD,	zyk	VME-crate +2 Pdv-Bus-I/F
14	ecpcfc05	Vertikalsteerercrate E-Cooler	E6 CPU30 2IOPTO TimRx2	pdd:dps	ecsteer	Dyn. Netzgerät
13	expcfc01	EXTR-Steerer-NG	E6, IBAM_3, 	Pdd,DD, Pdv-DD	extr-gui	Rohrer Netzgeräte
13	expcfc02	El-Stat.-Septum (Brandenburger)	E6, RS232/LWL	Pdd, RS232-DD	extr-gui	RS232 über LWL auf HV
13	expcfc03	EXTR-NG: Dipole,Quads	Netbox2, RS232/RS422	Pdd, RS232-DD	extr-gui	Danfysik NG über RS422
20	ibtrfc02	Timing IBL Diagnose	E6 TimSRx			
\.


--
-- Name: ort_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ort
    ADD CONSTRAINT ort_pkey PRIMARY KEY (oid);


--
-- Name: subtarget_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY subtarget
    ADD CONSTRAINT subtarget_pkey PRIMARY KEY (name);


--
-- Name: target_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY target
    ADD CONSTRAINT target_pkey PRIMARY KEY (name);


--
-- Name: subtarget_targetname_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY subtarget
    ADD CONSTRAINT subtarget_targetname_fkey FOREIGN KEY (targetname) REFERENCES target(name);


--
-- Name: target_ort_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY target
    ADD CONSTRAINT target_ort_fkey FOREIGN KEY (ort) REFERENCES ort(oid);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- Name: ort; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE ort FROM PUBLIC;
REVOKE ALL ON TABLE ort FROM postgres;
GRANT ALL ON TABLE ort TO postgres;
GRANT ALL ON TABLE ort TO operator;


--
-- Name: subtarget; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE subtarget FROM PUBLIC;
REVOKE ALL ON TABLE subtarget FROM postgres;
GRANT ALL ON TABLE subtarget TO postgres;
GRANT ALL ON TABLE subtarget TO operator;


--
-- Name: target; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE target FROM PUBLIC;
REVOKE ALL ON TABLE target FROM postgres;
GRANT ALL ON TABLE target TO postgres;
GRANT ALL ON TABLE target TO operator;


--
-- PostgreSQL database dump complete
--

