package project

import grails.testing.gorm.DomainUnitTest
import spock.lang.Specification

class RatingSpec extends Specification implements DomainUnitTest<Rating> {

     void "test domain constraints"() {
        when:
        Rating domain = new Rating()
        //TODO: Set domain props here

        then:
        domain.validate()
     }
}
