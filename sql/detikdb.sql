--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3

-- Started on 2021-12-09 00:26:50 WITA

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 201 (class 1259 OID 72104)
-- Name: news; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.news (
    id integer NOT NULL,
    title text,
    description text,
    link text,
    pubdate timestamp with time zone
);


ALTER TABLE public.news OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 72102)
-- Name: news_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.news_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_id_seq OWNER TO postgres;

--
-- TOC entry 3258 (class 0 OID 0)
-- Dependencies: 200
-- Name: news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.news_id_seq OWNED BY public.news.id;


--
-- TOC entry 3118 (class 2604 OID 72107)
-- Name: news id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news ALTER COLUMN id SET DEFAULT nextval('public.news_id_seq'::regclass);


--
-- TOC entry 3252 (class 0 OID 72104)
-- Dependencies: 201
-- Data for Name: news; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news (id, title, description, link, pubdate) FROM stdin;
104	Menangis Bersimpuh, Prajurit TNI Minta Maaf Usir Ibu Mertua dari Rumdin	Kasus perselisihan Koptu Mesman dengan ibu mertuanya diselesaikan secara kekeluargaan. Koptu Mesman bersimpuh meminta maaf kepada mertua hingga istrinya.	https://news.detik.com/berita/d-5846726/menangis-bersimpuh-prajurit-tni-minta-maaf-usir-ibu-mertua-dari-rumdin	2021-12-08 20:39:47+08
105	PPP Terjunkan Tim untuk Bantu Evakuasi Korban Erupsi Semeru	Wilayah tersebut merupakan salah satu titik yang paling sulit dijangkau, dan hanya dapat diakses dari Kabupaten Malang.	https://news.detik.com/berita/d-5846731/ppp-terjunkan-tim-untuk-bantu-evakuasi-korban-erupsi-semeru	2021-12-08 20:48:48+08
106	Muktamar ke-34 di Depan Mata, Gus Ipul: Dukungan ke Gus Yahya Menguat	Ketua PBNU Saifullah Yusuf menyakini akan muncul kepemimpinan baru di Muktamar ke-34. Dia menyebut dukungan kea KH Yahya Cholil Staquf (Gus Yahya) terus menguat	https://news.detik.com/berita-jawa-timur/d-5846722/muktamar-ke-34-di-depan-mata-gus-ipul-dukungan-ke-gus-yahya-menguat	2021-12-08 20:35:23+08
107	Rangkaian Baiat yang Diikuti Munarman: UIN Jakarta-Sumut-Markas FPI Makassar	Mantan Sekum FPI Munarman disebut jaksa telah berbaiat ke pimpinan ISIS Abu Bakr al-Baghdadi. Begini rincian kegiatan baiatnya.	https://news.detik.com/berita/d-5846730/rangkaian-baiat-yang-diikuti-munarman-uin-jakarta-sumut-markas-fpi-makassar	2021-12-08 20:48:35+08
108	Warga di Batu Bara Sumut Bikin 'Kuburan' Protes Jalan Rusak	Warga di Kabupaten Batu Bara melakukan protes terhadap kondisi jalan yang rusak dengan membangun 'kuburan' lengkap dengan nisan	https://news.detik.com/berita/d-5846728/warga-di-batu-bara-sumut-bikin-kuburan-protes-jalan-rusak	2021-12-08 20:47:19+08
109	Warga Protes Gegara Rusaknya Jalur Evakuasi Merapi di Klaten	Spanduk sepanjang 27 meter dipasang di tepi Jalan Deles Indah, Klaten. Spanduk di jalur evakuasi Gunung Merapi itu berisi kalimat kritik tentang jalan rusak.	https://news.detik.com/foto-news/d-5846571/warga-protes-gegara-rusaknya-jalur-evakuasi-merapi-di-klaten	2021-12-08 20:47:01+08
111	Eretan Indramayu Dihantam Rob, Warga Minta Revitalisasi Sandaran Sungai	Banjir rob atau gelombang tinggi air laut melanda Kandanghaur Indramayu. Aktivitas warta setempat pun terganggu dalam beberapa hari terakhir.	https://news.detik.com/berita-jawa-barat/d-5846720/eretan-indramayu-dihantam-rob-warga-minta-revitalisasi-sandaran-sungai	2021-12-08 20:31:06+08
112	Penjelasan Pengacara Munarman soal FPI Pernah Dukung Seruan Al Qaeda	Pengacara Munarman, Aziz Yanuar, memberikan penjelasan terkait FPI pernah membuat maklumat yang menyatakan mendukung seruan kelompok Al Qaeda.	https://news.detik.com/berita/d-5846719/penjelasan-pengacara-munarman-soal-fpi-pernah-dukung-seruan-al-qaeda	2021-12-08 20:30:47+08
113	Relawan di Semarang Deklarasi Dukung Airlangga Hartarto Maju Pilpres	Dukungan untuk Menteri Koordinator Bidang Perekonomian Airlangga Hartanto maju di Pemilihan Presiden (Pilpres) 2024 bergema di Kota Semarang.	https://news.detik.com/berita-jawa-tengah/d-5846718/relawan-di-semarang-deklarasi-dukung-airlangga-hartarto-maju-pilpres	2021-12-08 20:29:48+08
110	Dinkes DKI Belum Temukan Varian Omicron di Jakarta	Dinas Kesehatan (Dinkes) DKI Jakarta menegaskan sampai saat ini tidak ditemukan virus Corona varian Omicron di Ibu Kota.	https://news.detik.com/berita/d-5846723/dinkes-dki-belum-temukan-varian-omicron-di-jakarta	2021-12-08 20:35:18+08
114	Pilu Disabilitas Korban Laka di Jakbar: Tak Berkaki Kanan, Kaki Kiri Terlindas	Pengendara motor berinisial M (38) tersebut ternyata telah mengalami disabilitas pada kaki kanannya.	https://news.detik.com/berita/d-5846708/pilu-disabilitas-korban-laka-di-jakbar-tak-berkaki-kanan-kaki-kiri-terlindas	2021-12-08 20:24:57+08
115	TransJakarta Bakal Evaluasi SOP Keselamatan Kerja Sesuai Arahan KNKT	PT TransJakarta (TJ) akan melakukan evaluasi terhadap SOP keselamatan kerja usai kasus rentetan kecelakaan. SOP tersebut akan disesuaikan dengan arahan KNKT	https://news.detik.com/berita/d-5846706/transjakarta-bakal-evaluasi-sop-keselamatan-kerja-sesuai-arahan-knkt	2021-12-08 20:21:55+08
116	Jabar Hari Ini: Guru Perkosa 12 Santri-Fakta Baru Pembunuhan Sarah	Sejumlah peristiwa terjadi di Jabar hari ini. Mulai dari guru perkosa belasan santriwatinya hingga Habib Bahar akan isi ceramah di Bandung Barat.	https://news.detik.com/berita-jawa-barat/d-5846746/jabar-hari-ini-guru-perkosa-12-santri-fakta-baru-pembunuhan-sarah	2021-12-08 21:01:36+08
118	Detikcom Do Your Magic: Ada Lagi Laporan soal Sumur Resapan, Kini di Cipinang Indah	Ada lagi laporan kerusakan proyek sumur resapan atau drainase vertikal di DKI Jakarta. Kini terjadi di Jl Rajawali, Cipinang Indah, Jakarta Timur.	https://news.detik.com/berita/d-5846689/detikcom-do-your-magic-ada-lagi-laporan-soal-sumur-resapan-kini-di-cipinang-indah	2021-12-08 20:11:13+08
117	Buntut Kecelakaan Berulang, TransJ Bantah Isu Sopir Kerja Lebih dari 8 Jam	TransJakarta membantah kabar bahwa sopir bus bekerja lebih dari 8 jam. Kabar tersebut muncul buntut kecelakaan berturut-turut bus TransJakarta akhir-akhir ini.	https://news.detik.com/berita/d-5846735/buntut-kecelakaan-berulang-transj-bantah-isu-sopir-kerja-lebih-dari-8-jam	2021-12-08 20:56:00+08
119	Tahun 2023 Sidoarjo Targetkan Bebas Stunting	Kinerja penanganan bayi stunting di Kabupaten Sidoarjo mulai menemukan hasil positif. Bupati Sidoarjo Ahmad Muhdlor Ali menarget tahun 2023 bebas stunting.	https://news.detik.com/berita-jawa-timur/d-5846729/tahun-2023-sidoarjo-targetkan-bebas-stunting	2021-12-08 20:16:49+08
120	Seorang Santri Tenggelam Saat Berenang di Pantai Apra Cianjur	Irsal (15), seorang santri tenggelam di Pantai Apra Kecamatan Sindangbarang, Kabupaten Cianjur, Jawa Barat, Rabu (8/12) petang.	https://news.detik.com/berita-jawa-barat/d-5846688/seorang-santri-tenggelam-saat-berenang-di-pantai-apra-cianjur	2021-12-08 20:10:50+08
121	Bhayangkari Salurkan Bantuan ke Korban Banjir Rob di Pesisir Laut Jakarta	Selain menghambat aktivitas bongkar-muat, ratusan warga terdampak banjir rob di Muara Angke dan Muara Baru, Jakarta Utara.	https://news.detik.com/berita/d-5846685/bhayangkari-salurkan-bantuan-ke-korban-banjir-rob-di-pesisir-laut-jakarta	2021-12-08 20:10:43+08
122	Puting Beliung Terjang Kawasan Rawa Jombor, 5 Rumah Tertimpa Pohon	Hujan disertai angin puting beliung menerjang wilayah sekitar Rawa Jombor di Klaten. Lima rumah di Desa Krakitan, Kecamatan Bayat rusak tertimpa pohon tumbang.	https://news.detik.com/berita-jawa-tengah/d-5846681/puting-beliung-terjang-kawasan-rawa-jombor-5-rumah-tertimpa-pohon	2021-12-08 20:07:04+08
123	Sah! Olaf Scholz Resmi Jadi Kanselir Jerman	Olaf Scholz membaca sumpah jabatan sebagai kanselir Jerman di depan anggota parlemen, di Berlin, (8/12). Ia menjadi kanselir ke-9 pasca Perang Dunia II.	https://news.detik.com/foto-news/d-5846673/sah-olaf-scholz-resmi-jadi-kanselir-jerman	2021-12-08 20:05:37+08
125	Dubes Arab Saudi Temui Gubernur Sumbar, Bahas Umrah hingga Pendidikan	Duta Besar (Dubes) Arab Saudi untuk Indonesia, bidang Agama Syekh Ahmad Bin Essa Al Hazmi menemui Gubernur Sumatera Barat Mahyeldi Ansharullah.	https://news.detik.com/berita/d-5846547/dubes-arab-saudi-temui-gubernur-sumbar-bahas-umrah-hingga-pendidikan	2021-12-08 20:00:01+08
124	Saat Para Relawan Berjuang Selamatkan Hewan Korban Erupsi Semeru	Proses evakuasi korban erupsi Gunung Semeru tak hanya dilakukan pada manusia. Namun juga terhadap hewan ternak milik warga.	https://news.detik.com/berita-jawa-timur/d-5846727/saat-para-relawan-berjuang-selamatkan-hewan-korban-erupsi-semeru	2021-12-08 20:46:58+08
126	Update Corona RI 8 Desember: Bertambah 264 Kasus, 351 Sembuh	Pemerintah memperbarui data kasus virus Corona di Indonesia. Per Rabu (8/12) ada 264 kasus baru positif Covid-19 di Indonesia.	https://news.detik.com/detiktv/d-5846667/update-corona-ri-8-desember-bertambah-264-kasus-351-sembuh	2021-12-08 19:58:27+08
142	Dua Agenda Muktamar NU	Akhirnya ada titik temu penyelenggaraan Muktamar NU. Ada dua agenda internal yang harus dibicarakan dengan kepala dingin. Apa saja?	https://news.detik.com/kolom/d-5846617/dua-agenda-muktamar-nu	2021-12-08 19:36:17+08
150	Kasus Corona RI 8 Desember Tambah 264, Sembuh 351	Pemerintah memperbarui data terkait kasus Corona di Indonesia. Hari ini dilaporkan ada tambahan 264 kasus positif COVID-19 di Indonesia.	https://news.detik.com/berita/d-5846564/kasus-corona-ri-8-desember-tambah-264-sembuh-351	2021-12-08 19:15:28+08
160	Prajurit TNI AU Usir Mertua, Anggota DPR Ingatkan Pengawasan-Sumpah	Prajurit TNI AU Lanud Roesmin Nurjadin, Koptu Merman, mengusir ibu mertuanya. Anggota Komisi I DPR RI mengingatkan soal sumpah prajurit-pengawasan.	https://news.detik.com/berita/d-5846526/prajurit-tni-au-usir-mertua-anggota-dpr-ingatkan-pengawasan-sumpah	2021-12-08 18:58:27+08
169	UNJ Usut Dosen Diduga Lecehkan Mahasiswi Via Chat WA	UNJ tengah mengusut dugaan pelecehan seksual seorang dosen berinisial DA kepada mahasiswi. Pelecehan dilakukan via chat WhatsApp (WA).	https://news.detik.com/berita/d-5846504/unj-usut-dosen-diduga-lecehkan-mahasiswi-via-chat-wa	2021-12-08 18:43:49+08
179	Tangis Cynthiara Alona Pecah Divonis 10 Bulan Bui Kasus Prostitusi Anak	Saya terima vonisnya, Yang Mulia, ucap Alona singkat, yang hadir secara virtual.	https://news.detik.com/berita/d-5846479/tangis-cynthiara-alona-pecah-divonis-10-bulan-bui-kasus-prostitusi-anak	2021-12-08 18:26:20+08
189	Jaksa Sebut Munarman Sudah Berbaiat kepada ISIS	Mantan Sekretaris Umum FPI, Munarman, menjalani sidang kasus terorisme dengan agenda pembacaan dakwaan. Jaksa menceritakan momen Munarman berbaiat kepada ISIS.	https://news.detik.com/detiktv/d-5846456/jaksa-sebut-munarman-sudah-berbaiat-kepada-isis	2021-12-08 18:07:41+08
200	Ketua Kadin Jabar dan Kabupaten Sukabumi Dilaporkan ke Polisi	Kasat Reskrim AKP Rizka Fadhila mengatakan saat ini pihaknya masih melakukan penyelidikan terkait kasus tersebut.	https://news.detik.com/berita-jawa-barat/d-5846427/ketua-kadin-jabar-dan-kabupaten-sukabumi-dilaporkan-ke-polisi	2021-12-08 17:53:58+08
128	Jaksa: FPI Dukung ISIS dan Al-Qaeda Sejak 2014	Jaksa menyatakan bahwa FPI di tahun 2014 menyebarkan maklumat untuk seluruh DPD agar mendukung seruan Al-Qaeda dan ISIS.	https://news.detik.com/detiktv/d-5846664/jaksa-fpi-dukung-isis-dan-al-qaeda-sejak-2014	2021-12-08 19:54:45+08
131	Massa Demo Buruh Bubar, Arus Lalin Kembali Dibuka	Massa buruh yang menggelar aksi di Patung Kuda dan Balai Kota, membubarkan diri. Lalu lintas sekitar kawasan demonstrasi pun kembali dibuka.	https://news.detik.com/detiktv/d-5846659/massa-demo-buruh-bubar-arus-lalin-kembali-dibuka	2021-12-08 19:52:36+08
136	Bayi Lahir Akibat Ulah Guru Perkosa Santriwati di Bandung Jadi 9	Anak yang lahir dari santriwati korban pemerkosaan guru pesantren di Bandung berinisial HW (36) bertambah satu. Dua calon bayi, masih dalam kandungan.	https://news.detik.com/berita-jawa-barat/d-5846641/bayi-lahir-akibat-ulah-guru-perkosa-santriwati-di-bandung-jadi-9	2021-12-08 19:44:25+08
139	Said Aqil Siap Maju Lagi Jadi Ketum PBNU	Said Aqil Siroj menjawab permintaan para kiai untuk bersedia mencalonkan diri lagi sebagai Ketum PBNU. Said menyatakan siap maju lagi di Muktamar ke-34 nanti.	https://news.detik.com/foto-news/d-5846509/said-aqil-siap-maju-lagi-jadi-ketum-pbnu	2021-12-08 19:41:22+08
144	Mahasiswa UM Surabaya Diajak Jadi Relawan Erupsi Semeru	Universitas Muhammadiyah Surabaya mengajak mahasiswa untuk menjadi Relawan erupsi Gunung Semeru. Dan ternyata ajakan itu disambut banyak peminat.	https://news.detik.com/berita-jawa-timur/d-5846609/mahasiswa-um-surabaya-diajak-jadi-relawan-erupsi-semeru	2021-12-08 19:33:46+08
147	Hujan-Angin Kencang Tumbangkan Sejumlah Pohon di Ciamis	Hujan dan angin kencang menumbangkan sejumlah pohon di Ciamis. Tidak ada korban jiwa dalam kejadian tersebut.	https://news.detik.com/berita-jawa-barat/d-5846598/hujan-angin-kencang-tumbangkan-sejumlah-pohon-di-ciamis	2021-12-08 19:26:25+08
154	Fakta Baru Pria Arab Bunuh Sarah, Polisi: Sakit Hati Ditagih Janji	Abdul Latif (48), pria Arab Saudi, membunuh istri siri, Sarah (21), di Cianjur. Terungkap bahwa pelaku sakit hati.	https://news.detik.com/berita-jawa-barat/d-5846536/fakta-baru-pria-arab-bunuh-sarah-polisi-sakit-hati-ditagih-janji	2021-12-08 19:04:57+08
157	Siap Nyalon Ketum PBNU Lagi, Said Aqil Tegaskan Tak Terobsesi Jadi Wapres	&lt;a href=https://www.detik.com/search/searchall?query=Said+Aqil&amp;siteid=2 target=_blank&gt;Said Aqil Siroj menyatakan siap maju jadi caketum PBNU lagi. Said Aqil menegaskan pencalonannya sebagai Ketum PBNU bukan karena terobsesi menjadi Wapres RI.	https://news.detik.com/berita/d-5846532/siap-nyalon-ketum-pbnu-lagi-said-aqil-tegaskan-tak-terobsesi-jadi-wapres	2021-12-08 19:02:16+08
163	Eks Sekda Sumsel Dituntut 10 Tahun Penjara di Kasus Korupsi Masjid Sriwijaya	Dua terdakwa kasus dugaan korupsi Masjid Sriwijaya, Mukti Sulaiman dan Ahmad Nasuhi, dituntut masing-masing 10 tahun dan 15 tahun penjara.	https://news.detik.com/berita/d-5846522/eks-sekda-sumsel-dituntut-10-tahun-penjara-di-kasus-korupsi-masjid-sriwijaya	2021-12-08 18:56:20+08
166	Sidang Munarman Digelar, Ini 5 Hal Terbaru yang Diketahui	Sidang Munarman kembali digelar di PN Jaktim pagi tadi. Ini 5 hal baru yang diketahui.	https://news.detik.com/berita/d-5846529/sidang-munarman-digelar-ini-5-hal-terbaru-yang-diketahui	2021-12-08 18:48:07+08
173	Akhir Gugatan RS Vs Kakek yang Diinfus Berujung Amputasi di Banyumas	Seorang kakek menggugat RS di Banyumas atas amputasi yang dialaminya. Apa putusan pengadilan?	https://news.detik.com/berita/d-5846499/akhir-gugatan-rs-vs-kakek-yang-diinfus-berujung-amputasi-di-banyumas	2021-12-08 18:37:31+08
176	LaNyalla Ajak Kader PBB Dukung Amandemen Konstitusi	Ketua DPD RI, AA LaNyalla Mahmud Mattalitti mengajak kader Partai Bulan Bintang (PBB) aktif mengoreksi arah perjalanan bangsa melalui Amandemen UUD 1945.	https://news.detik.com/berita/d-5846492/lanyalla-ajak-kader-pbb-dukung-amandemen-konstitusi	2021-12-08 18:32:13+08
182	Tempat Penyimpanan Jenazah Korban Erupsi Semeru Sempat Kekurangan	Tak hanya makanan hingga pakaian, korban erupsi Semeru juga membutuhkan sarana penyimpanan jenazah. Tempat penyimpanan jenazah ini sempat mengalami kekurangan.	https://news.detik.com/berita-jawa-timur/d-5846621/tempat-penyimpanan-jenazah-korban-erupsi-semeru-sempat-kekurangan	2021-12-08 18:19:40+08
185	Teroris Upik Lawanga Divonis Seumur Hidup!	Teroris kelompok Jamaah Islamiyah (JI), Taufik Bulaga alias Upik Lawanga, divonis penjara seumur hidup.	https://news.detik.com/berita/d-5846460/teroris-upik-lawanga-divonis-seumur-hidup	2021-12-08 18:12:18+08
192	BMKG Wanti-wanti Potensi Gelombang Tinggi dan Banjir Rob	Kepala BMKG Dwikorita Karnawati mengungkap prediksi BMKG akan adanya gelombang tinggi dan banjir rob di beberapa wilayah Indonesia.	https://news.detik.com/berita/d-5846445/bmkg-wanti-wanti-potensi-gelombang-tinggi-dan-banjir-rob	2021-12-08 18:03:02+08
196	Gibran-Bima Arya Intens Ketemu, Pemanasan Pilgub DKI?	Wali Kota Solo Gibran Rakabuming Raka terlihat intens bertemu dengan Wali Kota Bogor Bima Arya Sugiarto. Pemanasan jelang Pilgub DKI?	https://news.detik.com/berita-jawa-tengah/d-5846438/gibran-bima-arya-intens-ketemu-pemanasan-pilgub-dki	2021-12-08 17:58:33+08
129	Lokasi Terdampak Erupsi Semeru Jadi Tontonan 'Wisatawan' Lokal dan Luar Kota	Dua dusun di lereng Semeru yang diterjang awan panas menjadi tontonan warga. Bahkan banyak warga yang mengabadikan gambar dan berswafoto.	https://news.detik.com/berita-jawa-timur/d-5846663/lokasi-terdampak-erupsi-semeru-jadi-tontonan-wisatawan-lokal-dan-luar-kota	2021-12-08 19:53:16+08
132	Cynthiara Alona Divonis 10 Bulan Penjara, JPU Ajukan Banding	Majelis hakim memvonis terdakwa dalam kasus prostitusi Cynthiara Alona hukum 10 bulan penjara. JPU akan mengajukan upaya banding terkait putusan hakim ini.	https://news.detik.com/berita/d-5846658/cynthiara-alona-divonis-10-bulan-penjara-jpu-ajukan-banding	2021-12-08 19:51:10+08
137	Kontraktor Jamin Sumur Resapan yang Diaspal Kuat Tahan Truk Kontainer	Sebagian sumur resapan malah merusak permukaan jalan dan kini diaspal. Pihak kontraktor menjamin kekuatan sumur resapan mampu menahan beban berat.	https://news.detik.com/berita/d-5846628/kontraktor-jamin-sumur-resapan-yang-diaspal-kuat-tahan-truk-kontainer	2021-12-08 19:43:29+08
140	Sebaran Lengkap 264 Kasus Corona RI 8 Desember, Jabar-DKI Tertinggi	Pemerintah melaporkan sebanyak 264 kasus baru positif Corona hari ini. Sebanyak 351 pasien Corona dinyatakan sembuh dan 16 meninggal dunia.	https://news.detik.com/berita/d-5846619/sebaran-lengkap-264-kasus-corona-ri-8-desember-jabar-dki-tertinggi	2021-12-08 19:37:32+08
145	Novel Baswedan dkk Terima Jadi ASN Polri, Ini Kabar Soal Pelantikannya	Novel Baswedan terima jadi ASN Polri dan akan segera dilantik. Bagaimana kabar terbaru soal pelantikannya?	https://news.detik.com/berita/d-5846626/novel-baswedan-dkk-terima-jadi-asn-polri-ini-kabar-soal-pelantikannya	2021-12-08 19:30:08+08
148	Kasus Indosurya, Jaksa Minta Penyidik Lengkapi Hasil Audit Independen	Kejagung menyebut tim jaksa peneliti telah mengembalikan berkas kasus tersebut ke penyidik dengan meminta agar dilengkapi dengan hasil audit auditor independen.	https://news.detik.com/berita/d-5846597/kasus-indosurya-jaksa-minta-penyidik-lengkapi-hasil-audit-independen	2021-12-08 19:26:22+08
155	Pengelola YIA Kulon Progo Setuju Wacana Polsek Bandara tapi...	Pengelola Bandara Yogyakarta International Airport (YIA) Kulon Progo mengaku setuju dengan wacana pendirian kantor polsek di wilayahnya. Tapi...	https://news.detik.com/berita-jawa-tengah/d-5846534/pengelola-yia-kulon-progo-setuju-wacana-polsek-bandara-tapi	2021-12-08 19:02:37+08
158	11 Mayat Hangus Ditemukan, Tentara Myanmar Dituduh Bertanggung Jawab	Sejumlah jenazah dalam kondisi hangus terbakar ditemukan di sebuah desa di Myanmar. Tentara Myanmar dituduh mendalangi pembunuhan mengerikan tersebut.	https://news.detik.com/internasional/d-5846530/11-mayat-hangus-ditemukan-tentara-myanmar-dituduh-bertanggung-jawab	2021-12-08 19:00:35+08
164	detikcom Do Your Magic: PAM Jaya Bakal Pindahkan Pipa Sumbat Got di Kemanggisan	PD PAM Jaya telah menerima laporan adanya pipa yang menghambat got di Jl Anggrek Neli Murni, Kemanggisan. Pemindahan disebut akan segera dilakukan.	https://news.detik.com/berita/d-5846510/detikcom-do-your-magic-pam-jaya-bakal-pindahkan-pipa-sumbat-got-di-kemanggisan	2021-12-08 18:53:31+08
167	Hilang Disapu Gelombang, Nelayan Labuan Ditemukan Meninggal Dunia	Nelayan yang hilang di wilayah perairan Pulau Liwungan, Pandeglang ditemukan dalam kondisi meninggal dunia.	https://news.detik.com/berita-jawa-barat/d-5846506/hilang-disapu-gelombang-nelayan-labuan-ditemukan-meninggal-dunia	2021-12-08 18:45:34+08
174	Warga-Pengelola Kafe Wow Bertemu Usai Viral Video 'LGBT', Begini Hasilnya	Warga dan manajemen Kafe Wow bertemu setelah viral video dikaitkan dengan 'LGBT'. Dalam pertemuan itu, manajemen menyepakati beberapa hal.	https://news.detik.com/berita/d-5846497/warga-pengelola-kafe-wow-bertemu-usai-viral-video-lgbt-begini-hasilnya	2021-12-08 18:36:36+08
177	Begini Progres Pembangunan Exit Tol Cisumdawu di Kawasan Jatinangor	Jelang dibukanya Tol Cisumdawu awal tahun 2022, pembangunan jalur gerbang exit tol Cisumdawu di kawasan Jatinangor, Kabupaten Sumedang masih berlangsung.	https://news.detik.com/berita-jawa-barat/d-5846491/begini-progres-pembangunan-exit-tol-cisumdawu-di-kawasan-jatinangor	2021-12-08 18:31:19+08
183	3 Balita di Manado Selamat Usai Rumah Tertimpa Longsor Akibat Hujan Deras	Hujan deras yang mengguyur Kota Manado, Sulawesi Utara (Sulut), membuat permukiman warga di 3 kecamatan tertimpa longsor.	https://news.detik.com/berita/d-5846472/3-balita-di-manado-selamat-usai-rumah-tertimpa-longsor-akibat-hujan-deras	2021-12-08 18:19:13+08
186	PPKM Level 3 Batal, Begini Aturannya di Yogyakarta Lur!	Pemerintah telah memutuskan PPKM Level 3 Nataru batal. Lalu bagaimana aturannya di Daerah Istimewa Yogyakarta (DIY)?	https://news.detik.com/berita-jawa-tengah/d-5846459/ppkm-level-3-batal-begini-aturannya-di-yogyakarta-lur	2021-12-08 18:10:44+08
194	Penyerangan Asrama Mahasiswa di Makassar: Pelaku Diburu, Ini 5 Fakta Terbarunya	Penyerangan asrama mahasiswa di Makassar sudah ditangani oleh pihak kepolisian. Bagaimana fakta terbarunya?	https://news.detik.com/berita/d-5846594/penyerangan-asrama-mahasiswa-di-makassar-pelaku-diburu-ini-5-fakta-terbarunya	2021-12-08 18:00:38+08
197	Helikopter Bawa Jenderal Militer India Jatuh, 3 Orang Tewas	Sebuah helikopter yang membawa kepala staf pertahanan India, Jenderal Bipin Rawat, dilaporkan jatuh di wilayah Tamil Nadu.	https://news.detik.com/internasional/d-5846437/helikopter-bawa-jenderal-militer-india-jatuh-3-orang-tewas	2021-12-08 17:56:44+08
130	Respons Gus Ipul Soal Muktamar NU Diputuskan 23-25 Desember 2021	Konferensi Besar (Konbes NU) memutuskan Muktamar ke-34 digelar 23-25 Desember 2021. Ketua PBNU Saifullah Yusuf bersyukur jadwal muktamar sudah diputuskan.	https://news.detik.com/berita-jawa-timur/d-5846660/respons-gus-ipul-soal-muktamar-nu-diputuskan-23-25-desember-2021	2021-12-08 19:52:42+08
133	Jaksa Tolak Pleidoi Mbah Minto, Kekeh Tuntut 2 Tahun Bui	Jaksa penuntut umum (JPU) menolak pleidoi Kasmito atau Mbah Minto (75) tentang unsur membela diri. JPU berpendapat Mbah Minto layak dituntut 2 tahun bui.	https://news.detik.com/berita-jawa-tengah/d-5846657/jaksa-tolak-pleidoi-mbah-minto-kekeh-tuntut-2-tahun-bui	2021-12-08 19:50:34+08
138	Program Kandang Badak Jawa Ujung Kulon Kembali Dilanjutkan	Pembuatan kandang badak ini bisa menghindari habitat badak yang berisiko tinggi mengalami cacat dari perkawinan sejenis.	https://news.detik.com/berita-jawa-barat/d-5846624/program-kandang-badak-jawa-ujung-kulon-kembali-dilanjutkan	2021-12-08 19:42:03+08
141	Ditembak Mati, Anggota KKB Yahukimo Bawa Senpi yang Direbut dari TNI	Atu Kogoya, seorang anggota teroris KKB di Yahukimo, Papua, ditembak mati Satgas TNI. Dari tangan Atu, disita senpi serbu yang direbut dari prajurit TNI.	https://news.detik.com/berita/d-5846618/ditembak-mati-anggota-kkb-yahukimo-bawa-senpi-yang-direbut-dari-tni	2021-12-08 19:36:37+08
146	Said Iqbal: Jika Anies Ingkar Janji Revisi UMP, Buruh Siap Aksi Besar-besaran	Bilamana Gubernur mengingkari janji pada tanggal 29 November dan 8 Desember, saya mau bilang dan katakan, siap untuk aksi besar-besaran kembali, kata Said.	https://news.detik.com/berita/d-5846600/said-iqbal-jika-anies-ingkar-janji-revisi-ump-buruh-siap-aksi-besar-besaran	2021-12-08 19:27:00+08
149	Polda Jateng Siapkan 375 Pos Cek Poin saat Natal dan Tahun Baru	Polda Jawa Tengah menyiapkan 375 pos pengamanan terpadu check point di masa Natal 2021 dan Tahun Baru 2022. Pos ini bukan titik penyekatan.	https://news.detik.com/berita-jawa-tengah/d-5846592/polda-jateng-siapkan-375-pos-cek-poin-saat-natal-dan-tahun-baru	2021-12-08 19:22:08+08
156	Jaksa Sebut FPI Pernah Terbitkan Maklumat Dukung Seruan Al Qaeda	JPU menyebut DPP FPI pernah membuat maklumat yang menyatakan ormas yang kini sudah dilarang pemerintah itu mendukung kelompok Al Qaeda.	https://news.detik.com/berita/d-5846533/jaksa-sebut-fpi-pernah-terbitkan-maklumat-dukung-seruan-al-qaeda	2021-12-08 19:02:24+08
159	Perjalanan Siskaeee di Bandara YIA Kulon Progo Dilacak, Ini Hasilnya	Jejak perjalanan Siskaeee di Yogyakarta International Airport (YIA) atau Bandara Kulon Progo dilacak oleh pihak bandara. Begini hasilnya.	https://news.detik.com/berita-jawa-tengah/d-5846528/perjalanan-siskaeee-di-bandara-yia-kulon-progo-dilacak-ini-hasilnya	2021-12-08 18:59:26+08
165	Jemput Bola Petugas Vaksinasi ke Rumah hingga Empang Warga Losarang	Satgas COVID-19 Losarang Indramayu menggedor setiap rumah hingga tempat kerja warga, seperti area sawah hingga empang atau tambak ikan. Warga divaksinasi.	https://news.detik.com/berita-jawa-barat/d-5846507/jemput-bola-petugas-vaksinasi-ke-rumah-hingga-empang-warga-losarang	2021-12-08 18:49:53+08
168	Penjelasan Lengkap Pemkab Bekasi soal Warga DKI Kena Omicron Ternyata Hoax	Isu empat warga DKI Jakarta kena Corona varian Omicron bikin heboh. Kepala Dinas Kesehatan Kabupaten Bekasi Sri Enny Mainiarti menegaskan kabar tersebut hoax.	https://news.detik.com/berita/d-5846505/penjelasan-lengkap-pemkab-bekasi-soal-warga-dki-kena-omicron-ternyata-hoax	2021-12-08 18:43:58+08
175	Selebgram RR Si Kuda Poni Live Bugil-Masturbasi di Bali Segera Disidang	Selebgram wanita yang dijuluki si kuda poni, inisial RR (25), yang ditangkap polisi karena live bugil dan masturbasi melalui medsos di Bali, segera disidang.	https://news.detik.com/berita/d-5846496/selebgram-rr-si-kuda-poni-live-bugil-masturbasi-di-bali-segera-disidang	2021-12-08 18:36:10+08
178	Unjuk Rasa di Depan Kedubes China di Jakarta	Massa berdemonstrasi di Kedubes China, Jakarta, Rabu (8/12). Mereka mendesak pemerintah meninjau ulang hubungan diplomasi antara RI dengan China	https://news.detik.com/foto-news/d-5846343/unjuk-rasa-di-depan-kedubes-china-di-jakarta	2021-12-08 18:28:14+08
184	Mendagri Minta Hindari Istilah PPKM Level 3 Saat Nataru, Ini Alasannya	Pemerintah membatalkan penerapan PPKM Level 3 serentak saat Natal dan tahun baru 2021. Mendagri Tito Karnavian memberi penjelasan.	https://news.detik.com/berita/d-5846463/mendagri-minta-hindari-istilah-ppkm-level-3-saat-nataru-ini-alasannya	2021-12-08 18:14:40+08
187	Polisi: Pengemudi Motor Terlindas Truk Crane di Jakbar Seorang Disabilitas	Pemotor yang terlindas truk crane di Cengkareng, Jakbar, adalah penyandang disabilitas. Sebelum kaki kirinya terlindas, korban sudah kehilangan kaki kanannya.	https://news.detik.com/berita/d-5846457/polisi-pengemudi-motor-terlindas-truk-crane-di-jakbar-seorang-disabilitas	2021-12-08 18:08:17+08
195	Bandara YIA Apresiasi Penangkapan Siskaeee, Harap Jadi Efek Jera	Pengelola Bandara YIA Kulon Progo apresiasi penangkapan Siskaeee, pemeran video porno di kawasan YIA. Ditangkapnya Siskaeee diharapkan bisa jadi efek jera.	https://news.detik.com/berita-jawa-tengah/d-5846442/bandara-yia-apresiasi-penangkapan-siskaeee-harap-jadi-efek-jera	2021-12-08 18:00:26+08
199	2 Mayat Ditemukan di Sungai Blora, Diduga Terkait Tawuran Orkes Dangdut	Dua sosok mayat pria ditemukan di sungai yang berada Kabupaten Blora. Polisi menyelidiki dugaan tewasnya korban terlibat tawuran yang terjadi di orkes dangdut.	https://news.detik.com/berita-jawa-tengah/d-5846428/2-mayat-ditemukan-di-sungai-blora-diduga-terkait-tawuran-orkes-dangdut	2021-12-08 17:54:09+08
134	Tangis Pemilik Warung Tengkleng Solo Baru yang Viral Ngepruk Harga	Kabar soal warung tengkleng di Solo Baru disebut menaikkan harga tak wajar alias 'ngepruk' viral. Pemilik warung menangis saat curhat dagangannya sepi pembeli.	https://news.detik.com/berita-jawa-tengah/d-5846644/tangis-pemilik-warung-tengkleng-solo-baru-yang-viral-ngepruk-harga	2021-12-08 19:45:34+08
152	Mobil Boks Terguling Gegara Jalan Bergelombang di Underpass Pondok Indah	Mobil boks terguling setelah menghantam tiang lampu penerangan jalan di underpass Pondok Indah, Jaksel. Mobil oleng setelah melintasi jalan bergelombang.	https://news.detik.com/berita/d-5846561/mobil-boks-terguling-gegara-jalan-bergelombang-di-underpass-pondok-indah	2021-12-08 19:13:05+08
162	Massa Buruh Bubar, Lalin di Kawasan Patung Kuda-Istana Kembali Dibuka	Massa buruh yang menggelar aksi di Patung Kuda dan Balai Kota membubarkan diri. Lalu lintas sekitar kawasan demonstrasi pun kembali dibuka.	https://news.detik.com/berita/d-5846524/massa-buruh-bubar-lalin-di-kawasan-patung-kuda-istana-kembali-dibuka	2021-12-08 18:57:08+08
171	Desa Banyuwangi Juara 1 Anugerah Desa Wisata Indonesia 2021	Desa Tamansari, Banyuwangi juara pertama Anugerah Desa Wisata Indonesia (ADWI) 2021. ADWI ajang pemberian penghargaan kepada desa-desa wisata berprestasi	https://news.detik.com/berita-jawa-timur/d-5846694/desa-banyuwangi-juara-1-anugerah-desa-wisata-indonesia-2021	2021-12-08 18:40:34+08
181	Relawan Ganjar Bangun Dapur Umum di Lokasi Pengungsian Erupsi Semeru	Dapur umum tersebut berada di Dusun Candipuro Kerajan, Kecamatan Candipuro, Kabupaten Lumajang, Jawa Timur.	https://news.detik.com/berita/d-5846473/relawan-ganjar-bangun-dapur-umum-di-lokasi-pengungsian-erupsi-semeru	2021-12-08 18:20:46+08
191	Alasan Hakim Vonis Cynthiara Alona Jauh Lebih Rendah dari Tuntutan Jaksa	Artis Cynthiara Alona divonis 10 bulan penjara. Majelis hakim pun mengungkap alasan menghukum terdakwa dalam kasus prostitusi anak itu hanya 10 bulan penjara.	https://news.detik.com/berita/d-5846446/alasan-hakim-vonis-cynthiara-alona-jauh-lebih-rendah-dari-tuntutan-jaksa	2021-12-08 18:03:39+08
201	LA Mania Hingga Pelajar Turun Jalan Galang Dana untuk Korban Semeru	Erupsi Semeru di Lumajang menggerakkan banyak kalangan untuk bersimpati. Di Lamongan, mahasiswa hingga LA Mania menggalang dana untuk korban erupsi Semeru.	https://news.detik.com/berita-jawa-timur/d-5846426/la-mania-hingga-pelajar-turun-jalan-galang-dana-untuk-korban-semeru	2021-12-08 17:53:48+08
135	Bertambah, Korban Tewas Heli Jatuh Bawa Jenderal Militer India Jadi 7 Orang	Korban tewas dalam insiden jatuhnya helikopter yang membawa jenderal militer India bertambah menjadi 7 orang. Nasib sang jenderal militer masih belum jelas.	https://news.detik.com/internasional/d-5846643/bertambah-korban-tewas-heli-jatuh-bawa-jenderal-militer-india-jadi-7-orang	2021-12-08 19:44:39+08
153	Ini Penjelasan Tjahjo Kumolo soal Wacana ASN Diganti Robot	Menteri Pendayagunaan Aparatur Negara dan Reformasi Birokrasi (KemenPAN-RB) Tjahjo Kumolo menegaskan bahwa penggunaan robot bukan berarti memangkas ASN.	https://news.detik.com/berita-jawa-barat/d-5846548/ini-penjelasan-tjahjo-kumolo-soal-wacana-asn-diganti-robot	2021-12-08 19:07:21+08
172	ASN Dinkes Sumut Dituntut 3 Tahun Bui di Kasus Jual Beli Vaksin COVID Ilegal	PN Medan menggelar sidang tuntutan ASN Dinkes Sumut Kristinus dalam perkara jual-beli vaksin Corona secara ilegal. Jaksa menuntut Kristinus dihukum 3 tahun bui.	https://news.detik.com/berita/d-5846501/asn-dinkes-sumut-dituntut-3-tahun-bui-di-kasus-jual-beli-vaksin-covid-ilegal	2021-12-08 18:40:19+08
190	PPKM Level 3 saat Nataru Batal, Ganjar Minta Warga Jateng Tak Mudik	Gubernur Jawa Tengah Ganjar Pranowo meminta masyarakat menahan diri untuk tidak mudik meski PPKM level 3 saat Nataru dibatalkan.	https://news.detik.com/berita-jawa-tengah/d-5846447/ppkm-level-3-saat-nataru-batal-ganjar-minta-warga-jateng-tak-mudik	2021-12-08 18:03:46+08
193	Pekan Ini, Bahar Smith Dikabarkan Hadiri Tabligh Akbar di Bandung Barat	Bahar bin Smith dikabarkan bakal menghadiri agenda tabligh akbar yang digelar di markas DPC FPI Cikalongwetan, Desa Cisomang Barat, Kabupaten Bandung Barat.	https://news.detik.com/berita-jawa-barat/d-5846443/pekan-ini-bahar-smith-dikabarkan-hadiri-tabligh-akbar-di-bandung-barat	2021-12-08 18:00:50+08
212	Coba Baru	Hallow ini Coba Baru	https:www.cobabaru.com	2021-12-09 00:26:03.16+08
127	Teddy Sebut MKD Akan Panggil Fadli Zon soal 'Invisible Hand' UU Cipta Kerja	Politikus Teddy Gusnaidi menyebut Mahkamah Kehormatan Dewan (MKD) DPR RI bakal segera memanggil legislator Partai Gerindra Fadli Zon.	https://news.detik.com/detiktv/d-5846665/teddy-sebut-mkd-akan-panggil-fadli-zon-soal-invisible-hand-uu-cipta-kerja	2021-12-08 19:56:38+08
143	Pencarian Nelayan yang Hilang di Perairan Mandalika Jepara Masih Nihil	Seorang dari dua nelayan yang dilaporkan hilang di perairan Mandalika Jepara, masih dalam pencarian. Hingga sore ini pun pencarian masih nihil.	https://news.detik.com/berita-jawa-tengah/d-5846616/pencarian-nelayan-yang-hilang-di-perairan-mandalika-jepara-masih-nihil	2021-12-08 19:36:11+08
151	Begini Cara Negara-negara Tetangga Antisipasi Masuknya Varian Omicron	Indonesia telah melakukan langkah antisipasi mencegah masuknya varian ini agar tidak menyebar lebih luas di Tanah Air.	https://news.detik.com/berita/d-5846563/begini-cara-negara-negara-tetangga-antisipasi-masuknya-varian-omicron	2021-12-08 19:14:13+08
161	Dugaan Awal Penyebab Kebakaran Maut di Tambora Korsleting Listrik	Lima orang sekeluarga tewas dalam kebakaran di Tambora, Jakarta Barat. Polisi mengungkap dugaan awal kebakaran akibat korsleting listrik.	https://news.detik.com/berita/d-5846525/dugaan-awal-penyebab-kebakaran-maut-di-tambora-korsleting-listrik	2021-12-08 18:57:23+08
170	PKS Menolak, Baleg DPR Setujui Draf RUU TPKS	Badan Legislasi (Baleg) DPR menyepakati draf Rancangan Undang-Undang Tindak Pidana Kekerasan Seksual (RUU TPKS) jadi usulan inisiatif DPR. Tujuh fraksi setuju.	https://news.detik.com/berita/d-5846503/pks-menolak-baleg-dpr-setujui-draf-ruu-tpks	2021-12-08 18:41:38+08
180	Kemenkumham Tolak Sahkan Kepengurusan Partai Nanggroe Aceh Versi KLB	Kanwil Kemenkumham Aceh menyatakan tidak dapat mengesahkan kepengurusan Partai Nanggroe Aceh (PNA) versi kongres luar biasa (KLB) yang digelar di Bireuen.	https://news.detik.com/berita/d-5846475/kemenkumham-tolak-sahkan-kepengurusan-partai-nanggroe-aceh-versi-klb	2021-12-08 18:20:52+08
188	Munarman Didakwa Sebagai Penggerak Aksi Teror!	Jaksa penuntut umum (JPU) telah membacakan dakwaan terhadap Munarman. Munarman didakwa telah menggerakkan orang lain dan merencanakan tindak pidana terorisme.	https://news.detik.com/detiktv/d-5846448/munarman-didakwa-sebagai-penggerak-aksi-teror	2021-12-08 18:04:45+08
198	Didakwa Kasus Terorisme, Munarman Melawan	Munarman didakwa menggerakkan orang lain untuk melakukan teror. Munarman melawan jaksa dengan mengajukan nota keberatan atau eksepsi.	https://news.detik.com/berita/d-5846435/didakwa-kasus-terorisme-munarman-melawan	2021-12-08 17:55:22+08
\.


--
-- TOC entry 3259 (class 0 OID 0)
-- Dependencies: 200
-- Name: news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.news_id_seq', 212, true);


--
-- TOC entry 3120 (class 2606 OID 72112)
-- Name: news news_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_pkey PRIMARY KEY (id);


-- Completed on 2021-12-09 00:26:51 WITA

--
-- PostgreSQL database dump complete
--

