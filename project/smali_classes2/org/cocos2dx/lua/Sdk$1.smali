.class Lorg/cocos2dx/lua/Sdk$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lorg/cocos2dx/lua/Sdk;->access$0()I

    move-result v0

    const-string v1, "success"

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxLuaJavaBridge;->callLuaFunctionWithString(ILjava/lang/String;)I

    return-void
.end method
