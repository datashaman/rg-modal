riot.tag('demo-app', '<rg-modal heading="{ modal.heading }" buttons="{ modal.buttons }" onclose="{ modal.onclose }" show="{ modal.visible }"> Modal body text </rg-modal> <button type="button" onclick="{ showModal }">Show modal</button>', function(opts) {
		var _this = this;
		_this.modal = {
			heading: 'Modal heading',
			visible: false,
			buttons: [
				{ action: buttonClicked, text: 'Save' },
				{ action: closeModal, text: 'Cancel', style: 'color: cornflowerblue;' }
			],
			onclose: closeModal
		};

		_this.showModal = function () {
			_this.modal.visible = true;
			_this.update();
		}

		function closeModal() {
			_this.modal.visible = false;
			_this.update();
		}

		function buttonClicked(e) {
			alert('Button clicked');
			console.log(e);
		}
	
});