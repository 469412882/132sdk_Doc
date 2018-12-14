.class public final Lcom/google/zxing/qrcode/decoder/Mode;
.super Ljava/lang/Object;
.source "Mode.java"


# static fields
.field public static final ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final ECI:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final FNC1_SECOND_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final STRUCTURED_APPEND:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;


# instance fields
.field private final bits:I

.field private final characterCountBitsForVersions:[I

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 29
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const-string v3, "TERMINATOR"

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v3}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 30
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const-string v3, "NUMERIC"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v3}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 31
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    const-string v3, "ALPHANUMERIC"

    const/4 v4, 0x2

    invoke-direct {v0, v2, v4, v3}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 32
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const-string v3, "STRUCTURED_APPEND"

    invoke-direct {v0, v2, v1, v3}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->STRUCTURED_APPEND:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 33
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const-string v3, "BYTE"

    const/4 v4, 0x4

    invoke-direct {v0, v2, v4, v3}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 34
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    const-string v2, "ECI"

    const/4 v3, 0x0

    const/4 v4, 0x7

    invoke-direct {v0, v3, v4, v2}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 35
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    new-array v1, v1, [I

    fill-array-data v1, :array_5

    const-string v2, "KANJI"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v4, v2}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 36
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    const-string v1, "FNC1_FIRST_POSITION"

    const/4 v2, 0x5

    invoke-direct {v0, v3, v2, v1}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 37
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    const-string v1, "FNC1_SECOND_POSITION"

    const/16 v2, 0x9

    invoke-direct {v0, v3, v2, v1}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_SECOND_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xa
        0xc
        0xe
    .end array-data

    :array_2
    .array-data 4
        0x9
        0xb
        0xd
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x8
        0x10
        0x10
    .end array-data

    :array_5
    .array-data 4
        0x8
        0xa
        0xc
    .end array-data
.end method

.method private constructor <init>([IILjava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/zxing/qrcode/decoder/Mode;->characterCountBitsForVersions:[I

    .line 45
    iput p2, p0, Lcom/google/zxing/qrcode/decoder/Mode;->bits:I

    .line 46
    iput-object p3, p0, Lcom/google/zxing/qrcode/decoder/Mode;->name:Ljava/lang/String;

    return-void
.end method

.method public static forBits(I)Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 75
    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 73
    :pswitch_1
    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_SECOND_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object p0

    .line 71
    :pswitch_2
    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object p0

    .line 69
    :pswitch_3
    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object p0

    .line 67
    :pswitch_4
    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object p0

    .line 65
    :pswitch_5
    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object p0

    .line 63
    :pswitch_6
    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->STRUCTURED_APPEND:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object p0

    .line 61
    :pswitch_7
    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object p0

    .line 59
    :pswitch_8
    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object p0

    .line 57
    :pswitch_9
    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getBits()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Mode;->bits:I

    return v0
.end method

.method public getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/Mode;->characterCountBitsForVersions:[I

    if-nez v0, :cond_0

    .line 86
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Character count doesn\'t apply to this mode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result p1

    const/16 v0, 0x9

    if-gt p1, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x1a

    if-gt p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    .line 97
    :goto_0
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/Mode;->characterCountBitsForVersions:[I

    aget p1, v0, p1

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/Mode;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/Mode;->name:Ljava/lang/String;

    return-object v0
.end method
