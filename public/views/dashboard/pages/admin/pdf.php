<iframe id="output" width="100%" height="600px" frameborder="0"></iframe>
<script type="text/javascript" src="<?= BaseAssets ?>js/jspdf.min.js"></script>
<script>
	var doc = new jsPDF();
	doc.text(20, 20, 'Hello world!');
	doc.text(20, 30, 'This is client-side Javascript, pumping out a PDF.');

	document.getElementById('output').src = doc.output('datauristring');
</script>