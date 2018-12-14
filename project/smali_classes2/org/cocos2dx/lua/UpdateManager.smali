.class public Lorg/cocos2dx/lua/UpdateManager;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Lcom/mastersdk/android/u;

.field private e:Landroid/widget/ProgressBar;

.field private f:Landroid/app/Dialog;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/cocos2dx/lua/UpdateManager;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lorg/cocos2dx/lua/UpdateManager;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2dx/lua/UpdateManager;->d:Lcom/mastersdk/android/u;

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2dx/lua/UpdateManager;->g:I

    iput-object p1, p0, Lorg/cocos2dx/lua/UpdateManager;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$0(Lorg/cocos2dx/lua/UpdateManager;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lorg/cocos2dx/lua/UpdateManager;->f:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$1(Lorg/cocos2dx/lua/UpdateManager;)Lcom/mastersdk/android/u;
    .locals 0

    iget-object p0, p0, Lorg/cocos2dx/lua/UpdateManager;->d:Lcom/mastersdk/android/u;

    return-object p0
.end method

.method static synthetic access$2(Lorg/cocos2dx/lua/UpdateManager;I)V
    .locals 0

    iput p1, p0, Lorg/cocos2dx/lua/UpdateManager;->g:I

    return-void
.end method

.method static synthetic access$3(Lorg/cocos2dx/lua/UpdateManager;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lorg/cocos2dx/lua/UpdateManager;->e:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$4(Lorg/cocos2dx/lua/UpdateManager;)I
    .locals 0

    iget p0, p0, Lorg/cocos2dx/lua/UpdateManager;->g:I

    return p0
.end method

.method static synthetic access$5(Lorg/cocos2dx/lua/UpdateManager;)V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2dx/lua/UpdateManager;->downloadApk()V

    return-void
.end method

.method static synthetic access$6(Lorg/cocos2dx/lua/UpdateManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lorg/cocos2dx/lua/UpdateManager;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$7(Lorg/cocos2dx/lua/UpdateManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/cocos2dx/lua/UpdateManager;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$8(Lorg/cocos2dx/lua/UpdateManager;)V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2dx/lua/UpdateManager;->installApk()V

    return-void
.end method

.method private downloadApk()V
    .locals 5

    iget-object v0, p0, Lorg/cocos2dx/lua/UpdateManager;->c:Landroid/content/Context;

    const-string v1, "downloads"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v1, Lcom/mastersdk/android/u;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/cocos2dx/lua/UpdateManager;->b:Ljava/lang/String;

    iget-object v3, p0, Lorg/cocos2dx/lua/UpdateManager;->a:Ljava/lang/String;

    iget-object v4, p0, Lorg/cocos2dx/lua/UpdateManager;->c:Landroid/content/Context;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/mastersdk/android/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/cocos2dx/lua/UpdateManager;->d:Lcom/mastersdk/android/u;

    iget-object v0, p0, Lorg/cocos2dx/lua/UpdateManager;->d:Lcom/mastersdk/android/u;

    new-instance v1, Lorg/cocos2dx/lua/UpdateManager$2;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lua/UpdateManager$2;-><init>(Lorg/cocos2dx/lua/UpdateManager;)V

    invoke-virtual {v0, v1}, Lcom/mastersdk/android/u;->a(Lcom/mastersdk/android/x;)V

    return-void
.end method

.method private installApk()V
    .locals 3

    iget-object v0, p0, Lorg/cocos2dx/lua/UpdateManager;->c:Landroid/content/Context;

    const-string v1, "downloads"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    iget-object v2, p0, Lorg/cocos2dx/lua/UpdateManager;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/cocos2dx/lua/UpdateManager;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lorg/cocos2dx/lua/UpdateManager;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private showDownloadDialog()V
    .locals 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/cocos2dx/lua/UpdateManager;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6b63\u5728\u66f4\u65b0"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lorg/cocos2dx/lua/UpdateManager$1;

    invoke-direct {v2, p0}, Lorg/cocos2dx/lua/UpdateManager$1;-><init>(Lorg/cocos2dx/lua/UpdateManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lorg/cocos2dx/lua/UpdateManager;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/ProgressBar;

    iget-object v3, p0, Lorg/cocos2dx/lua/UpdateManager;->c:Landroid/content/Context;

    const/4 v4, 0x0

    const v5, 0x1010078

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lorg/cocos2dx/lua/UpdateManager;->e:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lorg/cocos2dx/lua/UpdateManager;->e:Landroid/widget/ProgressBar;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setId(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xd

    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0xa

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v3, 0x32

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v3, p0, Lorg/cocos2dx/lua/UpdateManager;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lua/UpdateManager;->f:Landroid/app/Dialog;

    iget-object v0, p0, Lorg/cocos2dx/lua/UpdateManager;->f:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lorg/cocos2dx/lua/UpdateManager;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lorg/cocos2dx/lua/UpdateManager;->c:Landroid/content/Context;

    iget-object v2, p0, Lorg/cocos2dx/lua/UpdateManager;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v2, p0, Lorg/cocos2dx/lua/UpdateManager;->c:Landroid/content/Context;

    const-string v3, "downloads"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/cocos2dx/lua/UpdateManager;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/cocos2dx/lua/UpdateManager;->b:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/cocos2dx/lua/UpdateManager;->installApk()V

    return-void

    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/cocos2dx/lua/UpdateManager;->downloadApk()V

    return-void
.end method


# virtual methods
.method public beginDownLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lua/UpdateManager;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/cocos2dx/lua/UpdateManager;->b:Ljava/lang/String;

    invoke-direct {p0}, Lorg/cocos2dx/lua/UpdateManager;->showDownloadDialog()V

    return-void
.end method
