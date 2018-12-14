.class final enum Lcom/mastersdk/android/t;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/mastersdk/android/t;

.field public static final enum b:Lcom/mastersdk/android/t;

.field public static final enum c:Lcom/mastersdk/android/t;

.field public static final enum d:Lcom/mastersdk/android/t;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/mastersdk/android/t;

    const-string v1, "Downloading"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mastersdk/android/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mastersdk/android/t;->a:Lcom/mastersdk/android/t;

    new-instance v0, Lcom/mastersdk/android/t;

    const-string v1, "Pause"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mastersdk/android/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mastersdk/android/t;->b:Lcom/mastersdk/android/t;

    new-instance v0, Lcom/mastersdk/android/t;

    const-string v1, "Ready"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mastersdk/android/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mastersdk/android/t;->c:Lcom/mastersdk/android/t;

    new-instance v0, Lcom/mastersdk/android/t;

    const-string v1, "Finish"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/mastersdk/android/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mastersdk/android/t;->d:Lcom/mastersdk/android/t;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mastersdk/android/t;

    sget-object v1, Lcom/mastersdk/android/t;->a:Lcom/mastersdk/android/t;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mastersdk/android/t;->b:Lcom/mastersdk/android/t;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mastersdk/android/t;->c:Lcom/mastersdk/android/t;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mastersdk/android/t;->d:Lcom/mastersdk/android/t;

    aput-object v1, v0, v5

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
