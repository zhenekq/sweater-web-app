<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
    <div>
        <div>
            <@l.logout />
        </div>
        <div>
            <form method="post">
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <input type="text" name="text" placeholder="Enter the message">
                <input type="text" name="tag" placeholder="Enter the tag">
                <button type="submit">Add new message</button>
            </form>
            <form action="/main" method="get">
                <input type="text" name="filter" value="${filter!" "}">
                <button type="submit">Find</button>
            </form>
        </div>
        <div>Message list</div>
        <#list messages as message>
        <div>
            <b>${message.id}</b>
            <span>${message.text}</span>
            <i>${message.tag}</i>
            <strong>${message.authorName}</strong>
        </div>
        <#else>
            No message
        </#list>
    </div>
</@c.page>