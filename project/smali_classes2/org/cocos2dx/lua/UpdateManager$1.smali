.class Lorg/cocos2dx/lua/UpdateManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lorg/cocos2dx/lua/UpdateManager;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lua/UpdateManager;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lua/UpdateManager$1;->a:Lorg/cocos2dx/lua/UpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lorg/cocos2dx/lua/UpdateManager$1;->a:Lorg/cocos2dx/lua/UpdateManager;

    invoke-static {p1}, Lorg/cocos2dx/lua/UpdateManager;->access$0(Lorg/cocos2dx/lua/UpdateManager;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lorg/cocos2dx/lua/UpdateManager$1;->a:Lorg/cocos2dx/lua/UpdateManager;

    invoke-static {p1}, Lorg/cocos2dx/lua/UpdateManager;->access$1(Lorg/cocos2dx/lua/UpdateManager;)Lcom/mastersdk/android/u;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mastersdk/android/u;->a()V

    return-void
.end method
