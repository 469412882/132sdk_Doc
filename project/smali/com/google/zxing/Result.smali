.class public final Lcom/google/zxing/Result;
.super Ljava/lang/Object;
.source "Result.java"


# instance fields
.field private final format:Lcom/google/zxing/BarcodeFormat;

.field private final rawBytes:[B

.field private resultMetadata:Ljava/util/Hashtable;

.field private resultPoints:[Lcom/google/zxing/ResultPoint;

.field private final text:Ljava/lang/String;

.field private final timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V
    .locals 7

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;J)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Text and bytes are null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_0
    iput-object p1, p0, Lcom/google/zxing/Result;->text:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/google/zxing/Result;->rawBytes:[B

    .line 53
    iput-object p3, p0, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    .line 54
    iput-object p4, p0, Lcom/google/zxing/Result;->format:Lcom/google/zxing/BarcodeFormat;

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Hashtable;

    .line 56
    iput-wide p5, p0, Lcom/google/zxing/Result;->timestamp:J

    return-void
.end method


# virtual methods
.method public addResultPoints([Lcom/google/zxing/ResultPoint;)V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    if-nez v0, :cond_0

    .line 122
    iput-object p1, p0, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 123
    array-length v0, p1

    if-lez v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    array-length v0, v0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    .line 125
    iget-object v1, p0, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    iget-object v2, p0, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    iget-object v1, p0, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    array-length v1, v1

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iput-object v0, p0, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    :cond_1
    :goto_0
    return-void
.end method

.method public getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/google/zxing/Result;->format:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method

.method public getRawBytes()[B
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/google/zxing/Result;->rawBytes:[B

    return-object v0
.end method

.method public getResultMetadata()Ljava/util/Hashtable;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getResultPoints()[Lcom/google/zxing/ResultPoint;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 132
    iget-wide v0, p0, Lcom/google/zxing/Result;->timestamp:J

    return-wide v0
.end method

.method public putAllMetadata(Ljava/util/Hashtable;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 107
    iget-object v0, p0, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 108
    iput-object p1, p0, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Hashtable;

    goto :goto_1

    .line 110
    :cond_0
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 111
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/ResultMetadataType;

    .line 113
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 114
    iget-object v3, p0, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Hashtable;

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Hashtable;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/google/zxing/Result;->rawBytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " bytes]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/String;

    return-object v0
.end method
