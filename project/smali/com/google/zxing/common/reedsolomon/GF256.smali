.class public final Lcom/google/zxing/common/reedsolomon/GF256;
.super Ljava/lang/Object;
.source "GF256.java"


# static fields
.field public static final DATA_MATRIX_FIELD:Lcom/google/zxing/common/reedsolomon/GF256;

.field public static final QR_CODE_FIELD:Lcom/google/zxing/common/reedsolomon/GF256;


# instance fields
.field private final expTable:[I

.field private final logTable:[I

.field private final one:Lcom/google/zxing/common/reedsolomon/GF256Poly;

.field private final zero:Lcom/google/zxing/common/reedsolomon/GF256Poly;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/google/zxing/common/reedsolomon/GF256;

    const/16 v1, 0x11d

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/GF256;-><init>(I)V

    sput-object v0, Lcom/google/zxing/common/reedsolomon/GF256;->QR_CODE_FIELD:Lcom/google/zxing/common/reedsolomon/GF256;

    .line 32
    new-instance v0, Lcom/google/zxing/common/reedsolomon/GF256;

    const/16 v1, 0x12d

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/GF256;-><init>(I)V

    sput-object v0, Lcom/google/zxing/common/reedsolomon/GF256;->DATA_MATRIX_FIELD:Lcom/google/zxing/common/reedsolomon/GF256;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 6

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 47
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/zxing/common/reedsolomon/GF256;->expTable:[I

    .line 48
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/zxing/common/reedsolomon/GF256;->logTable:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    if-ge v3, v0, :cond_1

    .line 51
    iget-object v5, p0, Lcom/google/zxing/common/reedsolomon/GF256;->expTable:[I

    aput v4, v5, v3

    shl-int/2addr v4, v2

    if-lt v4, v0, :cond_0

    xor-int/2addr v4, p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    const/16 v0, 0xff

    if-ge p1, v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GF256;->logTable:[I

    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GF256;->expTable:[I

    aget v3, v3, p1

    aput p1, v0, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 61
    :cond_2
    new-instance p1, Lcom/google/zxing/common/reedsolomon/GF256Poly;

    new-array v0, v2, [I

    aput v1, v0, v1

    invoke-direct {p1, p0, v0}, Lcom/google/zxing/common/reedsolomon/GF256Poly;-><init>(Lcom/google/zxing/common/reedsolomon/GF256;[I)V

    iput-object p1, p0, Lcom/google/zxing/common/reedsolomon/GF256;->zero:Lcom/google/zxing/common/reedsolomon/GF256Poly;

    .line 62
    new-instance p1, Lcom/google/zxing/common/reedsolomon/GF256Poly;

    new-array v0, v2, [I

    aput v2, v0, v1

    invoke-direct {p1, p0, v0}, Lcom/google/zxing/common/reedsolomon/GF256Poly;-><init>(Lcom/google/zxing/common/reedsolomon/GF256;[I)V

    iput-object p1, p0, Lcom/google/zxing/common/reedsolomon/GF256;->one:Lcom/google/zxing/common/reedsolomon/GF256Poly;

    return-void
.end method

.method static addOrSubtract(II)I
    .locals 0

    xor-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method buildMonomial(II)Lcom/google/zxing/common/reedsolomon/GF256Poly;
    .locals 1

    if-gez p1, :cond_0

    .line 78
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_0
    if-nez p2, :cond_1

    .line 81
    iget-object p1, p0, Lcom/google/zxing/common/reedsolomon/GF256;->zero:Lcom/google/zxing/common/reedsolomon/GF256Poly;

    return-object p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 83
    new-array p1, p1, [I

    const/4 v0, 0x0

    .line 84
    aput p2, p1, v0

    .line 85
    new-instance p2, Lcom/google/zxing/common/reedsolomon/GF256Poly;

    invoke-direct {p2, p0, p1}, Lcom/google/zxing/common/reedsolomon/GF256Poly;-><init>(Lcom/google/zxing/common/reedsolomon/GF256;[I)V

    return-object p2
.end method

.method exp(I)I
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GF256;->expTable:[I

    aget p1, v0, p1

    return p1
.end method

.method getOne()Lcom/google/zxing/common/reedsolomon/GF256Poly;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GF256;->one:Lcom/google/zxing/common/reedsolomon/GF256Poly;

    return-object v0
.end method

.method getZero()Lcom/google/zxing/common/reedsolomon/GF256Poly;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GF256;->zero:Lcom/google/zxing/common/reedsolomon/GF256Poly;

    return-object v0
.end method

.method inverse(I)I
    .locals 2

    if-nez p1, :cond_0

    .line 119
    new-instance p1, Ljava/lang/ArithmeticException;

    invoke-direct {p1}, Ljava/lang/ArithmeticException;-><init>()V

    throw p1

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GF256;->expTable:[I

    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/GF256;->logTable:[I

    aget p1, v1, p1

    rsub-int p1, p1, 0xff

    aget p1, v0, p1

    return p1
.end method

.method log(I)I
    .locals 1

    if-nez p1, :cond_0

    .line 109
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GF256;->logTable:[I

    aget p1, v0, p1

    return p1
.end method

.method multiply(II)I
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GF256;->logTable:[I

    aget p1, v0, p1

    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GF256;->logTable:[I

    aget p2, v0, p2

    add-int/2addr p1, p2

    .line 136
    iget-object p2, p0, Lcom/google/zxing/common/reedsolomon/GF256;->expTable:[I

    and-int/lit16 v0, p1, 0xff

    ushr-int/lit8 p1, p1, 0x8

    add-int/2addr v0, p1

    aget p1, p2, v0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
