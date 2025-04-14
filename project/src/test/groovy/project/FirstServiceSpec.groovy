package project

import grails.testing.services.ServiceUnitTest
import spock.lang.Specification

class FirstServiceSpec extends Specification implements ServiceUnitTest<FirstService> {

     void "test something"() {
        expect:
        service.doSomething()
     }
}
