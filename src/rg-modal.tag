    <rg-modal>

        <header>
        <button type="button" class="close" aria-label="Close" onclick={ close }>
        <span aria-hidden="true">&times;</span>
        </button>
        <h3>{ opts.title }</h3>
        </header>
        <div class="body">
        <yield/>
        </div>
        <footer>
        <button each={ opts.buttons } type={ type } onclick={ action }>
        { text }
        </button>
        </footer>


        close = () => {
        alert('you clicked close!')
        }


        </rg-modal>