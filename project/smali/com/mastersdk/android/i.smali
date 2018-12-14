.class public final Lcom/mastersdk/android/i;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lcom/mastersdk/android/m;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mastersdk/android/i;->a:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lcom/mastersdk/android/i;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mastersdk/android/i;->c:I

    new-instance v0, Lcom/mastersdk/android/j;

    invoke-direct {v0, p0}, Lcom/mastersdk/android/j;-><init>(Lcom/mastersdk/android/i;)V

    iput-object v0, p0, Lcom/mastersdk/android/i;->e:Landroid/os/Handler;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    array-length v3, p1

    if-lt v1, v3, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    mul-int v3, v2, p0

    sub-int v3, v1, v3

    aget-char v3, v0, v3

    int-to-byte v3, v3

    aget-char v4, p1, v1

    int-to-byte v4, v4

    if-eq v3, v4, :cond_2

    xor-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, p1, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    rem-int v3, v1, p0

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v1, Lcom/mastersdk/android/l;

    invoke-direct {v1}, Lcom/mastersdk/android/l;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-string v1, ""

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "d6180f2f200f4e5984fa9ab1d822610c"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mastersdk/android/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/mastersdk/android/i;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/mastersdk/android/i;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method private a()V
    .locals 5

    iget-object v0, p0, Lcom/mastersdk/android/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Lcom/mastersdk/android/i;->c:I

    div-int/2addr v1, v0

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/mastersdk/android/i;->c:I

    rem-int/2addr v1, v0

    iget v0, p0, Lcom/mastersdk/android/i;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mastersdk/android/i;->c:I

    iget-object v0, p0, Lcom/mastersdk/android/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/mastersdk/android/i;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/mastersdk/android/i;->e:Landroid/os/Handler;

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/mastersdk/android/r;

    invoke-direct {v4, v0, v1, v2}, Lcom/mastersdk/android/r;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mastersdk/android/i;->d:Lcom/mastersdk/android/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mastersdk/android/i;->d:Lcom/mastersdk/android/m;

    iget-object v0, v0, Lcom/mastersdk/android/m;->a:Lcom/mastersdk/android/MainActivity;

    invoke-virtual {v0}, Lcom/mastersdk/android/MainActivity;->b()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/mastersdk/android/i;Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_4

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :try_start_0
    const-string v0, ""

    const-string v1, "65ec387243c1c045a246f2b92717379a"

    invoke-static {v1, p1}, Lcom/mastersdk/android/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "%(?![0-9a-fA-F]{2})"

    const-string v2, "%25"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "iAudit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_3

    const-string p1, "iAudit"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    const-string p1, "sFileCheck"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "sDownUrl"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    if-eq v3, v2, :cond_0

    const-string v3, ".zip"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v2, :cond_0

    move-object v0, v4

    :cond_0
    iget-object v2, p0, Lcom/mastersdk/android/i;->d:Lcom/mastersdk/android/m;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/mastersdk/android/i;->d:Lcom/mastersdk/android/m;

    iget-object v3, v2, Lcom/mastersdk/android/m;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v3, p1}, Lcom/mastersdk/android/MainActivity;->a(Lcom/mastersdk/android/MainActivity;Ljava/lang/String;)V

    iget-object p1, v2, Lcom/mastersdk/android/m;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {p1, v1}, Lcom/mastersdk/android/MainActivity;->b(Lcom/mastersdk/android/MainActivity;Ljava/lang/String;)V

    iget-object p1, v2, Lcom/mastersdk/android/m;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {p1, v0}, Lcom/mastersdk/android/MainActivity;->c(Lcom/mastersdk/android/MainActivity;Ljava/lang/String;)V

    iget-object p1, v2, Lcom/mastersdk/android/m;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {p1}, Lcom/mastersdk/android/MainActivity;->a(Lcom/mastersdk/android/MainActivity;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "downloads"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v2, Lcom/mastersdk/android/m;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {p1}, Lcom/mastersdk/android/MainActivity;->b(Lcom/mastersdk/android/MainActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v2, Lcom/mastersdk/android/m;->a:Lcom/mastersdk/android/MainActivity;

    invoke-virtual {v1, v0}, Lcom/mastersdk/android/MainActivity;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/mastersdk/android/m;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v0, p1}, Lcom/mastersdk/android/MainActivity;->d(Lcom/mastersdk/android/MainActivity;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, v2, Lcom/mastersdk/android/m;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {p1}, Lcom/mastersdk/android/MainActivity;->c(Lcom/mastersdk/android/MainActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, v2, Lcom/mastersdk/android/m;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {p1}, Lcom/mastersdk/android/MainActivity;->d(Lcom/mastersdk/android/MainActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, v2, Lcom/mastersdk/android/m;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {p1}, Lcom/mastersdk/android/MainActivity;->b(Lcom/mastersdk/android/MainActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/mastersdk/android/a;

    invoke-direct {v0, v2}, Lcom/mastersdk/android/a;-><init>(Lcom/mastersdk/android/m;)V

    iget-object v1, v2, Lcom/mastersdk/android/m;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v1}, Lcom/mastersdk/android/MainActivity;->e(Lcom/mastersdk/android/MainActivity;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    iget-object p1, v2, Lcom/mastersdk/android/m;->a:Lcom/mastersdk/android/MainActivity;

    invoke-virtual {p1}, Lcom/mastersdk/android/MainActivity;->b()V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/mastersdk/android/i;->d:Lcom/mastersdk/android/m;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/mastersdk/android/i;->d:Lcom/mastersdk/android/m;

    iget-object p1, p1, Lcom/mastersdk/android/m;->a:Lcom/mastersdk/android/MainActivity;

    invoke-virtual {p1}, Lcom/mastersdk/android/MainActivity;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object p1, p0, Lcom/mastersdk/android/i;->d:Lcom/mastersdk/android/m;

    if-eqz p1, :cond_5

    :cond_4
    iget-object p0, p0, Lcom/mastersdk/android/i;->d:Lcom/mastersdk/android/m;

    iget-object p0, p0, Lcom/mastersdk/android/m;->a:Lcom/mastersdk/android/MainActivity;

    invoke-virtual {p0}, Lcom/mastersdk/android/MainActivity;->b()V

    :cond_5
    return-void
.end method

.method static synthetic b(Lcom/mastersdk/android/i;)I
    .locals 0

    iget p0, p0, Lcom/mastersdk/android/i;->c:I

    return p0
.end method

.method static synthetic c(Lcom/mastersdk/android/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/mastersdk/android/i;->a()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/mastersdk/android/m;)V
    .locals 0

    iput-object p1, p0, Lcom/mastersdk/android/i;->d:Lcom/mastersdk/android/m;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    iput-object p3, p0, Lcom/mastersdk/android/i;->a:Ljava/util/ArrayList;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "sPackage"

    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "fVer"

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/mastersdk/android/i;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Token"

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string p2, "38c6c4f90945960b3c04f77fed5db392"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mastersdk/android/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/mastersdk/android/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mastersdk/android/i;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mastersdk/android/i;->a()V

    return-void
.end method
