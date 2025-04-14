package project


class SubscriptionController {

    def display(){
        if (!session.user) {
            redirect(action: 'login')
            return
        }
        render(view:'subscription')
    }
}