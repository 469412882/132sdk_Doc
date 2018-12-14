.class public final Lcom/google/zxing/oned/Code128Writer;
.super Lcom/google/zxing/oned/UPCEANWriter;
.source "Code128Writer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Hashtable;)Lcom/google/zxing/common/BitMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 36
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v0, :cond_0

    .line 37
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "Can only encode CODE_128, but got "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/UPCEANWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Hashtable;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    return-object p1
.end method

.method public encode(Ljava/lang/String;)[B
    .locals 8

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x50

    if-le v0, v1, :cond_0

    .line 45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Requested contents should be less than 80 digits long, but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/16 v1, 0x23

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v3, 0x23

    :goto_0
    if-ge v1, v0, :cond_2

    .line 52
    sget-object v4, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x20

    aget-object v4, v4, v5

    move v5, v3

    const/4 v3, 0x0

    .line 53
    :goto_1
    array-length v6, v4

    if-ge v3, v6, :cond_1

    .line 54
    aget v6, v4, v3

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v3, v5

    goto :goto_0

    .line 57
    :cond_2
    new-array v1, v3, [B

    .line 58
    sget-object v3, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    const/16 v4, 0x68

    aget-object v3, v3, v4

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v5}, Lcom/google/zxing/oned/Code128Writer;->appendPattern([BI[II)I

    move-result v3

    :goto_2
    if-ge v2, v0, :cond_3

    .line 62
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x20

    add-int/lit8 v7, v2, 0x1

    mul-int v6, v6, v7

    add-int/2addr v4, v6

    .line 63
    sget-object v6, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x20

    aget-object v2, v6, v2

    invoke-static {v1, v3, v2, v5}, Lcom/google/zxing/oned/Code128Writer;->appendPattern([BI[II)I

    move-result v2

    add-int/2addr v3, v2

    move v2, v7

    goto :goto_2

    .line 66
    :cond_3
    rem-int/lit8 v4, v4, 0x67

    .line 67
    sget-object p1, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object p1, p1, v4

    invoke-static {v1, v3, p1, v5}, Lcom/google/zxing/oned/Code128Writer;->appendPattern([BI[II)I

    move-result p1

    add-int/2addr v3, p1

    .line 68
    sget-object p1, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    const/16 v0, 0x6a

    aget-object p1, p1, v0

    invoke-static {v1, v3, p1, v5}, Lcom/google/zxing/oned/Code128Writer;->appendPattern([BI[II)I

    return-object v1
.end method
