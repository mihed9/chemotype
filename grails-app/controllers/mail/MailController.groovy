package mail

import grails.plugin.mail.MailService
import org.springframework.beans.factory.annotation.Autowired

class MailController {

    @Autowired
    MailService mailService

    def sendMail() {
        def fullName = params?.name
        def phone = params?.phone
        def email = params?.email
        def message = params?.message

        mailService.sendMail {
            to "buzukag@gmail.com"
            from email
            cc "koldunm@gmail.com"
            subject "Message from chem database"
            body (view: '/mail/mail', model: [
                    fullName: fullName,
                    phone: phone,
                    email: email,
                    message: message])
        }
        render view: "/navigation/contact"
    }
}