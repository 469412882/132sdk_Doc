.class public Lorg/cocos2dx/lua/AppActivity;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;


# static fields
.field public static a:Z

.field private static b:[Ljava/lang/String;


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lorg/cocos2dx/lua/AppActivity;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/cocos2dx/lua/AppActivity;->c:Ljava/lang/String;

    return-void
.end method

.method private checkPermissions()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lorg/cocos2dx/lua/AppActivity;->b:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/cocos2dx/lua/AppActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cocos2dx/lua/AppActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lua/AppActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    sget-object v2, Lorg/cocos2dx/lua/AppActivity;->b:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lorg/cocos2dx/lua/AppActivity;->b:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static native nativeIsDebug()Z
.end method

.method private static native nativeIsLandScape()Z
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lorg/cocos2dx/lua/Sdk;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u9000\u51fa\u786e\u8ba4"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u8ba4\u8981\u9000\u51fa\u5e94\u7528\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lorg/cocos2dx/lua/AppActivity$2;

    invoke-direct {v2, p0}, Lorg/cocos2dx/lua/AppActivity$2;-><init>(Lorg/cocos2dx/lua/AppActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u8ba4"

    new-instance v2, Lorg/cocos2dx/lua/AppActivity$3;

    invoke-direct {v2, p0}, Lorg/cocos2dx/lua/AppActivity$3;-><init>(Lorg/cocos2dx/lua/AppActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/cocos2dx/lua/Sdk;->onBackButtonClick()V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public getHostIpAddress()Ljava/lang/String;
    .locals 3

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lua/AppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    and-int/lit16 v2, v0, 0xff

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v2, v0, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v2, v0, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNetworkConnected()Z
    .locals 5

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lua/AppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_1

    return v1

    :cond_1
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lorg/cocos2dx/lua/AppActivity;->c:Ljava/lang/String;

    const-string v4, ""

    if-ne v3, v4, :cond_2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lua/AppActivity;->c:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lorg/cocos2dx/lua/AppActivity;->c:Ljava/lang/String;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lua/AppActivity;->c:Ljava/lang/String;

    return v1

    :cond_3
    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lorg/cocos2dx/lua/Sdk;->initMainActivity(Lorg/cocos2dx/lua/AppActivity;)V

    const-class p1, Lorg/cocos2dx/lua/AppActivity;

    invoke-static {p1}, Lcom/mastersdk/android/NewMasterSDK;->a(Ljava/lang/Class;)V

    invoke-static {}, Lorg/cocos2dx/lua/AppActivity;->nativeIsLandScape()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    :goto_0
    invoke-virtual {p0, p1}, Lorg/cocos2dx/lua/AppActivity;->setRequestedOrientation(I)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x7

    goto :goto_0

    :goto_1
    invoke-static {}, Lorg/cocos2dx/lua/AppActivity;->nativeIsDebug()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/cocos2dx/lua/AppActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lorg/cocos2dx/lua/AppActivity;->isNetworkConnected()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Warning"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v0, "Please open WIFI for debuging..."

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v0, "OK"

    new-instance v1, Lorg/cocos2dx/lua/AppActivity$1;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lua/AppActivity$1;-><init>(Lorg/cocos2dx/lua/AppActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_1
    invoke-virtual {p0}, Lorg/cocos2dx/lua/AppActivity;->getHostIpAddress()Ljava/lang/String;

    :cond_2
    return-void
.end method

.method protected onPause()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mastersdk/android/NewMasterSDK;->a(Z)V

    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onPause()V

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->onPause(Landroid/content/Context;)V

    const-string v0, ""

    const-string v1, "AppActivity : onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onResume()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mastersdk/android/NewMasterSDK;->a(Z)V

    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->onResume(Landroid/content/Context;)V

    invoke-direct {p0}, Lorg/cocos2dx/lua/AppActivity;->checkPermissions()V

    const-string v0, ""

    const-string v1, "AppActivity : onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public openWeb(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lua/AppActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
