package project

import grails.testing.web.controllers.ControllerUnitTest
import spock.lang.Specification

class ReadingItemControllerSpec extends Specification implements ControllerUnitTest<ReadingItemController> {

     void "test index action"() {
        when:
        controller.index()

        then:
        status == 200

     }
}
