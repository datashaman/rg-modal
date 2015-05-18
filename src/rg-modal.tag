<rg-modal>

	<style scoped>
		:scope {
			font-family: Helvetica Neue, Helvetica, Arial;
			color: #252519;
			position: absolute;
			width: 400px;
			top: 50%;
			left: 50%;
			transform: translate3d(-50%, -75%, 0);
			z-index: 100;
		}

		.container {
			background-color: white;
			border: 1px solid #DDDDDD;
		}

		header {
			position: relative;
			text-align: center;
		}

		header h3 {
			padding: 20px 20px 0 20px;
			margin: 0;
			font-weight: normal;
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

		footer {
			padding: 0 20px 20px 20px;
		}

		footer button {
			padding: 10px;
			margin: 0 5px 0 0;
			border: none;
			text-transform: uppercase;
			cursor: pointer;
			outline: none;
			background-color: white;
		}

		footer button:first-child {
			background-color: cornflowerblue;
			color: white;
		}
	</style>

	<div class="container" if="{ opts.modal.visible }">
		<header>
			<button type="button" class="close" aria-label="Close" onclick="{ close }">
				<span aria-hidden="true">&times;</span>
			</button>
			<h3>{ opts.modal.heading }</h3>
		</header>

		<div class="body">
			<yield/>
		</div>

		<footer>
			<button each="{ opts.modal.buttons }" type="button" onclick="{ action }" style="{ style }">
				{ text }
			</button>
		</footer>
	</div>

	<script>
		var _this = this;
		_this.close = function (e) {
			opts.modal.visible = false;
			opts.modal.onclose(e);
		};
	</script>

</rg-modal>
