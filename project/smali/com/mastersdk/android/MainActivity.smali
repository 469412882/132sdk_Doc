.class public Lcom/mastersdk/android/MainActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;


# static fields
.field private static r:Z = false

.field private static t:[Ljava/lang/String;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/widget/ProgressBar;

.field private c:Landroid/widget/ProgressBar;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Landroid/widget/RelativeLayout;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/content/Context;

.field private q:I

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/mastersdk/android/MainActivity;->t:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-class v0, Lcom/mastersdk/android/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mastersdk/android/MainActivity;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mastersdk/android/MainActivity;->b:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/mastersdk/android/MainActivity;->c:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/mastersdk/android/MainActivity;->d:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mastersdk/android/MainActivity;->e:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mastersdk/android/MainActivity;->f:Landroid/widget/TextView;

    const/4 v1, -0x1

    iput v1, p0, Lcom/mastersdk/android/MainActivity;->g:I

    const/16 v1, 0x64

    iput v1, p0, Lcom/mastersdk/android/MainActivity;->h:I

    const-string v1, ""

    iput-object v1, p0, Lcom/mastersdk/android/MainActivity;->i:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/mastersdk/android/MainActivity;->j:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/mastersdk/android/MainActivity;->k:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/mastersdk/android/MainActivity;->l:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/mastersdk/android/MainActivity;->m:I

    iput-object v0, p0, Lcom/mastersdk/android/MainActivity;->n:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mastersdk/android/MainActivity;->o:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mastersdk/android/MainActivity;->p:Landroid/content/Context;

    iput v1, p0, Lcom/mastersdk/android/MainActivity;->q:I

    iput-boolean v1, p0, Lcom/mastersdk/android/MainActivity;->s:Z

    return-void
.end method

.method private static a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v1, 0x1

    if-gt v0, p2, :cond_0

    if-le p0, p1, :cond_2

    :cond_0
    div-int/lit8 v0, v0, 0x2

    div-int/lit8 p0, p0, 0x2

    :goto_0
    div-int v2, v0, v1

    if-lt v2, p2, :cond_2

    div-int v2, p0, v1

    if-ge v2, p1, :cond_1

    return v1

    :cond_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method static synthetic a(Lcom/mastersdk/android/MainActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/mastersdk/android/MainActivity;->p:Landroid/content/Context;

    return-object p0
.end method

.method private a([B)Landroid/graphics/Bitmap;
    .locals 4

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/mastersdk/android/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v3, v1}, Lcom/mastersdk/android/MainActivity;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v1, p1

    invoke-static {p1, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/mastersdk/android/MainActivity;I)V
    .locals 0

    iput p1, p0, Lcom/mastersdk/android/MainActivity;->g:I

    return-void
.end method

.method static synthetic a(Lcom/mastersdk/android/MainActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mastersdk/android/MainActivity;->l:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/mastersdk/android/MainActivity;->b(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method static synthetic b(Lcom/mastersdk/android/MainActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mastersdk/android/MainActivity;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/mastersdk/android/MainActivity;I)V
    .locals 0

    iput p1, p0, Lcom/mastersdk/android/MainActivity;->m:I

    return-void
.end method

.method static synthetic b(Lcom/mastersdk/android/MainActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mastersdk/android/MainActivity;->k:Ljava/lang/String;

    return-void
.end method

.method private b(Ljava/io/File;)V
    .locals 4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    return-void

    :cond_1
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v2}, Lcom/mastersdk/android/MainActivity;->b(Ljava/io/File;)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method static synthetic c(Lcom/mastersdk/android/MainActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mastersdk/android/MainActivity;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/mastersdk/android/MainActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mastersdk/android/MainActivity;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcom/mastersdk/android/MainActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mastersdk/android/MainActivity;->k:Ljava/lang/String;

    return-object p0
.end method

.method private d()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mastersdk/android/MainActivity;->s:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    sget-object v2, Lcom/mastersdk/android/MainActivity;->t:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/mastersdk/android/MainActivity;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mastersdk/android/MainActivity;->h()V

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/mastersdk/android/MainActivity;->p:Landroid/content/Context;

    sget-object v3, Lcom/mastersdk/android/MainActivity;->t:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/mastersdk/android/MainActivity;->t:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/mastersdk/android/MainActivity;->e()V

    return-void
.end method

.method static synthetic d(Lcom/mastersdk/android/MainActivity;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/mastersdk/android/MainActivity;->i:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mastersdk/android/MainActivity;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/mastersdk/android/C;

    iget-object v1, p0, Lcom/mastersdk/android/MainActivity;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/mastersdk/android/MainActivity;->p:Landroid/content/Context;

    invoke-direct {v0, p1, v1, v2}, Lcom/mastersdk/android/C;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/mastersdk/android/C;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance p1, Lcom/mastersdk/android/E;

    invoke-direct {p1, p0}, Lcom/mastersdk/android/E;-><init>(Lcom/mastersdk/android/MainActivity;)V

    invoke-virtual {v0, p1}, Lcom/mastersdk/android/C;->a(Lcom/mastersdk/android/E;)V

    return-void
.end method

.method static synthetic e(Lcom/mastersdk/android/MainActivity;)I
    .locals 0

    iget p0, p0, Lcom/mastersdk/android/MainActivity;->q:I

    return p0
.end method

.method private e()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mastersdk/android/MainActivity;->s:Z

    invoke-direct {p0}, Lcom/mastersdk/android/MainActivity;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/mastersdk/android/MainActivity;->g()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/mastersdk/android/MainActivity;->h()V

    iget-object v1, p0, Lcom/mastersdk/android/MainActivity;->p:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/mastersdk/android/NewMasterSDK;->e()Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, ""

    :try_start_0
    iget-object v4, p0, Lcom/mastersdk/android/MainActivity;->p:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v0, v3

    :goto_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "___________________packagename is   "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "___________________appversion is   "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    new-instance v3, Lcom/mastersdk/android/i;

    invoke-direct {v3}, Lcom/mastersdk/android/i;-><init>()V

    new-instance v4, Lcom/mastersdk/android/m;

    invoke-direct {v4, p0}, Lcom/mastersdk/android/m;-><init>(Lcom/mastersdk/android/MainActivity;)V

    invoke-virtual {v3, v4}, Lcom/mastersdk/android/i;->a(Lcom/mastersdk/android/m;)V

    invoke-virtual {v3, v1, v0, v2}, Lcom/mastersdk/android/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic e(Lcom/mastersdk/android/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mastersdk/android/MainActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/mastersdk/android/MainActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/mastersdk/android/MainActivity;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method private f()Z
    .locals 4

    const-string v0, "file"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mastersdk/android/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "zipfile"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_1

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mastersdk/android/MainActivity;->i:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/res"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mastersdk/android/MainActivity;->i:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/src"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method static synthetic g(Lcom/mastersdk/android/MainActivity;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/mastersdk/android/MainActivity;->b:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lcom/mastersdk/android/MainActivity;->c:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mastersdk/android/MainActivity;->c:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mastersdk/android/MainActivity;->p:Landroid/content/Context;

    const-class v2, Lorg/cocos2dx/lua/AppActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/mastersdk/android/MainActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/mastersdk/android/MainActivity;->finish()V

    iget-object v0, p0, Lcom/mastersdk/android/MainActivity;->o:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/mastersdk/android/MainActivity;->overridePendingTransition(II)V

    :cond_1
    return-void
.end method

.method static synthetic h(Lcom/mastersdk/android/MainActivity;)I
    .locals 0

    iget p0, p0, Lcom/mastersdk/android/MainActivity;->h:I

    return p0
.end method

.method private h()V
    .locals 8

    iget-object v0, p0, Lcom/mastersdk/android/MainActivity;->o:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mastersdk/android/MainActivity;->p:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mastersdk/android/MainActivity;->o:Landroid/widget/ImageView;

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MainActivity : isPause = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/mastersdk/android/MainActivity;->r:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/mastersdk/android/MainActivity;->r:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mastersdk/android/MainActivity;->p:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "launchimage"

    const-string v3, "drawable"

    iget-object v4, p0, Lcom/mastersdk/android/MainActivity;->p:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/mastersdk/android/MainActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "----> \u83b7\u53d6\u5230\u7684\u542f\u52a8\u56fe\u8d44\u6e90id  ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/mastersdk/android/MainActivity;->p:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/mastersdk/android/MainActivity;->o:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/mastersdk/android/y;->a(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mastersdk/android/MainActivity;->a([B)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/mastersdk/android/MainActivity;->o:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x5dc

    :goto_0
    iput v0, p0, Lcom/mastersdk/android/MainActivity;->q:I

    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/mastersdk/android/MainActivity;->o:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v3, p0, Lcom/mastersdk/android/MainActivity;->n:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/mastersdk/android/MainActivity;->o:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcom/mastersdk/android/MainActivity;->p:Landroid/content/Context;

    const/4 v4, 0x0

    const v5, 0x101007a

    invoke-direct {v0, v3, v4, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/mastersdk/android/MainActivity;->c:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/mastersdk/android/MainActivity;->c:Landroid/widget/ProgressBar;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xd

    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xa

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v6, 0x32

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v6, p0, Lcom/mastersdk/android/MainActivity;->n:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/mastersdk/android/MainActivity;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v7, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mastersdk/android/MainActivity;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/mastersdk/android/MainActivity;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/mastersdk/android/MainActivity;->c:Landroid/widget/ProgressBar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mastersdk/android/MainActivity;->p:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mastersdk/android/MainActivity;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mastersdk/android/MainActivity;->f:Landroid/widget/TextView;

    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mastersdk/android/MainActivity;->f:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/mastersdk/android/MainActivity;->f:Landroid/widget/TextView;

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0x14

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/mastersdk/android/MainActivity;->n:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/mastersdk/android/MainActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mastersdk/android/MainActivity;->f:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method static synthetic i(Lcom/mastersdk/android/MainActivity;)I
    .locals 0

    iget p0, p0, Lcom/mastersdk/android/MainActivity;->g:I

    return p0
.end method

.method static synthetic j(Lcom/mastersdk/android/MainActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/mastersdk/android/MainActivity;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic k(Lcom/mastersdk/android/MainActivity;)I
    .locals 0

    iget p0, p0, Lcom/mastersdk/android/MainActivity;->m:I

    return p0
.end method

.method static synthetic l(Lcom/mastersdk/android/MainActivity;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/mastersdk/android/MainActivity;->c:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic m(Lcom/mastersdk/android/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/mastersdk/android/MainActivity;->g()V

    return-void
.end method

.method static synthetic n(Lcom/mastersdk/android/MainActivity;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mastersdk/android/MainActivity;->s:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/mastersdk/android/MainActivity;->p:Landroid/content/Context;

    const-string v1, "downloads"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v1, Lcom/mastersdk/android/u;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mastersdk/android/MainActivity;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/mastersdk/android/MainActivity;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/mastersdk/android/MainActivity;->p:Landroid/content/Context;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/mastersdk/android/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    new-instance v0, Lcom/mastersdk/android/b;

    invoke-direct {v0, p0}, Lcom/mastersdk/android/b;-><init>(Lcom/mastersdk/android/MainActivity;)V

    invoke-virtual {v1, v0}, Lcom/mastersdk/android/u;->a(Lcom/mastersdk/android/x;)V

    return-void
.end method

.method public final a(Ljava/io/File;)Z
    .locals 2

    invoke-static {p1}, Lcom/mastersdk/android/y;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/mastersdk/android/MainActivity;->l:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/mastersdk/android/MainActivity;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mastersdk/android/MainActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mastersdk/android/MainActivity;->l:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/mastersdk/android/MainActivity;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final b()V
    .locals 5

    invoke-static {}, Lcom/mastersdk/android/NewMasterSDK;->d()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/mastersdk/android/d;

    invoke-direct {v2, p0, v0}, Lcom/mastersdk/android/d;-><init>(Lcom/mastersdk/android/MainActivity;Ljava/lang/Class;)V

    iget v0, p0, Lcom/mastersdk/android/MainActivity;->q:I

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 11

    const-string v0, ""

    const-string v1, "initDownLoadLayout "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mastersdk/android/MainActivity;->setRequestedOrientation(I)V

    iget-object v1, p0, Lcom/mastersdk/android/MainActivity;->o:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mastersdk/android/MainActivity;->p:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mastersdk/android/MainActivity;->o:Landroid/widget/ImageView;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "/images/bgimage.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/mastersdk/android/MainActivity;->o:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/mastersdk/android/y;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mastersdk/android/MainActivity;->a([B)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/mastersdk/android/MainActivity;->p:Landroid/content/Context;

    const/4 v3, 0x0

    const v4, 0x1010078

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/mastersdk/android/MainActivity;->b:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/mastersdk/android/MainActivity;->b:Landroid/widget/ProgressBar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setId(I)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v3, 0xff

    const/16 v4, 0xa5

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    new-instance v3, Landroid/graphics/drawable/ClipDrawable;

    const/4 v4, 0x3

    invoke-direct {v3, v1, v4, v0}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v6, 0x80

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    const/4 v7, 0x2

    new-array v8, v7, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v8, v5

    aput-object v3, v8, v0

    invoke-direct {v6, v8}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/mastersdk/android/MainActivity;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v6, -0x2

    invoke-direct {v1, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xd

    invoke-virtual {v1, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v9, 0xa

    iput v9, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v9, p0, Lcom/mastersdk/android/MainActivity;->n:Landroid/widget/RelativeLayout;

    iget-object v10, p0, Lcom/mastersdk/android/MainActivity;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v9, v10, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/mastersdk/android/MainActivity;->p:Landroid/content/Context;

    invoke-direct {v1, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mastersdk/android/MainActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mastersdk/android/MainActivity;->d:Landroid/widget/TextView;

    const-string v9, "0%"

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/mastersdk/android/MainActivity;->d:Landroid/widget/TextView;

    const/high16 v9, 0x41500000    # 13.0f

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/mastersdk/android/MainActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setId(I)V

    iget-object v1, p0, Lcom/mastersdk/android/MainActivity;->d:Landroid/widget/TextView;

    const-string v10, "#000000"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/mastersdk/android/MainActivity;->n:Landroid/widget/RelativeLayout;

    iget-object v10, p0, Lcom/mastersdk/android/MainActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v10, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mastersdk/android/MainActivity;->p:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mastersdk/android/MainActivity;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mastersdk/android/MainActivity;->e:Landroid/widget/TextView;

    const-string v3, "\u8d44\u6e90\u4e0b\u8f7d\u4e2d..."

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/mastersdk/android/MainActivity;->e:Landroid/widget/TextView;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/mastersdk/android/MainActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setId(I)V

    iget-object v1, p0, Lcom/mastersdk/android/MainActivity;->e:Landroid/widget/TextView;

    const-string v3, "#000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/mastersdk/android/MainActivity;->n:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/mastersdk/android/MainActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mastersdk/android/MainActivity;->p:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6b22\u8fce\u60a8!\u6b63\u5728\u52a0\u8f7d\u5347\u7ea7\u4e2d\uff0c\u9700\u8981\u70b9\u65f6\u95f4\uff0c\u4eb2^_^"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0x32

    invoke-virtual {v1, v2, v2, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/mastersdk/android/MainActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mastersdk/android/MainActivity;->c:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mastersdk/android/MainActivity;->c:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-class p1, Lcom/mastersdk/android/MainActivity;

    invoke-static {p1}, Lcom/mastersdk/android/NewMasterSDK;->a(Ljava/lang/Class;)V

    invoke-static {}, Lcom/mastersdk/android/NewMasterSDK;->c()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mastersdk/android/MainActivity;->p:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/mastersdk/android/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mastersdk/android/MainActivity;->i:Ljava/lang/String;

    new-instance p1, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/mastersdk/android/MainActivity;->p:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mastersdk/android/MainActivity;->n:Landroid/widget/RelativeLayout;

    iget-object p1, p0, Lcom/mastersdk/android/MainActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Lcom/mastersdk/android/MainActivity;->setContentView(Landroid/view/View;)V

    const-string p1, ""

    const-string v0, "MainActivity : onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/mastersdk/android/y;->c(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/mastersdk/android/y;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    invoke-static {p0, p1}, Lcom/mastersdk/android/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/mastersdk/android/y;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/mastersdk/android/MainActivity;->d()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mastersdk/android/NewMasterSDK;->a(Z)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mastersdk/android/MainActivity;->o:Landroid/widget/ImageView;

    const-string v0, ""

    const-string v1, "MainActivity : onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p2, "\u63d0\u793a"

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string p2, "\u786e\u5b9a\u8981\u9000\u51fa\u5e94\u7528?"

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string p2, "\u786e\u5b9a"

    new-instance v0, Lcom/mastersdk/android/e;

    invoke-direct {v0, p0}, Lcom/mastersdk/android/e;-><init>(Lcom/mastersdk/android/MainActivity;)V

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string p2, "\u53d6\u6d88"

    new-instance v0, Lcom/mastersdk/android/f;

    invoke-direct {v0}, Lcom/mastersdk/android/f;-><init>()V

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/mastersdk/android/MainActivity;->r:Z

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mastersdk/android/NewMasterSDK;->a(Z)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, ""

    const-string v1, "MainActivity : onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nRequestPermissionsResult requestCode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const-string p1, ""

    const-string v1, "nRequestPermissionsResult callback"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p3

    if-lt v2, v3, :cond_1

    const/4 p2, 0x1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    aget v3, p3, v2

    if-eqz v3, :cond_6

    aget-object p1, p2, v2

    invoke-static {p0, p1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, v0, [Ljava/lang/String;

    aget-object p2, p2, v2

    aput-object p2, p1, v1

    invoke-static {p0, p1, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    const-string p1, ""

    const-string p2, "nRequestPermissionsResult showRequestPermission true"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    aget-object p1, p2, v2

    const-string p2, ""

    const-string v2, "nRequestPermissionsResult showRequestPermission false"

    invoke-static {p2, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    :goto_1
    if-eqz v0, :cond_4

    const-string v2, ""

    const-string v3, "nRequestPermissionsResult showPermissionsBuilder"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/app/AlertDialog$Builder;

    const v3, 0x1030132

    invoke-direct {v2, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v3, "\u6743\u9650\u7533\u8bf7"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "\u672c\u8f6f\u4ef6\u4f7f\u7528\u7535\u8bdd\u6743\u9650\u786e\u5b9a\u672c\u673a\u8bbe\u5907ID\uff0c\u4ee5\u4fdd\u8bc1\u8d26\u53f7\u767b\u5f55\u7684\u5b89\u5168\u6027\u3002\n\u8bf7\u5728 \u201c\u5e94\u7528\u4fe1\u606f -> \u6743\u9650\u201d \u4e2d\u5f00\u542f\u7535\u8bdd\u6743\u9650\uff0c\u4ee5\u6b63\u5e38\u4f7f\u7528\u672c\u8f6f\u4ef6\u3002"

    :goto_2
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    :cond_3
    const-string p1, "\u8bf7\u5728 \u201c\u5e94\u7528\u4fe1\u606f -> \u6743\u9650\u201d \u4e2d\u5f00\u542f\u5b58\u50a8\u7a7a\u95f4\u6743\u9650\uff0c\u4ee5\u6b63\u5e38\u4f7f\u7528\u672c\u8f6f\u4ef6\u3002"

    goto :goto_2

    :goto_3
    const-string p1, "\u53bb\u8bbe\u7f6e"

    new-instance v3, Lcom/mastersdk/android/g;

    invoke-direct {v3, p0}, Lcom/mastersdk/android/g;-><init>(Lcom/mastersdk/android/MainActivity;)V

    invoke-virtual {v2, p1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string p1, "\u9000\u51fa"

    new-instance v3, Lcom/mastersdk/android/h;

    invoke-direct {v3, p0}, Lcom/mastersdk/android/h;-><init>(Lcom/mastersdk/android/MainActivity;)V

    invoke-virtual {v2, p1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_4
    if-eqz p2, :cond_5

    if-nez v0, :cond_5

    array-length p1, p3

    if-lez p1, :cond_5

    invoke-direct {p0}, Lcom/mastersdk/android/MainActivity;->e()V

    :cond_5
    return-void

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mastersdk/android/NewMasterSDK;->a(Z)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v0, p0, Lcom/mastersdk/android/MainActivity;->s:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mastersdk/android/MainActivity;->d()V

    :cond_0
    const-string v0, ""

    const-string v1, "MainActivity : onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v0, ""

    const-string v1, "MainActivity : onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
