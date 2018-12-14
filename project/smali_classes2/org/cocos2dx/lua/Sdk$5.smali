.class Lorg/cocos2dx/lua/Sdk$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lua/Sdk$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lorg/cocos2dx/lua/Sdk;->access$3()Landroid/content/ClipboardManager;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/cocos2dx/lua/Sdk;->access$1()Lorg/cocos2dx/lua/AppActivity;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lua/AppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-static {v0}, Lorg/cocos2dx/lua/Sdk;->access$4(Landroid/content/ClipboardManager;)V

    :cond_0
    const-string v0, "simple text"

    iget-object v1, p0, Lorg/cocos2dx/lua/Sdk$5;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-static {}, Lorg/cocos2dx/lua/Sdk;->access$3()Landroid/content/ClipboardManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method
