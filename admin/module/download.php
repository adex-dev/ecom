<?php
	if (!empty($_GET['file'])) {

		$filename = basename($_GET['file']);
		$filepath = 'https://web.akmadnudin.com/uas/' . $filename;
		if (!empty($filename) && file_exists($filepath)) {

			//Define Headers
			header("Cache-Control: public");
			header("Content-Description: FIle Transfer");
			header("Content-Disposition: attachment; filename=$filename");
			header("Content-Type: application/zip");
			header("Content-Transfer-Emcoding: binary");

			readfile($filepath);
			exit;
		} else {
			echo "<script>
			alert ('File tidak tersedia bang, Segera Hubungi Pos Terdekat')
		</script>";
		}
	}
?>