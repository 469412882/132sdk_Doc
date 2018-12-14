.class public Lcom/mastersdk/android/n;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field private static volatile a:Lcom/mastersdk/android/n;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "download.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mastersdk/android/n;
    .locals 2

    sget-object v0, Lcom/mastersdk/android/n;->a:Lcom/mastersdk/android/n;

    if-nez v0, :cond_1

    const-class v0, Lcom/mastersdk/android/n;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mastersdk/android/n;->a:Lcom/mastersdk/android/n;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mastersdk/android/n;

    invoke-direct {v1, p0}, Lcom/mastersdk/android/n;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mastersdk/android/n;->a:Lcom/mastersdk/android/n;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/mastersdk/android/n;->a:Lcom/mastersdk/android/n;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table download_info(_id integer PRIMARY KEY AUTOINCREMENT,start_pos integer, end_pos integer, compelete_size integer,url char)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
