.class public Lorg/cocos2dx/lua/ShellUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkRootPermission()Z
    .locals 3

    const-string v0, "echo root"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lorg/cocos2dx/lua/ShellUtils;->execCommand(Ljava/lang/String;ZZ)Lorg/cocos2dx/lua/ShellUtils$CommandResult;

    move-result-object v0

    iget v0, v0, Lorg/cocos2dx/lua/ShellUtils$CommandResult;->a:I

    if-nez v0, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public static execCommand(Ljava/lang/String;Z)Lorg/cocos2dx/lua/ShellUtils$CommandResult;
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1, p1, v0}, Lorg/cocos2dx/lua/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lorg/cocos2dx/lua/ShellUtils$CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public static execCommand(Ljava/lang/String;ZZ)Lorg/cocos2dx/lua/ShellUtils$CommandResult;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1, p2}, Lorg/cocos2dx/lua/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lorg/cocos2dx/lua/ShellUtils$CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public static execCommand(Ljava/util/List;Z)Lorg/cocos2dx/lua/ShellUtils$CommandResult;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :goto_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/cocos2dx/lua/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lorg/cocos2dx/lua/ShellUtils$CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public static execCommand(Ljava/util/List;ZZ)Lorg/cocos2dx/lua/ShellUtils$CommandResult;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :goto_0
    invoke-static {p0, p1, p2}, Lorg/cocos2dx/lua/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lorg/cocos2dx/lua/ShellUtils$CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public static execCommand([Ljava/lang/String;Z)Lorg/cocos2dx/lua/ShellUtils$CommandResult;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/cocos2dx/lua/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lorg/cocos2dx/lua/ShellUtils$CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public static execCommand([Ljava/lang/String;ZZ)Lorg/cocos2dx/lua/ShellUtils$CommandResult;
    .locals 8

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_17

    array-length v2, p0

    if-nez v2, :cond_0

    goto/16 :goto_1e

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string p1, "su"

    goto :goto_0

    :cond_1
    const-string p1, "sh"

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_f
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    array-length v3, p0

    const/4 v4, 0x0

    :goto_1
    if-lt v4, v3, :cond_8

    const-string p0, "exit\n"

    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    move-result p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p2, :cond_4

    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    :goto_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    goto/16 :goto_6

    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_2

    :catch_0
    move-exception v5

    move-object v7, v5

    move v5, p0

    move-object p0, v7

    goto/16 :goto_b

    :catch_1
    move-exception v5

    move-object v7, v5

    move v5, p0

    move-object p0, v7

    goto/16 :goto_12

    :catchall_0
    move-exception p0

    move-object v4, v1

    goto/16 :goto_19

    :catch_2
    move-exception v4

    move v5, p0

    move-object p0, v4

    move-object v4, v1

    goto/16 :goto_b

    :catch_3
    move-exception v4

    move v5, p0

    move-object p0, v4

    move-object v4, v1

    goto/16 :goto_12

    :catch_4
    move-exception v3

    move v5, p0

    move-object v4, v1

    move-object p0, v3

    move-object v3, v4

    goto/16 :goto_b

    :catch_5
    move-exception v3

    move v5, p0

    move-object v4, v1

    move-object p0, v3

    move-object v3, v4

    goto/16 :goto_12

    :catch_6
    move-exception v0

    move v5, p0

    move-object p0, v0

    move-object v0, v1

    goto :goto_4

    :catch_7
    move-exception v0

    move v5, p0

    move-object p0, v0

    move-object v0, v1

    goto :goto_5

    :catch_8
    move-exception p2

    move v5, p0

    move-object p0, p2

    move-object p2, v1

    move-object v0, p2

    :goto_4
    move-object v3, v0

    move-object v4, v3

    goto/16 :goto_b

    :catch_9
    move-exception p2

    move v5, p0

    move-object p0, p2

    move-object p2, v1

    move-object v0, p2

    :goto_5
    move-object v3, v0

    move-object v4, v3

    goto/16 :goto_12

    :cond_4
    move-object p2, v1

    move-object v0, p2

    move-object v3, v0

    move-object v4, v3

    :goto_6
    :try_start_8
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    goto :goto_7

    :catch_a
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_7
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    :cond_7
    move v5, p0

    goto/16 :goto_16

    :cond_8
    :try_start_9
    aget-object v5, p0, v4

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write([B)V

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p0

    move-object v4, v1

    goto/16 :goto_1a

    :catch_b
    move-exception p0

    move-object p2, v1

    move-object v0, p2

    move-object v3, v0

    goto :goto_a

    :catch_c
    move-exception p0

    move-object p2, v1

    move-object v0, p2

    move-object v3, v0

    goto :goto_11

    :catchall_2
    move-exception p0

    move-object v2, v1

    goto :goto_8

    :catch_d
    move-exception p0

    move-object p2, v1

    goto :goto_9

    :catch_e
    move-exception p0

    move-object p2, v1

    goto :goto_10

    :catchall_3
    move-exception p0

    move-object p1, v1

    move-object v2, p1

    :goto_8
    move-object v4, v2

    goto/16 :goto_1a

    :catch_f
    move-exception p0

    move-object p1, v1

    move-object p2, p1

    :goto_9
    move-object v0, p2

    move-object v2, v0

    move-object v3, v2

    :goto_a
    move-object v4, v3

    const/4 v5, -0x1

    :goto_b
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v2, :cond_a

    :try_start_b
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    goto :goto_c

    :catch_10
    move-exception p0

    goto :goto_d

    :cond_a
    :goto_c
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_b
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_10

    goto :goto_e

    :goto_d
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_c
    :goto_e
    if-eqz p1, :cond_10

    :goto_f
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    goto :goto_16

    :catch_11
    move-exception p0

    move-object p1, v1

    move-object p2, p1

    :goto_10
    move-object v0, p2

    move-object v2, v0

    move-object v3, v2

    :goto_11
    move-object v4, v3

    const/4 v5, -0x1

    :goto_12
    :try_start_c
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-eqz v2, :cond_d

    :try_start_d
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    goto :goto_13

    :catch_12
    move-exception p0

    goto :goto_14

    :cond_d
    :goto_13
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_e
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_12

    goto :goto_15

    :goto_14
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_f
    :goto_15
    if-eqz p1, :cond_10

    goto :goto_f

    :cond_10
    :goto_16
    new-instance p0, Lorg/cocos2dx/lua/ShellUtils$CommandResult;

    if-nez p2, :cond_11

    move-object p1, v1

    goto :goto_17

    :cond_11
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_17
    if-nez v0, :cond_12

    goto :goto_18

    :cond_12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_18
    invoke-direct {p0, v5, p1, v1}, Lorg/cocos2dx/lua/ShellUtils$CommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :catchall_4
    move-exception p0

    :goto_19
    move-object v1, v3

    :goto_1a
    if-eqz v2, :cond_13

    :try_start_e
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    goto :goto_1b

    :catch_13
    move-exception p2

    goto :goto_1c

    :cond_13
    :goto_1b
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_14
    if-eqz v4, :cond_15

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_13

    goto :goto_1d

    :goto_1c
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_15
    :goto_1d
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    :cond_16
    throw p0

    :cond_17
    :goto_1e
    new-instance p0, Lorg/cocos2dx/lua/ShellUtils$CommandResult;

    invoke-direct {p0, v0, v1, v1}, Lorg/cocos2dx/lua/ShellUtils$CommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
