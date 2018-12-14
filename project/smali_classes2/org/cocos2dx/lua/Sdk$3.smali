.class Lorg/cocos2dx/lua/Sdk$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lua/Sdk$3;->a:Ljava/lang/String;

    iput p2, p0, Lorg/cocos2dx/lua/Sdk$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/cocos2dx/lua/Sdk$3;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {}, Lorg/cocos2dx/lua/Sdk;->access$1()Lorg/cocos2dx/lua/AppActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lua/AppActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget v0, p0, Lorg/cocos2dx/lua/Sdk$3;->b:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/cocos2dx/lua/Sdk;->access$1()Lorg/cocos2dx/lua/AppActivity;

    move-result-object v0

    const-string v2, "\u65e0\u6cd5\u8df3\u8f6c\u5230\u5fae\u4fe1\uff0c\u8bf7\u68c0\u67e5\u60a8\u662f\u5426\u5b89\u88c5\u4e86\u5fae\u4fe1\uff01"

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget v0, p0, Lorg/cocos2dx/lua/Sdk$3;->b:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-static {}, Lorg/cocos2dx/lua/Sdk;->access$1()Lorg/cocos2dx/lua/AppActivity;

    move-result-object v0

    const-string v2, "\u65e0\u6cd5\u8df3\u8f6c\u5230QQ\uff0c\u8bf7\u68c0\u67e5\u60a8\u662f\u5426\u5b89\u88c5\u4e86QQ\uff01"

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/cocos2dx/lua/Sdk$3;->b:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-static {}, Lorg/cocos2dx/lua/Sdk;->access$1()Lorg/cocos2dx/lua/AppActivity;

    move-result-object v0

    const-string v2, "\u65e0\u6cd5\u8df3\u8f6c\u5230\u652f\u4ed8\u5b9d\uff0c\u8bf7\u68c0\u67e5\u60a8\u662f\u5426\u5b89\u88c5\u4e86\u652f\u4ed8\u5b9d\uff01"

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/cocos2dx/lua/Sdk;->access$1()Lorg/cocos2dx/lua/AppActivity;

    move-result-object v0

    const-string v2, "\u65e0\u6cd5\u8df3\u8f6c\u5230\u7b2c\u4e09\u65b9\u5e94\u7528\uff0c\u8bf7\u68c0\u67e5\u60a8\u662f\u5426\u5b89\u88c5\u4e86\u5bf9\u5e94\u7b2c\u4e09\u65b9\u5e94\u7528\uff01"

    goto :goto_0
.end method
