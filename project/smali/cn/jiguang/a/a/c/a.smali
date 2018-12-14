.class public final Lcn/jiguang/a/a/c/a;
.super Ljava/lang/Thread;


# static fields
.field private static final c:Ljava/lang/Object;

.field private static final d:Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jiguang/a/a/c/a;->c:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jiguang/a/a/c/a;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcn/jiguang/a/a/c/a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcn/jiguang/a/a/c/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "appPackageNames_v2"

    invoke-virtual {p0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p0}, Lcn/jiguang/g/g;->a(Ljava/io/Closeable;)V

    :try_start_2
    new-instance p0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {p0}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v1
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    return-object p0

    :catch_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    :goto_0
    invoke-static {p0}, Lcn/jiguang/g/g;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_1
    move-object p0, v0

    :catch_2
    invoke-static {p0}, Lcn/jiguang/g/g;->a(Ljava/io/Closeable;)V

    return-object v0

    :catch_3
    move-object p0, v0

    :catch_4
    invoke-static {p0}, Lcn/jiguang/g/g;->a(Ljava/io/Closeable;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcn/jiguang/a/a/c/h;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/jiguang/a/a/c/h;

    iget-object v2, v2, Lcn/jiguang/a/a/c/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1

    const-string v2, "&&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/jiguang/a/a/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_3
    return-void
.end method

.method private a(Ljava/util/HashSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcn/jiguang/a/a/c/a;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcn/jiguang/a/a/c/a;->b:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/jiguang/a/a/c/d;->a(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/jiguang/a/a/c/h;

    iget-object v5, v4, Lcn/jiguang/a/a/c/h;->b:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    iget-object v5, p0, Lcn/jiguang/a/a/c/a;->a:Ljava/lang/String;

    invoke-static {v5}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v4, Lcn/jiguang/a/a/c/h;->b:Ljava/lang/String;

    iget-object v6, p0, Lcn/jiguang/a/a/c/a;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcn/jiguang/a/a/c/a;->a:Ljava/lang/String;

    invoke-static {v3}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcn/jiguang/a/a/c/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcn/jiguang/g/i;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/jiguang/a/a/c/h;

    iget-object v3, v2, Lcn/jiguang/a/a/c/h;->b:Ljava/lang/String;

    iget v2, v2, Lcn/jiguang/a/a/c/h;->e:I

    invoke-static {v3, v2}, Lcn/jiguang/g/i;->a(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_9
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_a

    iget-object p1, p0, Lcn/jiguang/a/a/c/a;->b:Landroid/content/Context;

    invoke-static {p1, v0}, Lcn/jiguang/d/d/q;->a(Landroid/content/Context;Lorg/json/JSONArray;)V

    :cond_a
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-gtz p1, :cond_b

    iget-object p1, p0, Lcn/jiguang/a/a/c/a;->a:Ljava/lang/String;

    invoke-static {p1}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c

    :cond_b
    iget-object p1, p0, Lcn/jiguang/a/a/c/a;->b:Landroid/content/Context;

    invoke-static {p1, v1}, Lcn/jiguang/a/a/c/a;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_c
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcn/jiguang/a/a/c/a;->d:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_1

    :try_start_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :try_start_1
    const-string v3, "appPackageNames_v2"

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {p0}, Lcn/jiguang/g/g;->a(Ljava/io/Closeable;)V

    monitor-exit v1

    const/4 p0, 0x1

    return p0

    :catchall_1
    move-exception p1

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object p0, v2

    :goto_0
    invoke-static {p0}, Lcn/jiguang/g/g;->a(Ljava/io/Closeable;)V

    throw p1

    :catch_0
    move-object p0, v2

    :catch_1
    invoke-static {p0}, Lcn/jiguang/g/g;->a(Ljava/io/Closeable;)V

    monitor-exit v1

    return v0

    :catch_2
    move-object p0, v2

    :catch_3
    invoke-static {p0}, Lcn/jiguang/g/g;->a(Ljava/io/Closeable;)V

    monitor-exit v1

    return v0

    :catch_4
    move-object p0, v2

    :catch_5
    invoke-static {p0}, Lcn/jiguang/g/g;->a(Ljava/io/Closeable;)V

    monitor-exit v1

    return v0

    :catch_6
    move-object p0, v2

    :catch_7
    invoke-static {p0}, Lcn/jiguang/g/g;->a(Ljava/io/Closeable;)V

    monitor-exit v1

    return v0

    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 6

    :try_start_0
    sget-object v0, Lcn/jiguang/a/a/c/a;->c:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcn/jiguang/a/a/c/a;->b:Landroid/content/Context;

    if-nez v1, :cond_0

    :goto_0
    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcn/jiguang/a/a/c/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcn/jiguang/a/a/c/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcn/jiguang/a/a/c/a;->b:Landroid/content/Context;

    const-string v3, "last_check_userapp_status"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcn/jiguang/d/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/Serializable;)V

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const-string v2, "\u0000"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&&"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {v2, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-object v1, v2

    :goto_1
    invoke-direct {p0, v1}, Lcn/jiguang/a/a/c/a;->a(Ljava/util/HashSet;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
