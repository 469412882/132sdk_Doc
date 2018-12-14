.class Lorg/cocos2dx/lua/Sdk$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lua/Sdk$6;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/cocos2dx/lua/Sdk$6;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lorg/cocos2dx/lua/UpdateManager;

    invoke-static {}, Lorg/cocos2dx/lua/Sdk;->access$1()Lorg/cocos2dx/lua/AppActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2dx/lua/UpdateManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lorg/cocos2dx/lua/Sdk$6;->a:Ljava/lang/String;

    iget-object v2, p0, Lorg/cocos2dx/lua/Sdk$6;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/cocos2dx/lua/UpdateManager;->beginDownLoad(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
