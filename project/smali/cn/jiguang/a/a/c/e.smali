.class public final Lcn/jiguang/a/a/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static b:Lcn/jiguang/a/a/c/e; = null

.field private static c:I = 0x100000


# instance fields
.field public a:Z

.field private d:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/jiguang/a/a/c/e;

    invoke-direct {v0}, Lcn/jiguang/a/a/c/e;-><init>()V

    sput-object v0, Lcn/jiguang/a/a/c/e;->b:Lcn/jiguang/a/a/c/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jiguang/a/a/c/e;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jiguang/a/a/c/e;->a:Z

    invoke-static {}, Lcn/jiguang/d/a/d;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcn/jiguang/a/a/c/e;->a:Z

    return-void
.end method

.method static synthetic a(Lcn/jiguang/a/a/c/e;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcn/jiguang/a/a/c/e;->e:Landroid/content/Context;

    return-object p0
.end method

.method public static a()Lcn/jiguang/a/a/c/e;
    .locals 1

    sget-object v0, Lcn/jiguang/a/a/c/e;->b:Lcn/jiguang/a/a/c/e;

    return-object v0
.end method

.method private static a(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    array-length v0, p1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    aget-object v1, p1, v0

    const-string v2, "Exception"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    aget-object v1, p1, v0

    const-string v2, "Error"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    aget-object p1, p1, v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p1

    :catch_0
    :cond_2
    return-object p0
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONArray;Ljava/lang/Throwable;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 15

    move-object v0, p0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object/from16 v3, p3

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez p2, :cond_0

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    :goto_0
    :try_start_0
    invoke-static {}, Lcn/jiguang/d/a/a;->u()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v9

    const/4 v10, 0x1

    if-ge v7, v9, :cond_2

    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_1

    const-string v9, "stacktrace"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v6, "count"

    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v10

    const-string v9, "count"

    invoke-virtual {v8, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "crashtime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const/4 v9, 0x0

    add-long v13, v11, v4

    invoke-virtual {v8, v6, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move v6, v7

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v8, :cond_3

    invoke-static {v2, v6}, Lcn/jiguang/a/a/c/e;->a(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-object v2, v1

    return-object v2

    :cond_3
    :try_start_2
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "crashtime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v11, 0x0

    add-long v11, v8, v4

    invoke-virtual {v6, v7, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "stacktrace"

    invoke-virtual {v6, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "message"

    invoke-static/range {p3 .. p4}, Lcn/jiguang/a/a/c/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "count"

    invoke-virtual {v6, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, v0, Lcn/jiguang/a/a/c/e;->e:Landroid/content/Context;

    if-nez v1, :cond_4

    if-eqz p1, :cond_5

    :cond_4
    const-string v3, "networktype"

    invoke-static/range {p1 .. p1}, Lcn/jiguang/g/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    iget-object v1, v0, Lcn/jiguang/a/a/c/e;->e:Landroid/content/Context;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcn/jiguang/a/a/c/e;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v3, v0, Lcn/jiguang/a/a/c/e;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v3, :cond_6

    const-string v3, "null"

    goto :goto_3

    :cond_6
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "versionname"

    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "versioncode"

    invoke-virtual {v6, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-object v2
.end method

.method private static a(Lorg/json/JSONArray;I)Lorg/json/JSONArray;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-eq v1, p1, :cond_1

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "crash_log"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcn/jiguang/a/a/c/e;->b:Lcn/jiguang/a/a/c/e;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcn/jiguang/d/a/d;->e(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcn/jiguang/a/a/c/e;->e(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p0, p1}, Lcn/jiguang/d/d/q;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    invoke-static {p0}, Lcn/jiguang/a/a/c/e;->d(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 2

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "jpush_uncaughtexception_file"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "jpush_uncaughtexception_file"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method public static e(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 3

    invoke-static {p0}, Lcn/jiguang/a/a/c/e;->f(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "crashlogs"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "network_type"

    invoke-static {p0}, Lcn/jiguang/g/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "crash_log"

    invoke-static {p0, v1, v0}, Lcn/jiguang/d/d/q;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    invoke-static {p0}, Lcn/jiguang/a/a/c/b;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "device_info"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v1
.end method

.method private static f(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 6

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "jpush_uncaughtexception_file"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "jpush_uncaughtexception_file"

    invoke-virtual {p0, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x400

    :try_start_1
    new-array v0, v0, [B

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v0

    :cond_2
    if-eqz p0, :cond_3

    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v1

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v1

    goto :goto_2

    :catch_2
    move-exception v0

    move-object p0, v1

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_3

    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    return-object v1

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz p0, :cond_4

    :try_start_5
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_3
    throw v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/a/a/c/e;->e:Landroid/content/Context;

    iget-object p1, p0, Lcn/jiguang/a/a/c/e;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Lcn/jiguang/a/a/c/e;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    :cond_0
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcn/jiguang/a/a/c/e;->e:Landroid/content/Context;

    iget-boolean v0, p0, Lcn/jiguang/a/a/c/e;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jiguang/a/a/c/e;->a:Z

    invoke-static {p1, v0}, Lcn/jiguang/d/a/d;->a(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcn/jiguang/a/a/c/e;->e:Landroid/content/Context;

    iget-boolean v0, p0, Lcn/jiguang/a/a/c/e;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jiguang/a/a/c/e;->a:Z

    invoke-static {p1, v0}, Lcn/jiguang/d/a/d;->a(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    iget-boolean v0, p0, Lcn/jiguang/a/a/c/e;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/a/a/c/e;->e:Landroid/content/Context;

    const-string v1, ""

    invoke-static {v0}, Lcn/jiguang/a/a/c/e;->f(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-direct {p0, v0, v2, p2, v1}, Lcn/jiguang/a/a/c/e;->a(Landroid/content/Context;Lorg/json/JSONArray;Ljava/lang/Throwable;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Lcn/jiguang/a/a/c/e;->e:Landroid/content/Context;

    invoke-static {v1}, Lcn/jiguang/a/a/c/e;->d(Landroid/content/Context;)V

    iget-object v1, p0, Lcn/jiguang/a/a/c/e;->e:Landroid/content/Context;

    invoke-static {v1, v0}, Lcn/jiguang/a/a/c/e;->a(Landroid/content/Context;Lorg/json/JSONArray;)V

    new-instance v0, Lcn/jiguang/a/a/c/f;

    invoke-direct {v0, p0}, Lcn/jiguang/a/a/c/f;-><init>(Lcn/jiguang/a/a/c/e;)V

    invoke-virtual {v0}, Lcn/jiguang/a/a/c/f;->start()V

    const-wide/16 v1, 0x7d0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Lcn/jiguang/a/a/c/f;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v0, p0, Lcn/jiguang/a/a/c/e;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eq v0, p0, :cond_1

    iget-object v0, p0, Lcn/jiguang/a/a/c/e;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
