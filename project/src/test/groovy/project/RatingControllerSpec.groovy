package project

import grails.testing.web.controllers.ControllerUnitTest
import spock.lang.Specification

class RatingControllerSpec extends Specification implements ControllerUnitTest<RatingController> {

     void "test index action"() {
        when:
        controller.index()

        then:
        status == 200

     }
}
