.class final Lcom/google/zxing/oned/UPCEANExtensionSupport;
.super Ljava/lang/Object;
.source "UPCEANExtensionSupport.java"


# static fields
.field private static final CHECK_DIGIT_ENCODINGS:[I

.field private static final EXTENSION_START_PATTERN:[I


# instance fields
.field private final decodeMiddleCounters:[I

.field private final decodeRowStringBuffer:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 30
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->EXTENSION_START_PATTERN:[I

    const/16 v0, 0xa

    .line 31
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->CHECK_DIGIT_ENCODINGS:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x18
        0x14
        0x12
        0x11
        0xc
        0x6
        0x3
        0xa
        0x9
        0x5
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 35
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->decodeMiddleCounters:[I

    .line 36
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->decodeRowStringBuffer:Ljava/lang/StringBuffer;

    return-void
.end method

.method private static determineCheckDigit(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 123
    sget-object v1, Lcom/google/zxing/oned/UPCEANExtensionSupport;->CHECK_DIGIT_ENCODINGS:[I

    aget v1, v1, v0

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private static extensionChecksum(Ljava/lang/String;)I
    .locals 4

    .line 107
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x2

    const/4 v2, 0x0

    :goto_0
    if-ltz v1, :cond_0

    .line 110
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    :cond_0
    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 114
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v2, v1

    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    :cond_1
    mul-int/lit8 v2, v2, 0x3

    .line 117
    rem-int/lit8 v2, v2, 0xa

    return v2
.end method

.method private static parseExtension2String(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 159
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static parseExtension5String(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 164
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_4

    const/16 v1, 0x35

    if-eq v0, v1, :cond_3

    const/16 v1, 0x39

    if-eq v0, v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "99991"

    .line 172
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "0.00"

    return-object p0

    :cond_1
    const-string v0, "99990"

    .line 174
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Used"

    return-object p0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string v0, "$"

    goto :goto_0

    :cond_4
    const-string v0, "\u62e2"

    :goto_0
    const/4 v1, 0x1

    .line 182
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 183
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    div-int/lit8 v0, p0, 0x64

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v0, 0x2e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    rem-int/lit8 p0, p0, 0x64

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static parseExtensionString(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 3

    .line 138
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    return-object v2

    .line 144
    :cond_0
    sget-object v0, Lcom/google/zxing/ResultMetadataType;->SUGGESTED_PRICE:Lcom/google/zxing/ResultMetadataType;

    .line 145
    invoke-static {p0}, Lcom/google/zxing/oned/UPCEANExtensionSupport;->parseExtension5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 140
    :cond_1
    sget-object v0, Lcom/google/zxing/ResultMetadataType;->ISSUE_NUMBER:Lcom/google/zxing/ResultMetadataType;

    .line 141
    invoke-static {p0}, Lcom/google/zxing/oned/UPCEANExtensionSupport;->parseExtension2String(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_2

    return-object v2

    .line 153
    :cond_2
    new-instance v1, Ljava/util/Hashtable;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    .line 154
    invoke-virtual {v1, v0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method


# virtual methods
.method decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuffer;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->decodeMiddleCounters:[I

    const/4 v1, 0x0

    .line 65
    aput v1, v0, v1

    const/4 v2, 0x1

    .line 66
    aput v1, v0, v2

    const/4 v3, 0x2

    .line 67
    aput v1, v0, v3

    const/4 v3, 0x3

    .line 68
    aput v1, v0, v3

    .line 69
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    .line 70
    aget p2, p2, v2

    move v4, p2

    const/4 p2, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x5

    if-ge p2, v6, :cond_4

    if-ge v4, v3, :cond_4

    .line 75
    sget-object v6, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    invoke-static {p1, v0, v4, v6}, Lcom/google/zxing/oned/UPCEANReader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v6

    .line 76
    rem-int/lit8 v7, v6, 0xa

    add-int/lit8 v7, v7, 0x30

    int-to-char v7, v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v7, v4

    const/4 v4, 0x0

    .line 77
    :goto_1
    array-length v8, v0

    if-ge v4, v8, :cond_0

    .line 78
    aget v8, v0, v4

    add-int/2addr v7, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x4

    const/16 v8, 0xa

    if-lt v6, v8, :cond_1

    rsub-int/lit8 v6, p2, 0x4

    shl-int v6, v2, v6

    or-int/2addr v5, v6

    :cond_1
    if-eq p2, v4, :cond_3

    :goto_2
    if-ge v7, v3, :cond_2

    .line 85
    invoke-virtual {p1, v7}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-ge v7, v3, :cond_3

    .line 88
    invoke-virtual {p1, v7}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    move v4, v7

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 94
    :cond_4
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-eq p1, v6, :cond_5

    .line 95
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 98
    :cond_5
    invoke-static {v5}, Lcom/google/zxing/oned/UPCEANExtensionSupport;->determineCheckDigit(I)I

    move-result p1

    .line 99
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/zxing/oned/UPCEANExtensionSupport;->extensionChecksum(Ljava/lang/String;)I

    move-result p2

    if-eq p2, p1, :cond_6

    .line 100
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    :cond_6
    return v4
.end method

.method decodeRow(ILcom/google/zxing/common/BitArray;I)Lcom/google/zxing/Result;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 40
    sget-object v0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->EXTENSION_START_PATTERN:[I

    const/4 v1, 0x0

    invoke-static {p2, p3, v1, v0}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object p3

    .line 42
    iget-object v0, p0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->decodeRowStringBuffer:Ljava/lang/StringBuffer;

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 44
    invoke-virtual {p0, p2, p3, v0}, Lcom/google/zxing/oned/UPCEANExtensionSupport;->decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuffer;)I

    move-result p2

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/google/zxing/oned/UPCEANExtensionSupport;->parseExtensionString(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v2

    .line 49
    new-instance v3, Lcom/google/zxing/Result;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/zxing/ResultPoint;

    new-instance v5, Lcom/google/zxing/ResultPoint;

    aget v6, p3, v1

    const/4 v7, 0x1

    aget p3, p3, v7

    add-int/2addr v6, p3

    int-to-float p3, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr p3, v6

    int-to-float p1, p1

    invoke-direct {v5, p3, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v5, v4, v1

    new-instance p3, Lcom/google/zxing/ResultPoint;

    int-to-float p2, p2

    invoke-direct {p3, p2, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p3, v4, v7

    sget-object p1, Lcom/google/zxing/BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/google/zxing/BarcodeFormat;

    const/4 p2, 0x0

    invoke-direct {v3, v0, p2, v4, p1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    if-eqz v2, :cond_0

    .line 58
    invoke-virtual {v3, v2}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Hashtable;)V

    :cond_0
    return-object v3
.end method
