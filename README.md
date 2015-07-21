<img src="https://raw.githubusercontent.com/RiotGear/rg-modal/master/demo/img/example.png" width="500px" />

## Use

Add this to your Riot app markup

```html
<rg-modal modal="{ modal }">
	Modal body text
</rg-modal>
```

and add this to your JavaScript

```javascript
this.modal = {
	heading: 'Modal heading',
	visible: false,
	ghost: true,
	close: false,
	buttons: [
		{ action: function () {}, text: 'Save' },
		{ action: function () {}, text: 'Cancel', style: 'color: cornflowerblue;' }
	],
	onclose: function (e) {}
};
```

To make the modal appear simply set the modal's `visible` property to true.

```javascript
this.modal.visible = true;
```

- `ghost` set this to true if you want a body-less modal
- `close` if set to false the small 'x' close button will be hidden