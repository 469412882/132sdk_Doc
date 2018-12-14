.class final Lcom/mastersdk/android/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Landroid/os/Handler;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/mastersdk/android/r;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/mastersdk/android/r;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/mastersdk/android/r;->c:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mastersdk/android/r;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/mastersdk/android/y;->b(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/16 v3, 0x1388

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v3, "POST"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v5, p0, Lcom/mastersdk/android/r;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "httpURLConnection  responseCode :  "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v1}, Lcom/mastersdk/android/y;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    iput v2, v5, Landroid/os/Message;->what:I

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v2, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/mastersdk/android/r;->c:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_f

    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    goto :goto_5

    :cond_0
    :try_start_4
    iget-object v1, p0, Lcom/mastersdk/android/r;->c:Landroid/os/Handler;

    invoke-static {v1}, Lcom/mastersdk/android/q;->a(Landroid/os/Handler;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_0
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    if-eqz v3, :cond_1

    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    if-eqz v0, :cond_8

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    return-void

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :catchall_1
    move-exception v1

    goto/16 :goto_f

    :catch_6
    move-exception v1

    move-object v2, v0

    :goto_3
    move-object v0, v4

    goto :goto_6

    :catch_7
    move-exception v1

    move-object v2, v0

    :goto_4
    move-object v0, v4

    goto :goto_9

    :catch_8
    move-exception v1

    move-object v2, v0

    :goto_5
    move-object v0, v4

    goto/16 :goto_c

    :catchall_2
    move-exception v1

    move-object v4, v0

    goto/16 :goto_f

    :catch_9
    move-exception v1

    move-object v2, v0

    goto :goto_6

    :catch_a
    move-exception v1

    move-object v2, v0

    goto :goto_9

    :catch_b
    move-exception v1

    move-object v2, v0

    goto :goto_c

    :catchall_3
    move-exception v1

    move-object v3, v0

    move-object v4, v3

    goto/16 :goto_f

    :catch_c
    move-exception v1

    move-object v2, v0

    move-object v3, v2

    :goto_6
    :try_start_8
    iget-object v4, p0, Lcom/mastersdk/android/r;->c:Landroid/os/Handler;

    invoke-static {v4}, Lcom/mastersdk/android/q;->a(Landroid/os/Handler;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v0, :cond_2

    :try_start_9
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_d

    goto :goto_7

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_7
    if-eqz v3, :cond_3

    :try_start_a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_e

    goto :goto_8

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_8
    if-eqz v2, :cond_8

    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_f

    return-void

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :catch_10
    move-exception v1

    move-object v2, v0

    move-object v3, v2

    :goto_9
    :try_start_c
    iget-object v4, p0, Lcom/mastersdk/android/r;->c:Landroid/os/Handler;

    invoke-static {v4}, Lcom/mastersdk/android/q;->a(Landroid/os/Handler;)V

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-eqz v0, :cond_4

    :try_start_d
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_11

    goto :goto_a

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_a
    if-eqz v3, :cond_5

    :try_start_e
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_12

    goto :goto_b

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_b
    if-eqz v2, :cond_8

    :try_start_f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_13

    return-void

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :catch_14
    move-exception v1

    move-object v2, v0

    move-object v3, v2

    :goto_c
    :try_start_10
    iget-object v4, p0, Lcom/mastersdk/android/r;->c:Landroid/os/Handler;

    invoke-static {v4}, Lcom/mastersdk/android/q;->a(Landroid/os/Handler;)V

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    if-eqz v0, :cond_6

    :try_start_11
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_15

    goto :goto_d

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_d
    if-eqz v3, :cond_7

    :try_start_12
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_16

    goto :goto_e

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_e
    if-eqz v2, :cond_8

    :try_start_13
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_17

    return-void

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    return-void

    :catchall_4
    move-exception v1

    move-object v4, v0

    move-object v0, v2

    :goto_f
    if-eqz v4, :cond_9

    :try_start_14
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_18

    goto :goto_10

    :catch_18
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_10
    if-eqz v3, :cond_a

    :try_start_15
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_19

    goto :goto_11

    :catch_19
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_11
    if-eqz v0, :cond_b

    :try_start_16
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1a

    goto :goto_12

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_12
    throw v1
.end method
