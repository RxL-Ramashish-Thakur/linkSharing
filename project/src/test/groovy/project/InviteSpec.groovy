package project

import grails.testing.gorm.DomainUnitTest
import spock.lang.Specification

class InviteSpec extends Specification implements DomainUnitTest<Invite> {

     void "test domain constraints"() {
        when:
        Invite domain = new Invite()
        //TODO: Set domain props here

        then:
        domain.validate()
     }
}
