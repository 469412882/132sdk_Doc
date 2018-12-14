.class public final Lcom/mastersdk/android/C;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Lcom/mastersdk/android/E;

.field private final b:Ljava/io/File;

.field private final c:Ljava/io/File;

.field private d:I

.field private final e:Landroid/content/Context;

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mastersdk/android/C;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mastersdk/android/C;->f:Z

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mastersdk/android/C;->b:Ljava/io/File;

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mastersdk/android/C;->c:Ljava/io/File;

    iget-object p1, p0, Lcom/mastersdk/android/C;->c:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mastersdk/android/C;->c:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "unzip errro "

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to make directories:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mastersdk/android/C;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p3, p0, Lcom/mastersdk/android/C;->e:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/mastersdk/android/C;)I
    .locals 0

    iget p0, p0, Lcom/mastersdk/android/C;->d:I

    return p0
.end method

.method private a(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 6

    const/16 v0, 0x2000

    new-array v1, v0, [B

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance p1, Ljava/io/BufferedOutputStream;

    invoke-direct {p1, p2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    const/4 p2, 0x0

    const/4 v3, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v2, v1, p2, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    return v3

    :cond_0
    :try_start_3
    invoke-virtual {p1, v1, p2, v4}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/2addr v3, v4

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iput-boolean p2, p0, Lcom/mastersdk/android/C;->f:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    return v3

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return v3

    :goto_3
    :try_start_7
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_5

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    throw p2
.end method

.method private a()J
    .locals 11

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    iget-object v5, p0, Lcom/mastersdk/android/C;->b:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v4}, Lcom/mastersdk/android/C;->a(Ljava/util/zip/ZipFile;)J

    move-result-wide v5

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v0

    const/4 v7, 0x1

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v7

    invoke-virtual {p0, v3}, Lcom/mastersdk/android/C;->publishProgress([Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5
    :try_end_1
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v5, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-wide v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-wide v1

    :cond_1
    :try_start_3
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/mastersdk/android/C;->c:Ljava/io/File;

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/mastersdk/android/C;->e:Landroid/content/Context;

    :cond_3
    new-instance v7, Lcom/mastersdk/android/D;

    invoke-direct {v7, p0, v6}, Lcom/mastersdk/android/D;-><init>(Lcom/mastersdk/android/C;Ljava/io/File;)V

    invoke-virtual {v4, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {p0, v5, v7}, Lcom/mastersdk/android/C;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v5
    :try_end_3
    .catch Ljava/util/zip/ZipException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    int-to-long v5, v5

    add-long v8, v1, v5

    :try_start_4
    invoke-virtual {v7}, Lcom/mastersdk/android/D;->close()V
    :try_end_4
    .catch Ljava/util/zip/ZipException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-wide v1, v8

    goto :goto_0

    :catch_1
    move-exception v3

    move-wide v1, v8

    goto :goto_1

    :catch_2
    move-exception v3

    move-wide v1, v8

    goto :goto_2

    :catch_3
    move-exception v3

    goto :goto_1

    :catch_4
    move-exception v3

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v4, v3

    goto :goto_3

    :catch_5
    move-exception v4

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    :goto_1
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    iput-boolean v0, p0, Lcom/mastersdk/android/C;->f:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v4, :cond_4

    :try_start_6
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    return-wide v1

    :catch_6
    move-exception v4

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    :goto_2
    :try_start_7
    invoke-virtual {v3}, Ljava/util/zip/ZipException;->printStackTrace()V

    iput-boolean v0, p0, Lcom/mastersdk/android/C;->f:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v4, :cond_4

    :try_start_8
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :cond_4
    return-wide v1

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v4, :cond_5

    :try_start_9
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_4

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_4
    throw v0
.end method

.method private static a(Ljava/util/zip/ZipFile;)J
    .locals 8

    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_1

    return-wide v2

    :cond_1
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-ltz v7, :cond_0

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    add-long v6, v2, v4

    move-wide v2, v6

    goto :goto_0
.end method

.method static synthetic a(Lcom/mastersdk/android/C;I)V
    .locals 0

    iput p1, p0, Lcom/mastersdk/android/C;->d:I

    return-void
.end method

.method static synthetic a(Lcom/mastersdk/android/C;[Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mastersdk/android/C;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/mastersdk/android/E;)V
    .locals 0

    iput-object p1, p0, Lcom/mastersdk/android/C;->a:Lcom/mastersdk/android/E;

    return-void
.end method

.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-direct {p0}, Lcom/mastersdk/android/C;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    invoke-virtual {p0}, Lcom/mastersdk/android/C;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/mastersdk/android/C;->a:Lcom/mastersdk/android/E;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/mastersdk/android/C;->f:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mastersdk/android/C;->a:Lcom/mastersdk/android/E;

    iget-object v0, p1, Lcom/mastersdk/android/E;->a:Lcom/mastersdk/android/MainActivity;

    const-string v1, "file"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mastersdk/android/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "zipfile"

    const/16 v3, 0x64

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p1, Lcom/mastersdk/android/E;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v0}, Lcom/mastersdk/android/MainActivity;->a(Lcom/mastersdk/android/MainActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "downloads"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    iget-object v1, p1, Lcom/mastersdk/android/E;->a:Lcom/mastersdk/android/MainActivity;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mastersdk/android/MainActivity;->e(Lcom/mastersdk/android/MainActivity;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/mastersdk/android/E;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {p1}, Lcom/mastersdk/android/MainActivity;->m(Lcom/mastersdk/android/MainActivity;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/mastersdk/android/C;->a:Lcom/mastersdk/android/E;

    iget-object v0, p1, Lcom/mastersdk/android/E;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v0}, Lcom/mastersdk/android/MainActivity;->f(Lcom/mastersdk/android/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/mastersdk/android/E;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {p1}, Lcom/mastersdk/android/MainActivity;->f(Lcom/mastersdk/android/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "\u8d44\u6e90\u5305\u89e3\u538b\u5931\u8d25"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected final onPreExecute()V
    .locals 0

    return-void
.end method

.method protected final varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 4

    check-cast p1, [Ljava/lang/Integer;

    iget-object v0, p0, Lcom/mastersdk/android/C;->a:Lcom/mastersdk/android/E;

    if-eqz v0, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/mastersdk/android/C;->a:Lcom/mastersdk/android/E;

    if-lez p1, :cond_0

    iget-object v2, v0, Lcom/mastersdk/android/E;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v2, p1}, Lcom/mastersdk/android/MainActivity;->a(Lcom/mastersdk/android/MainActivity;I)V

    iget-object p1, v0, Lcom/mastersdk/android/E;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {p1}, Lcom/mastersdk/android/MainActivity;->f(Lcom/mastersdk/android/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, v0, Lcom/mastersdk/android/E;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {p1}, Lcom/mastersdk/android/MainActivity;->g(Lcom/mastersdk/android/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, v0, Lcom/mastersdk/android/E;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {p1}, Lcom/mastersdk/android/MainActivity;->f(Lcom/mastersdk/android/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v2, "\u8d44\u6e90\u6b63\u5728\u89e3\u538b..."

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lcom/mastersdk/android/E;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {p1}, Lcom/mastersdk/android/MainActivity;->g(Lcom/mastersdk/android/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    iget-object v2, v0, Lcom/mastersdk/android/E;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v2}, Lcom/mastersdk/android/MainActivity;->h(Lcom/mastersdk/android/MainActivity;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object p1, v0, Lcom/mastersdk/android/E;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {p1}, Lcom/mastersdk/android/MainActivity;->g(Lcom/mastersdk/android/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mastersdk/android/C;->a:Lcom/mastersdk/android/E;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_2

    iget-object v1, v0, Lcom/mastersdk/android/E;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v1}, Lcom/mastersdk/android/MainActivity;->i(Lcom/mastersdk/android/MainActivity;)I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 p1, p1, 0x64

    iget-object v1, v0, Lcom/mastersdk/android/E;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v1}, Lcom/mastersdk/android/MainActivity;->i(Lcom/mastersdk/android/MainActivity;)I

    move-result v1

    div-int/2addr p1, v1

    iget-object v1, v0, Lcom/mastersdk/android/E;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v1}, Lcom/mastersdk/android/MainActivity;->j(Lcom/mastersdk/android/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/mastersdk/android/E;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v1}, Lcom/mastersdk/android/MainActivity;->g(Lcom/mastersdk/android/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/mastersdk/android/E;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v1}, Lcom/mastersdk/android/MainActivity;->j(Lcom/mastersdk/android/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/mastersdk/android/E;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v0}, Lcom/mastersdk/android/MainActivity;->g(Lcom/mastersdk/android/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_2
    return-void
.end method
