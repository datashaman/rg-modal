<rg-modal>

	<div class="overlay { expanded: opts.modal.visible }" onclick="{ close }"></div>
	<div class="modal" if="{ opts.modal.visible }">
		<header class="header">
			<button type="button" class="close" aria-label="Close" onclick="{ close }">
				<span aria-hidden="true">&times;</span>
			</button>
			<h3 class="heading">{ opts.modal.heading }</h3>
		</header>

		<div class="body">
			<yield/>
		</div>

		<footer class="footer">
			<button class="button" each="{ opts.modal.buttons }" type="button" onclick="{ action }" style="{ style }">
				{ text }
			</button>
		</footer>
	</div>

	<script>
		var _this = this;
		_this.close = function (e) {
			opts.modal.visible = false;
			if (opts.modal.onclose) {
				opts.modal.onclose(e);
			}
		};
	</script>

	<style scoped>

		.overlay {
			position: fixed;
			top: 0;
			left: -100%;
			right: 0;
			bottom: 0;
			width: 100%;
			height: 100%;
			background-color: transparent;
			cursor: pointer;
			-webkit-transition: background-color 0.8s ease, left 0s 0.8s;
			-moz-transition: background-color 0.8s ease, left 0s 0.8s;
			-ms-transition: background-color 0.8s ease, left 0s 0.8s;
			-o-transition: background-color 0.8s ease, left 0s 0.8s;
			transition: background-color 0.8s ease, left 0s 0.8s;
			z-index: 50;
		}

		.overlay.expanded {
			left: 0;
			background-color: rgba(0, 0, 0, 0.5);
			-webkit-transition: background-color 0.8s ease, left 0s;
			-moz-transition: background-color 0.8s ease, left 0s;
			-ms-transition: background-color 0.8s ease, left 0s;
			-o-transition: background-color 0.8s ease, left 0s;
			transition: background-color 0.8s ease, left 0s;
		}

		.modal {
			position: fixed;
			width: 95%;
			max-width: 420px;
			top: 50%;
			left: 50%;
			-webkit-transform: translate3d(-50%, -75%, 0);
			-moz-transform: translate3d(-50%, -75%, 0);
			-ms-transform: translate3d(-50%, -75%, 0);
			-o-transform: translate3d(-50%, -75%, 0);
			transform: translate3d(-50%, -75%, 0);
			background-color: white;
			color: #252519;
			z-index: 101;
		}

		.header {
			position: relative;
			text-align: center;
		}

		.heading {
			padding: 20px 20px 0 20px;
			margin: 0;
			font-size: 18px;
		}

		.close {
			position: absolute;
			top: 5px;
			right: 5px;
			padding: 0;
			height: 20px;
			width: 20px;
			line-height: 20px;
			font-size: 20px;
			border: 0;
			background-color: transparent;
			color: #ef424d;
			cursor: pointer;
			outline: none;
		}

		.body {
			padding: 20px;
		}

		.footer {
			padding: 0 20px 20px 20px;
		}

		.footer .button {
			padding: 10px;
			margin: 0 5px 0 0;
			border: none;
			text-transform: uppercase;
			cursor: pointer;
			outline: none;
			background-color: white;
		}
	</style>

</rg-modal>
