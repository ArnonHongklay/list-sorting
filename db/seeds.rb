
bangkok = [
  { name: "Bangkok International Dental Center (BIDC)", image: "https://www.cerrita.com/wp-content/uploads/2017/04/clinics_bkk_bidc_thumb.jpg" },
  { name: "Smile Signature Siam Square", image: "https://www.cerrita.com/wp-content/uploads/2016/11/clinic_bkk_smilesigsquare_01.jpg" },
  { name: "Bangkok Smile Dental Clinic Sukhumvit 5", image: "https://www.cerrita.com/wp-content/uploads/2017/04/clinic_bkk_smile_thumb.jpg" },
  { name: "Bangkok Smile Dental Clinic (Asoke)", image: "https://www.cerrita.com/wp-content/uploads/2016/11/100809095429343-2.jpg" },
  { name: "Thantakit International Dental Center", image: "https://www.cerrita.com/wp-content/uploads/2016/11/clinic_bkk_thantakit_01.jpg" },
  { name: "Thantakit (All Seasons Place Branch)", image: "https://www.cerrita.com/wp-content/uploads/2016/11/clinic_bkk_thantakit_03.jpg" },
  { name: "Dental Signature Siam Paragon", image: "https://www.cerrita.com/wp-content/uploads/2016/11/clinic_bkk_dentalsigparagon_02-1-1.jpg" },
  { name: "Apex Ploenchit", image: "https://www.cerrita.com/wp-content/uploads/2016/11/APEX-MEDICAL-CENTER-PC-4x6_3.jpg" },
  { name: "BFC Dental", image: "https://www.cerrita.com/wp-content/uploads/2016/11/clinic_bkk_bfcdental_02.jpg" },
  { name: "Dental Signature (Central Eastville)", image: "https://www.cerrita.com/wp-content/uploads/2016/11/clinic_bkk_dentalsigparagon_01.jpg" },
  { name: "Dr. Smile Dental Clinic", image: "https://www.cerrita.com/wp-content/uploads/2016/11/clinic_bkk_drsmile_01.jpg" },
  { name: "Dr. Sunil International Dental Center", image: "https://www.cerrita.com/wp-content/uploads/2016/11/clinic_bkk_drsunil_02.jpg" },
  { name: "The Arch International Dental Center", image: "https://www.cerrita.com/wp-content/uploads/2016/11/clinic_bkk_archinter_02.jpg" },
  { name: "RSU Dental Center", image: "https://www.cerrita.com/wp-content/uploads/2016/11/clinic_bkk_rsudental_01.jpg" },
  { name: "MDK Silom Dental Clinic", image: "https://www.cerrita.com/wp-content/uploads/2016/11/clinic_bkk_mdksilom_01.jpg" },
  { name: "Promjai", image: "https://www.cerrita.com/wp-content/uploads/2016/11/clinic_bkk_promjai_01.jpg" },
  { name: "Habito Dental Clinic", image: "https://www.cerrita.com/wp-content/uploads/2017/03/clinic_bkk_habito_01.png"}
]

phuket = [
  { name: "Dental Signature at Phuket", image: "https://www.cerrita.com/wp-content/uploads/2017/04/clinics_pkt_bidc_thumb.jpg" },
  { name: "Phuket Cosmetic Dental Clinic", image: "https://www.cerrita.com/wp-content/uploads/2016/11/pcdc-new-pic-008-min.jpg" },
  { name: "Smile Signature Phuket", image: "https://www.cerrita.com/wp-content/uploads/2016/11/Smile-Signature-Phuket1-1.jpg" },
  { name: "Phuket Dental Home", image: "https://www.cerrita.com/wp-content/uploads/2016/11/dhck1-2-e1483079677951.jpg" },
  { name: "APEX Dental Center Phuket", image: "https://www.cerrita.com/wp-content/uploads/2017/04/clinics_pkt_apex_thumb.jpg" },
  { name: "Sea Smile International Clinic", image: "https://www.cerrita.com/wp-content/uploads/2016/11/Sea-Smile-Inter-01-min.jpg" },
  { name: "Sea Smile @ The KEE", image: "https://www.cerrita.com/wp-content/uploads/2016/11/P1018174-min.jpg" },
  { name: "Sea Smile Dental Clinic", image: "https://www.cerrita.com/wp-content/uploads/2016/11/Sea-Smile-02-min.jpg" },
  { name: "Dr. Panachai Dental Care Clinic", image: "https://www.cerrita.com/wp-content/uploads/2016/12/clinic_pkt_drpanachai_01.jpg" }
]

bangkok.each do |data|
  Clinic.create(name: data[:name], image: data[:image], location: 'bangkok', rating: rand(1..5), flag: 'default')
end

phuket.each do |data|
  Clinic.create(name: data[:name], image: data[:image], location: 'phuket', rating: rand(1..5), flag: 'default')
end
