riot.tag('rg-modal', '<div class="overlay" if="{ opts.modal.visible }" onclick="{ close }"></div> <div class="modal" if="{ opts.modal.visible }"> <header class="header"> <button type="button" class="close" aria-label="Close" onclick="{ close }"> <span aria-hidden="true">&times;</span> </button> <h3 class="heading">{ opts.modal.heading }</h3> </header> <div class="body"> <yield></yield> </div> <footer class="footer"> <button class="button" each="{ opts.modal.buttons }" type="button" onclick="{ action }" riot-style="{ style }"> { text } </button> </footer> </div>', 'rg-modal .overlay { position: fixed; width: 100%; height: 100%; top: 0; right: 0; bottom: 0; left: 0; background-color: rgba(0, 0, 0, 0.5); z-index: 100; } rg-modal .modal { position: fixed; width: 95%; max-width: 420px; top: 50%; left: 50%; -webkit-transform: translate3d(-50%, -75%, 0); -moz-transform: translate3d(-50%, -75%, 0); -ms-transform: translate3d(-50%, -75%, 0); -o-transform: translate3d(-50%, -75%, 0); transform: translate3d(-50%, -75%, 0); background-color: white; color: #252519; z-index: 101; } rg-modal .header { position: relative; text-align: center; } rg-modal .heading { padding: 20px 20px 0 20px; margin: 0; font-size: 18px; } rg-modal .close { position: absolute; top: 5px; right: 5px; padding: 0; height: 20px; width: 20px; line-height: 20px; font-size: 20px; border: 0; background-color: transparent; color: #ef424d; cursor: pointer; outline: none; } rg-modal .body { padding: 20px; } rg-modal .footer { padding: 0 20px 20px 20px; } rg-modal .footer .button { padding: 10px; margin: 0 5px 0 0; border: none; text-transform: uppercase; cursor: pointer; outline: none; background-color: white; }', function (opts) {
	var _this = this;
	_this.close = function (e) {
		opts.modal.visible = false;
		if (opts.modal.onclose) {
			opts.modal.onclose(e);
		}
	};
	
});
