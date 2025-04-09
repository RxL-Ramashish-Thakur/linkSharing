package project


class TagLibImpController {

    def index() {
      render("THis is taglib controller and output without gsp")
    }
    def action(){
        def fruitList = ['Apple', 'Banana', 'Cherry', 'Date']
        render(view:'file1',model: [fruitList: fruitList])
    }
}