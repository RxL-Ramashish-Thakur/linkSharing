package project

import grails.testing.web.controllers.ControllerUnitTest
import spock.lang.Specification

class TagLibImpControllerSpec extends Specification implements ControllerUnitTest<TagLibImpController> {

     void "test index action"() {
        when:
        controller.index()

        then:
        status == 200

     }
}
