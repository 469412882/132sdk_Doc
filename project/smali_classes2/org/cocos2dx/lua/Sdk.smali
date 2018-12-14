.class public Lorg/cocos2dx/lua/Sdk;
.super Landroid/app/Activity;


# static fields
.field public static a:I = 0x1

.field private static b:Lorg/cocos2dx/lua/AppActivity; = null

.field private static c:I = -0x1

.field private static d:Landroid/content/ClipboardManager;

.field private static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2dx/lua/Sdk;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static DownLoadApk(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lorg/cocos2dx/lua/AppActivity;->a:Z

    sget-object v0, Lorg/cocos2dx/lua/Sdk;->b:Lorg/cocos2dx/lua/AppActivity;

    new-instance v1, Lorg/cocos2dx/lua/Sdk$6;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lua/Sdk$6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lua/AppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$0()I
    .locals 1

    sget v0, Lorg/cocos2dx/lua/Sdk;->c:I

    return v0
.end method

.method static synthetic access$1()Lorg/cocos2dx/lua/AppActivity;
    .locals 1

    sget-object v0, Lorg/cocos2dx/lua/Sdk;->b:Lorg/cocos2dx/lua/AppActivity;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/cocos2dx/lua/Sdk;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3()Landroid/content/ClipboardManager;
    .locals 1

    sget-object v0, Lorg/cocos2dx/lua/Sdk;->d:Landroid/content/ClipboardManager;

    return-object v0
.end method

.method static synthetic access$4(Landroid/content/ClipboardManager;)V
    .locals 0

    sput-object p0, Lorg/cocos2dx/lua/Sdk;->d:Landroid/content/ClipboardManager;

    return-void
.end method

.method public static closeApp()V
    .locals 1

    sget-object v0, Lorg/cocos2dx/lua/Sdk;->b:Lorg/cocos2dx/lua/AppActivity;

    invoke-virtual {v0}, Lorg/cocos2dx/lua/AppActivity;->finish()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static copyToClip(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/cocos2dx/lua/Sdk;->b:Lorg/cocos2dx/lua/AppActivity;

    new-instance v1, Lorg/cocos2dx/lua/Sdk$5;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lua/Sdk$5;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lua/AppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static downLoadNewVersion(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/cocos2dx/lua/Sdk;->b:Lorg/cocos2dx/lua/AppActivity;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lua/AppActivity;->openWeb(Ljava/lang/String;)V

    return-void
.end method

.method public static getAppChannel()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    sget-object v1, Lorg/cocos2dx/lua/Sdk;->b:Lorg/cocos2dx/lua/AppActivity;

    invoke-virtual {v1}, Lorg/cocos2dx/lua/AppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lorg/cocos2dx/lua/Sdk;->b:Lorg/cocos2dx/lua/AppActivity;

    invoke-virtual {v2}, Lorg/cocos2dx/lua/AppActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/cocos2dx/lua/Sdk;->b:Lorg/cocos2dx/lua/AppActivity;

    invoke-virtual {v3}, Lorg/cocos2dx/lua/AppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "APP_CHANNEL"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-object v0
.end method

.method public static getAppPackageName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/cocos2dx/lua/Sdk;->b:Lorg/cocos2dx/lua/AppActivity;

    invoke-virtual {v0}, Lorg/cocos2dx/lua/AppActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 3

    sget-object v0, Lorg/cocos2dx/lua/Sdk;->b:Lorg/cocos2dx/lua/AppActivity;

    invoke-virtual {v0}, Lorg/cocos2dx/lua/AppActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/cocos2dx/lua/Sdk;->b:Lorg/cocos2dx/lua/AppActivity;

    invoke-virtual {v1}, Lorg/cocos2dx/lua/AppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeveiceId()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeveiceType()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getHostIp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/cocos2dx/lua/Sdk;->b:Lorg/cocos2dx/lua/AppActivity;

    invoke-virtual {v0}, Lorg/cocos2dx/lua/AppActivity;->getHostIpAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getURLResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v2, "GET"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, "neterror"

    :cond_0
    :goto_1
    if-eqz p0, :cond_4

    :goto_2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :cond_1
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_8

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object p0, v1

    goto :goto_8

    :catch_5
    move-exception v0

    move-object p0, v1

    :goto_3
    :try_start_5
    const-string v2, "neterror"

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_4

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, "neterror"

    goto :goto_5

    :cond_2
    :goto_4
    move-object v0, v2

    :goto_5
    if-eqz p0, :cond_4

    goto :goto_2

    :catch_7
    move-exception v0

    move-object p0, v1

    :goto_6
    :try_start_7
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    const-string v0, "neterror"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v1, :cond_3

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_7

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, "neterror"

    :cond_3
    :goto_7
    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    return-object v0

    :catchall_2
    move-exception v0

    :goto_8
    if-eqz v1, :cond_5

    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_9
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw v0
.end method

.method public static initMainActivity(Lorg/cocos2dx/lua/AppActivity;)V
    .locals 0

    sput-object p0, Lorg/cocos2dx/lua/Sdk;->b:Lorg/cocos2dx/lua/AppActivity;

    return-void
.end method

.method public static onBackButtonClick()V
    .locals 2

    sget-object v0, Lorg/cocos2dx/lua/Sdk;->b:Lorg/cocos2dx/lua/AppActivity;

    new-instance v1, Lorg/cocos2dx/lua/Sdk$1;

    invoke-direct {v1}, Lorg/cocos2dx/lua/Sdk$1;-><init>()V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lua/AppActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static openWeixinOrAlipay(Ljava/lang/String;I)V
    .locals 2

    sget-object v0, Lorg/cocos2dx/lua/Sdk;->b:Lorg/cocos2dx/lua/AppActivity;

    new-instance v1, Lorg/cocos2dx/lua/Sdk$3;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lua/Sdk$3;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lua/AppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static pingWeb(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ping -c 4 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/String;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const-string v2, "avg"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "/"

    const/16 v2, 0x14

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "."

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5ef6\u8fdf:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static regBackFunction(I)V
    .locals 0

    sput p0, Lorg/cocos2dx/lua/Sdk;->c:I

    return-void
.end method

.method public static saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x50

    invoke-virtual {p1, p2, v1, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    sget-object p1, Lorg/cocos2dx/lua/Sdk;->b:Lorg/cocos2dx/lua/AppActivity;

    invoke-virtual {p1, p0}, Lorg/cocos2dx/lua/AppActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-void
.end method

.method public static saveQRImage(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    sget-object v0, Lorg/cocos2dx/lua/Sdk;->b:Lorg/cocos2dx/lua/AppActivity;

    new-instance v7, Lorg/cocos2dx/lua/Sdk$2;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/cocos2dx/lua/Sdk$2;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lorg/cocos2dx/lua/AppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static screenShot(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/cocos2dx/lua/Sdk;->b:Lorg/cocos2dx/lua/AppActivity;

    new-instance v1, Lorg/cocos2dx/lua/Sdk$4;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lua/Sdk$4;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lua/AppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setCurrentUiCount(I)V
    .locals 0

    sput p0, Lorg/cocos2dx/lua/Sdk;->a:I

    return-void
.end method

.method public static vibrate(I)V
    .locals 3

    invoke-static {}, Lorg/cocos2dx/lua/AppActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lorg/cocos2dx/lua/AppActivity;->getContext()Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method
