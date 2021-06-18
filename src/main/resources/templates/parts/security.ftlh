<#assign
known = Session.SPRING_SECURITY_CONTEXT??
>

<#if known>
    <#assign
        user = Session.SPRING_SECURITY_CONTEXT.authentication.principal
        id = user.getId()
        name = user.getUsername()
        isAdmin = user.isAdmin()
        currentUserId = user.getId()
    >
    <#else>
        <#assign
            name = "unknown"
            isAdmin = false
            currentUserId = -1
            id = 0
        >

</#if>