.class public final Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
.super Ljava/lang/Object;
.source "ErrorCorrectionLevel.java"


# static fields
.field private static final FOR_BITS:[Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

.field public static final H:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

.field public static final L:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

.field public static final M:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

.field public static final Q:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;


# instance fields
.field private final bits:I

.field private final name:Ljava/lang/String;

.field private final ordinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 32
    new-instance v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    const-string v1, "L"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->L:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 36
    new-instance v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    const-string v1, "M"

    invoke-direct {v0, v2, v3, v1}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->M:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 40
    new-instance v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    const-string v1, "Q"

    const/4 v4, 0x3

    const/4 v5, 0x2

    invoke-direct {v0, v5, v4, v1}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->Q:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 44
    new-instance v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    const-string v1, "H"

    invoke-direct {v0, v4, v5, v1}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->H:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    const/4 v0, 0x4

    .line 46
    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    sget-object v1, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->M:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->L:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->H:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->Q:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->FOR_BITS:[Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->ordinal:I

    .line 54
    iput p2, p0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->bits:I

    .line 55
    iput-object p3, p0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->name:Ljava/lang/String;

    return-void
.end method

.method public static forBits(I)Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .locals 1

    if-ltz p0, :cond_1

    .line 79
    sget-object v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->FOR_BITS:[Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    array-length v0, v0

    if-lt p0, v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    sget-object v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->FOR_BITS:[Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    aget-object p0, v0, p0

    return-object p0

    .line 80
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public getBits()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->bits:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public ordinal()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->ordinal:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->name:Ljava/lang/String;

    return-object v0
.end method
