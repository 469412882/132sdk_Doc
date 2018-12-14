.class Lorg/cocos2dx/lua/AppActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lorg/cocos2dx/lua/AppActivity;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lua/AppActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lua/AppActivity$3;->a:Lorg/cocos2dx/lua/AppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {}, Lorg/cocos2dx/lua/Sdk;->onBackButtonClick()V

    iget-object p1, p0, Lorg/cocos2dx/lua/AppActivity$3;->a:Lorg/cocos2dx/lua/AppActivity;

    invoke-virtual {p1}, Lorg/cocos2dx/lua/AppActivity;->finish()V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method
