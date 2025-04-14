package project

import grails.testing.services.ServiceUnitTest
import spock.lang.Specification

class SaveUserServiceSpec extends Specification implements ServiceUnitTest<SaveUserService> {

     void "test something"() {
        expect:
        service.doSomething()
     }
}
