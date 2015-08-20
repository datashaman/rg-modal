<demo-app>

	<rg-modal modal="{ modal }">
		<p>To make the modal appear or disappear simply toggle the modal's <code>visible</code> property.</p>
		<pre><code>this.modal.visible = true|false;</code></pre>
	</rg-modal>

	<rg-modal modal="{ ghostModal }">
		<p>This is like a normal modal but without a body!</p>
	</rg-modal>

	<a href="#" onclick="{ showModal }">Show modal</a> |
	<a href="#" onclick="{ showGhostModal }">Show ghost modal</a>

	<script>
		this.modal = {
			heading: 'rg-modal',
			visible: true,
			buttons: [
				{
					action: () => {
						this.modal.visible = false
					},
					text: 'Ok',
					style: 'color: white; background-color: #1fadc5; border-radius: 3px;'
				}, {
					action: () => {
						this.modal.visible = false
					},
					text: 'Cancel'
				}
			]
		}

		this.ghostModal = {
			heading: 'Ghost Modal',
			ghost: true,
			close: false,
			buttons: [
				{
					action: () => {
						this.ghostModal.visible = false
					},
					text: 'Ok',
					style: 'color: white; background-color: #1fadc5; border-radius: 3px;'
				}, {
					action: () => {
						this.ghostModal.visible = false;
					},
					text: 'Cancel'
				}
			]
		}

		this.showModal = () => this.modal.visible = true
		this.showGhostModal = () => this.ghostModal.visible = true
	</script>

</demo-app>
