package project

class UrlMappings {
    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/home")
        "/dashboard"(view:"/dashboard")
        "/topShow"(view:"/topShow")
        "/search"(view:"/search")
        "/userProfile"(view:"/userProfile")
        "/editProfile"(view:"/editProfile")
        "500"(view:'/error')
        "404"(view:'/notFound')

    }
}
