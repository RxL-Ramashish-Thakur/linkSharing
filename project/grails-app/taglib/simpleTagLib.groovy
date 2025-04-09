class SimpleTagLib {

    def emoticon = { attrs, body ->
        def  l=attrs.list
        /*out << body() << (attrs.happy == 'true' ? " :-)" : " :-(")*/
        out<<body()<<"THis is content from taglib"
        out<<body()<<"<h1>Number: ${l.each {it}}</h1>"

    }
    def fruit={attrs,body ->
        def listFruit=attrs.list
        out<<body()<<"<li>Fruit name : ${listFruit.each{it}}"

    }
}