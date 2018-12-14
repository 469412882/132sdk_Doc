.class Lorg/cocos2dx/lua/UpdateManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mastersdk/android/x;


# instance fields
.field private synthetic a:Lorg/cocos2dx/lua/UpdateManager;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lua/UpdateManager;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lua/UpdateManager$2;->a:Lorg/cocos2dx/lua/UpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadEnd()V
    .locals 3

    iget-object v0, p0, Lorg/cocos2dx/lua/UpdateManager$2;->a:Lorg/cocos2dx/lua/UpdateManager;

    invoke-static {v0}, Lorg/cocos2dx/lua/UpdateManager;->access$6(Lorg/cocos2dx/lua/UpdateManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/lua/UpdateManager$2;->a:Lorg/cocos2dx/lua/UpdateManager;

    invoke-static {v1}, Lorg/cocos2dx/lua/UpdateManager;->access$7(Lorg/cocos2dx/lua/UpdateManager;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/lua/UpdateManager$2;->a:Lorg/cocos2dx/lua/UpdateManager;

    invoke-static {v1}, Lorg/cocos2dx/lua/UpdateManager;->access$7(Lorg/cocos2dx/lua/UpdateManager;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lorg/cocos2dx/lua/UpdateManager$2;->a:Lorg/cocos2dx/lua/UpdateManager;

    invoke-static {v0}, Lorg/cocos2dx/lua/UpdateManager;->access$8(Lorg/cocos2dx/lua/UpdateManager;)V

    return-void
.end method

.method public downloadError()V
    .locals 1

    iget-object v0, p0, Lorg/cocos2dx/lua/UpdateManager$2;->a:Lorg/cocos2dx/lua/UpdateManager;

    invoke-static {v0}, Lorg/cocos2dx/lua/UpdateManager;->access$5(Lorg/cocos2dx/lua/UpdateManager;)V

    return-void
.end method

.method public downloadProgress(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lua/UpdateManager$2;->a:Lorg/cocos2dx/lua/UpdateManager;

    invoke-static {v0}, Lorg/cocos2dx/lua/UpdateManager;->access$4(Lorg/cocos2dx/lua/UpdateManager;)I

    move-result v0

    if-lez v0, :cond_0

    mul-int/lit8 p1, p1, 0x64

    iget-object v0, p0, Lorg/cocos2dx/lua/UpdateManager$2;->a:Lorg/cocos2dx/lua/UpdateManager;

    invoke-static {v0}, Lorg/cocos2dx/lua/UpdateManager;->access$4(Lorg/cocos2dx/lua/UpdateManager;)I

    move-result v0

    div-int/2addr p1, v0

    iget-object v0, p0, Lorg/cocos2dx/lua/UpdateManager$2;->a:Lorg/cocos2dx/lua/UpdateManager;

    invoke-static {v0}, Lorg/cocos2dx/lua/UpdateManager;->access$3(Lorg/cocos2dx/lua/UpdateManager;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public downloadStart(I)V
    .locals 1

    if-lez p1, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lua/UpdateManager$2;->a:Lorg/cocos2dx/lua/UpdateManager;

    invoke-static {v0, p1}, Lorg/cocos2dx/lua/UpdateManager;->access$2(Lorg/cocos2dx/lua/UpdateManager;I)V

    iget-object p1, p0, Lorg/cocos2dx/lua/UpdateManager$2;->a:Lorg/cocos2dx/lua/UpdateManager;

    invoke-static {p1}, Lorg/cocos2dx/lua/UpdateManager;->access$3(Lorg/cocos2dx/lua/UpdateManager;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/cocos2dx/lua/UpdateManager$2;->a:Lorg/cocos2dx/lua/UpdateManager;

    invoke-static {p1}, Lorg/cocos2dx/lua/UpdateManager;->access$3(Lorg/cocos2dx/lua/UpdateManager;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    :cond_0
    return-void
.end method
