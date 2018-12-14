.class public final Lcom/mastersdk/android/q;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Landroid/os/Handler;

.field private d:Lcom/mastersdk/android/p;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Lcom/mastersdk/android/o;

.field private i:Lcom/mastersdk/android/t;

.field private j:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/mastersdk/android/t;->c:Lcom/mastersdk/android/t;

    iput-object v0, p0, Lcom/mastersdk/android/q;->i:Lcom/mastersdk/android/t;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mastersdk/android/q;->j:I

    iput-object p1, p0, Lcom/mastersdk/android/q;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/mastersdk/android/q;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/mastersdk/android/q;->b:Landroid/content/Context;

    iput-object p5, p0, Lcom/mastersdk/android/q;->c:Landroid/os/Handler;

    iput-object p3, p0, Lcom/mastersdk/android/q;->f:Ljava/lang/String;

    new-instance p1, Lcom/mastersdk/android/o;

    iget-object p2, p0, Lcom/mastersdk/android/q;->b:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/mastersdk/android/o;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mastersdk/android/q;->h:Lcom/mastersdk/android/o;

    return-void
.end method

.method static synthetic a(Lcom/mastersdk/android/q;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mastersdk/android/q;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Landroid/os/Handler;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string p0, ""

    const-string v0, "httpURLConnection reconnect failed,Is trying to reconnect >>>"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/mastersdk/android/q;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mastersdk/android/q;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/mastersdk/android/q;)Lcom/mastersdk/android/o;
    .locals 0

    iget-object p0, p0, Lcom/mastersdk/android/q;->h:Lcom/mastersdk/android/o;

    return-object p0
.end method

.method static synthetic d(Lcom/mastersdk/android/q;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/mastersdk/android/q;->c:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e(Lcom/mastersdk/android/q;)Lcom/mastersdk/android/t;
    .locals 0

    iget-object p0, p0, Lcom/mastersdk/android/q;->i:Lcom/mastersdk/android/t;

    return-object p0
.end method

.method private g()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/mastersdk/android/q;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/mastersdk/android/y;->b(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    iput v1, p0, Lcom/mastersdk/android/q;->g:I

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/mastersdk/android/q;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/mastersdk/android/q;->f:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    :cond_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v3, "rwd"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget v2, p0, Lcom/mastersdk/android/q;->g:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    new-instance v0, Lcom/mastersdk/android/p;

    iget-object v2, p0, Lcom/mastersdk/android/q;->f:Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, p0, Lcom/mastersdk/android/q;->g:I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/mastersdk/android/q;->a:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/mastersdk/android/p;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    iput-object v0, p0, Lcom/mastersdk/android/q;->d:Lcom/mastersdk/android/p;

    iget-object v0, p0, Lcom/mastersdk/android/q;->h:Lcom/mastersdk/android/o;

    iget-object v1, p0, Lcom/mastersdk/android/q;->d:Lcom/mastersdk/android/p;

    invoke-virtual {v0, v1}, Lcom/mastersdk/android/o;->a(Lcom/mastersdk/android/p;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/mastersdk/android/q;->j:I

    iget-object v0, p0, Lcom/mastersdk/android/q;->h:Lcom/mastersdk/android/o;

    iget-object v1, p0, Lcom/mastersdk/android/q;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/mastersdk/android/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mastersdk/android/o;->a(Ljava/lang/String;)Lcom/mastersdk/android/p;

    move-result-object v0

    iput-object v0, p0, Lcom/mastersdk/android/q;->d:Lcom/mastersdk/android/p;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mastersdk/android/q;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mastersdk/android/q;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/mastersdk/android/q;->h:Lcom/mastersdk/android/o;

    iget-object v1, p0, Lcom/mastersdk/android/q;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/mastersdk/android/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mastersdk/android/o;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mastersdk/android/q;->g()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/mastersdk/android/q;->d:Lcom/mastersdk/android/p;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mastersdk/android/q;->d:Lcom/mastersdk/android/p;

    invoke-virtual {v1}, Lcom/mastersdk/android/p;->c()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mastersdk/android/q;->d:Lcom/mastersdk/android/p;

    invoke-virtual {v0}, Lcom/mastersdk/android/p;->c()I

    move-result v0

    iput v0, p0, Lcom/mastersdk/android/q;->g:I

    iget v0, p0, Lcom/mastersdk/android/q;->j:I

    iget-object v1, p0, Lcom/mastersdk/android/q;->d:Lcom/mastersdk/android/p;

    invoke-virtual {v1}, Lcom/mastersdk/android/p;->d()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mastersdk/android/q;->j:I

    return-void

    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/mastersdk/android/q;->h:Lcom/mastersdk/android/o;

    iget-object v1, p0, Lcom/mastersdk/android/q;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/mastersdk/android/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mastersdk/android/o;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mastersdk/android/q;->g()V

    return-void
.end method

.method public final b()V
    .locals 7

    iget-object v0, p0, Lcom/mastersdk/android/q;->d:Lcom/mastersdk/android/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mastersdk/android/q;->i:Lcom/mastersdk/android/t;

    sget-object v1, Lcom/mastersdk/android/t;->a:Lcom/mastersdk/android/t;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/mastersdk/android/t;->a:Lcom/mastersdk/android/t;

    iput-object v0, p0, Lcom/mastersdk/android/q;->i:Lcom/mastersdk/android/t;

    new-instance v0, Lcom/mastersdk/android/s;

    iget-object v1, p0, Lcom/mastersdk/android/q;->d:Lcom/mastersdk/android/p;

    invoke-virtual {v1}, Lcom/mastersdk/android/p;->b()I

    move-result v3

    iget-object v1, p0, Lcom/mastersdk/android/q;->d:Lcom/mastersdk/android/p;

    invoke-virtual {v1}, Lcom/mastersdk/android/p;->c()I

    move-result v4

    iget-object v1, p0, Lcom/mastersdk/android/q;->d:Lcom/mastersdk/android/p;

    invoke-virtual {v1}, Lcom/mastersdk/android/p;->d()I

    move-result v5

    iget-object v1, p0, Lcom/mastersdk/android/q;->d:Lcom/mastersdk/android/p;

    invoke-virtual {v1}, Lcom/mastersdk/android/p;->a()Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/mastersdk/android/s;-><init>(Lcom/mastersdk/android/q;IIILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/mastersdk/android/s;->start()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    sget-object v0, Lcom/mastersdk/android/t;->b:Lcom/mastersdk/android/t;

    iput-object v0, p0, Lcom/mastersdk/android/q;->i:Lcom/mastersdk/android/t;

    iget-object v0, p0, Lcom/mastersdk/android/q;->h:Lcom/mastersdk/android/o;

    invoke-virtual {v0}, Lcom/mastersdk/android/o;->a()V

    return-void
.end method

.method public final d()V
    .locals 2

    sget-object v0, Lcom/mastersdk/android/t;->d:Lcom/mastersdk/android/t;

    iput-object v0, p0, Lcom/mastersdk/android/q;->i:Lcom/mastersdk/android/t;

    iget-object v0, p0, Lcom/mastersdk/android/q;->h:Lcom/mastersdk/android/o;

    iget-object v1, p0, Lcom/mastersdk/android/q;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/mastersdk/android/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mastersdk/android/o;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mastersdk/android/q;->h:Lcom/mastersdk/android/o;

    invoke-virtual {v0}, Lcom/mastersdk/android/o;->a()V

    return-void
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/mastersdk/android/q;->g:I

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/mastersdk/android/q;->j:I

    return v0
.end method
