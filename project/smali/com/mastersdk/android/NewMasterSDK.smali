.class public Lcom/mastersdk/android/NewMasterSDK;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/Class; = null

.field private static b:Ljava/lang/Class; = null

.field private static c:Ljava/util/ArrayList; = null

.field private static d:Landroid/content/Context; = null

.field private static e:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mastersdk/android/NewMasterSDK;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/mastersdk/android/NewMasterSDK;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public static a(Ljava/lang/Class;)V
    .locals 0

    sput-object p0, Lcom/mastersdk/android/NewMasterSDK;->b:Ljava/lang/Class;

    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/mastersdk/android/NewMasterSDK;->e:Z

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lcom/mastersdk/android/NewMasterSDK;->e:Z

    return v0
.end method

.method public static c()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/mastersdk/android/NewMasterSDK;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static d()Ljava/lang/Class;
    .locals 2

    sget-object v0, Lcom/mastersdk/android/NewMasterSDK;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "NewMasterSDK not init yet!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/mastersdk/android/NewMasterSDK;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public static e()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/mastersdk/android/NewMasterSDK;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static init(Ljava/lang/Class;Ljava/util/ArrayList;Landroid/app/Application;)V
    .locals 0

    sput-object p0, Lcom/mastersdk/android/NewMasterSDK;->a:Ljava/lang/Class;

    sput-object p1, Lcom/mastersdk/android/NewMasterSDK;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/mastersdk/android/NewMasterSDK;->d:Landroid/content/Context;

    invoke-static {p2}, Lcn/jpush/android/api/JPushInterface;->init(Landroid/content/Context;)V

    sget-object p0, Lcom/mastersdk/android/NewMasterSDK;->d:Landroid/content/Context;

    const-string p1, "b556dd99fd"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
