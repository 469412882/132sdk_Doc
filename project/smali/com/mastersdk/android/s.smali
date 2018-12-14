.class final Lcom/mastersdk/android/s;
.super Ljava/lang/Thread;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private synthetic f:Lcom/mastersdk/android/q;


# direct methods
.method public constructor <init>(Lcom/mastersdk/android/q;IIILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mastersdk/android/s;->f:Lcom/mastersdk/android/q;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput p2, p0, Lcom/mastersdk/android/s;->a:I

    iput p3, p0, Lcom/mastersdk/android/s;->b:I

    sub-int/2addr p3, p2

    iput p3, p0, Lcom/mastersdk/android/s;->e:I

    iput-object p5, p0, Lcom/mastersdk/android/s;->d:Ljava/lang/String;

    iput p4, p0, Lcom/mastersdk/android/s;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mastersdk/android/s;->f:Lcom/mastersdk/android/q;

    invoke-static {v3}, Lcom/mastersdk/android/q;->a(Lcom/mastersdk/android/q;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mastersdk/android/s;->f:Lcom/mastersdk/android/q;

    invoke-static {v3}, Lcom/mastersdk/android/q;->b(Lcom/mastersdk/android/q;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rwd"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget v2, p0, Lcom/mastersdk/android/s;->a:I

    iget v3, p0, Lcom/mastersdk/android/s;->c:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v2, p0, Lcom/mastersdk/android/s;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/mastersdk/android/y;->b(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v3, 0x1388

    :try_start_2
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v3, "Range"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bytes="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/mastersdk/android/s;->a:I

    iget v6, p0, Lcom/mastersdk/android/s;->c:I

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mastersdk/android/s;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "httpURLConnection responseCode : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0xce

    if-eq v3, v4, :cond_1

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/mastersdk/android/s;->f:Lcom/mastersdk/android/q;

    invoke-static {v3}, Lcom/mastersdk/android/q;->d(Lcom/mastersdk/android/q;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3}, Lcom/mastersdk/android/q;->a(Landroid/os/Handler;)V

    goto :goto_3

    :cond_1
    :goto_0
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/16 v0, 0x400

    :try_start_3
    new-array v0, v0, [B

    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    iget v5, p0, Lcom/mastersdk/android/s;->c:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/mastersdk/android/s;->c:I

    iget-object v5, p0, Lcom/mastersdk/android/s;->f:Lcom/mastersdk/android/q;

    invoke-static {v5}, Lcom/mastersdk/android/q;->c(Lcom/mastersdk/android/q;)Lcom/mastersdk/android/o;

    move-result-object v5

    iget-object v6, p0, Lcom/mastersdk/android/s;->f:Lcom/mastersdk/android/q;

    invoke-static {v6}, Lcom/mastersdk/android/q;->b(Lcom/mastersdk/android/q;)Ljava/lang/String;

    iget v6, p0, Lcom/mastersdk/android/s;->c:I

    iget-object v7, p0, Lcom/mastersdk/android/s;->d:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/mastersdk/android/o;->a(ILjava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    const/4 v6, 0x1

    iput v6, v5, Landroid/os/Message;->what:I

    iput v4, v5, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/mastersdk/android/s;->f:Lcom/mastersdk/android/q;

    invoke-static {v4}, Lcom/mastersdk/android/q;->d(Lcom/mastersdk/android/q;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget v4, p0, Lcom/mastersdk/android/s;->c:I

    iget v5, p0, Lcom/mastersdk/android/s;->e:I

    if-ge v4, v5, :cond_3

    iget-object v4, p0, Lcom/mastersdk/android/s;->f:Lcom/mastersdk/android/q;

    invoke-static {v4}, Lcom/mastersdk/android/q;->e(Lcom/mastersdk/android/q;)Lcom/mastersdk/android/t;

    move-result-object v4

    sget-object v5, Lcom/mastersdk/android/t;->a:Lcom/mastersdk/android/t;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v4, v5, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    move-object v0, v3

    :goto_3
    if-eqz v0, :cond_4

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_4
    :goto_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :catchall_0
    move-exception v0

    move-object v8, v3

    move-object v3, v0

    move-object v0, v8

    goto :goto_9

    :catch_1
    move-exception v0

    move-object v8, v3

    move-object v3, v0

    move-object v0, v8

    goto :goto_6

    :catch_2
    move-exception v3

    goto :goto_6

    :catchall_1
    move-exception v3

    move-object v2, v0

    goto :goto_9

    :catch_3
    move-exception v3

    move-object v2, v0

    goto :goto_6

    :catchall_2
    move-exception v3

    move-object v1, v0

    move-object v2, v1

    goto :goto_9

    :catch_4
    move-exception v3

    move-object v1, v0

    move-object v2, v1

    :goto_6
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    iget-object v3, p0, Lcom/mastersdk/android/s;->f:Lcom/mastersdk/android/q;

    invoke-static {v3}, Lcom/mastersdk/android/q;->d(Lcom/mastersdk/android/q;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3}, Lcom/mastersdk/android/q;->a(Landroid/os/Handler;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v0, :cond_5

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_8

    :cond_5
    :goto_7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    return-void

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :catchall_3
    move-exception v3

    :goto_9
    if-eqz v0, :cond_6

    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_a

    :catch_6
    move-exception v0

    goto :goto_b

    :cond_6
    :goto_a
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_c

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c
    throw v3
.end method
