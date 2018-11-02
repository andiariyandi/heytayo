<h2><u><?= $judul ?></u></h2>
<h3><p>Selamat datang di <b>HeyTayo</b> Website</h3>
Website ini dibuat untuk membantu warga net dalam bertukar informasi mengenai transportasi umum di Indonesia, <br>
baik berupa postingan review pelayanan bus ataupun harga tiket bus berdasarkan tujuan tertentu.<br><br>
<img src="<?php echo base_url().'assets/images/banner2.png'?>" alt="">
<br><br>
Bagi anda yang ingin memposting info terbaru terkait transportasi umum di daerahnya masing-masing silahkan 
<b>Registrasi</b> terlebih dahulu, atau bisa langsung <b>Login</b> jika sudah memiliki akun.
<?php echo $this->session->userdata('username');?></p>