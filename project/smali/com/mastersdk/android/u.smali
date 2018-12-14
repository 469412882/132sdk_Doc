.class public final Lcom/mastersdk/android/u;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/mastersdk/android/q;

.field private b:Lcom/mastersdk/android/x;

.field private c:I

.field private d:I

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mastersdk/android/u;->d:I

    new-instance v1, Lcom/mastersdk/android/v;

    invoke-direct {v1, p0}, Lcom/mastersdk/android/v;-><init>(Lcom/mastersdk/android/u;)V

    iput-object v1, p0, Lcom/mastersdk/android/u;->e:Landroid/os/Handler;

    new-instance v1, Lcom/mastersdk/android/q;

    iget-object v7, p0, Lcom/mastersdk/android/u;->e:Landroid/os/Handler;

    move-object v2, v1

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/mastersdk/android/q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/mastersdk/android/u;->a:Lcom/mastersdk/android/q;

    new-instance p1, Lcom/mastersdk/android/w;

    invoke-direct {p1, p0}, Lcom/mastersdk/android/w;-><init>(Lcom/mastersdk/android/u;)V

    new-array p2, v0, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Lcom/mastersdk/android/w;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic a(Lcom/mastersdk/android/u;)Lcom/mastersdk/android/x;
    .locals 0

    iget-object p0, p0, Lcom/mastersdk/android/u;->b:Lcom/mastersdk/android/x;

    return-object p0
.end method

.method static synthetic a(Lcom/mastersdk/android/u;I)V
    .locals 0

    iput p1, p0, Lcom/mastersdk/android/u;->d:I

    return-void
.end method

.method static synthetic b(Lcom/mastersdk/android/u;)Lcom/mastersdk/android/q;
    .locals 0

    iget-object p0, p0, Lcom/mastersdk/android/u;->a:Lcom/mastersdk/android/q;

    return-object p0
.end method

.method static synthetic b(Lcom/mastersdk/android/u;I)V
    .locals 0

    iput p1, p0, Lcom/mastersdk/android/u;->c:I

    return-void
.end method

.method static synthetic c(Lcom/mastersdk/android/u;)I
    .locals 0

    iget p0, p0, Lcom/mastersdk/android/u;->d:I

    return p0
.end method

.method static synthetic d(Lcom/mastersdk/android/u;)I
    .locals 0

    iget p0, p0, Lcom/mastersdk/android/u;->c:I

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/mastersdk/android/u;->a:Lcom/mastersdk/android/q;

    invoke-virtual {v0}, Lcom/mastersdk/android/q;->c()V

    return-void
.end method

.method public final a(Lcom/mastersdk/android/x;)V
    .locals 0

    iput-object p1, p0, Lcom/mastersdk/android/u;->b:Lcom/mastersdk/android/x;

    return-void
.end method
