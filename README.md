# RiotGear

## rg-modal - a modal component

<img src="https://raw.githubusercontent.com/RiotGear/rg-modal/master/demo/img/example.png" width="500px" />

### Use

Add this to your Riot app markup

	<rg-modal modal="{ modal }">
		Modal body text
	</rg-modal>

and add this to your JavaScript

	this.modal = {
		heading: 'Modal heading',
		visible: false,
		buttons: [
			{ action: function () {}, text: 'Save' },
			{ action: function () {}, text: 'Cancel', style: 'color: cornflowerblue;' }
		],
		onclose: function (e) {}
	};

To make the modal appear simply set the modal's `visible` property to true.

	this.modal.visible = true;
	
