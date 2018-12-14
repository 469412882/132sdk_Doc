.class public final Lcom/mastersdk/android/o;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/mastersdk/android/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/mastersdk/android/n;->a(Landroid/content/Context;)Lcom/mastersdk/android/n;

    move-result-object p1

    iput-object p1, p0, Lcom/mastersdk/android/o;->a:Lcom/mastersdk/android/n;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/mastersdk/android/p;
    .locals 13

    iget-object v0, p0, Lcom/mastersdk/android/o;->a:Lcom/mastersdk/android/n;

    invoke-virtual {v0}, Lcom/mastersdk/android/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "download_info"

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "start_pos"

    const/4 v9, 0x0

    aput-object v0, v3, v9

    const-string v0, "end_pos"

    const/4 v10, 0x1

    aput-object v0, v3, v10

    const-string v0, "compelete_size"

    const/4 v11, 0x2

    aput-object v0, v3, v11

    const-string v0, "url"

    const/4 v12, 0x3

    aput-object v0, v3, v12

    const-string v4, "url=? "

    new-array v5, v10, [Ljava/lang/String;

    aput-object p1, v5, v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/mastersdk/android/p;

    const-string v2, ""

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/mastersdk/android/p;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/mastersdk/android/o;->a:Lcom/mastersdk/android/n;

    invoke-virtual {v0}, Lcom/mastersdk/android/n;->close()V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/mastersdk/android/o;->a:Lcom/mastersdk/android/n;

    invoke-virtual {v0}, Lcom/mastersdk/android/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "update download_info set compelete_size=? where url=?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/mastersdk/android/p;)V
    .locals 5

    iget-object v0, p0, Lcom/mastersdk/android/o;->a:Lcom/mastersdk/android/n;

    invoke-virtual {v0}, Lcom/mastersdk/android/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "insert into download_info(start_pos, end_pos,compelete_size,url) values (?,?,?,?)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/mastersdk/android/p;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/mastersdk/android/p;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/mastersdk/android/p;->d()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/mastersdk/android/p;->a()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x3

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/mastersdk/android/o;->a:Lcom/mastersdk/android/n;

    invoke-virtual {v0}, Lcom/mastersdk/android/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "download_info"

    const-string v2, "url=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
